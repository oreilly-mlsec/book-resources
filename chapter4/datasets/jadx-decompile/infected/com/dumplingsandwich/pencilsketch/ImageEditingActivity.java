package com.dumplingsandwich.pencilsketch;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Color;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.Toast;
import cn.dump.pencil.R;
import com.dumplingsandwich.pencilsketch.utils.BitmapUtils;
import com.dumplingsandwich.pencilsketch.utils.UIUtils;
import java.lang.reflect.Array;

public class ImageEditingActivity extends Activity {
    public static Bitmap current;
    public static Bitmap original;
    private ImageView bitmapView;
    private ImageButton btn_color;
    private ImageButton btn_gray;
    private ImageButton btn_save;
    private ImageButton btn_share;
    private ColorSketchTask color_task;
    private GrayscaleSketchTask grayscale_task;
    private OnClickListener listener;
    private ProgressDialog progress_dialog;

    private class ColorSketchTask extends AsyncTask<Bitmap, Integer, Bitmap> {
        private ColorSketchTask() {
        }

        protected Bitmap doInBackground(Bitmap... arg0) {
            int i;
            int height = ImageEditingActivity.original.getHeight();
            int width = ImageEditingActivity.original.getWidth();
            int[][] pixels_2D = BitmapUtils.getPixels_2D(ImageEditingActivity.original);
            float[] hsv = new float[3];
            float[][] H_pixels = (float[][]) Array.newInstance(Float.TYPE, new int[]{height, width});
            float[][] S_pixels = (float[][]) Array.newInstance(Float.TYPE, new int[]{height, width});
            float[][] V_pixels = (float[][]) Array.newInstance(Float.TYPE, new int[]{height, width});
            for (i = 0; i < height; i++) {
                int j;
                for (j = 0; j < width; j++) {
                    Color.colorToHSV(pixels_2D[i][j], hsv);
                    H_pixels[i][j] = hsv[0];
                    S_pixels[i][j] = hsv[1];
                    V_pixels[i][j] = hsv[2] * 255.0f;
                }
            }
            for (i = 1; i < height - 1; i++) {
                for (j = 1; j < width - 1; j++) {
                    float delta_x = Math.abs(((((V_pixels[i + 1][j - 1] + (2.0f * V_pixels[i + 1][j])) + V_pixels[i + 1][j + 1]) - V_pixels[i - 1][j - 1]) - (2.0f * V_pixels[i - 1][j])) - V_pixels[i - 1][j + 1]);
                    float delta_y = Math.abs(((((V_pixels[i - 1][j + 1] + (2.0f * V_pixels[i][j + 1])) + V_pixels[i + 1][j + 1]) - V_pixels[i - 1][j - 1]) - (2.0f * V_pixels[i][j - 1])) - V_pixels[i + 1][j - 1]);
                    float v = (float) Math.sqrt((double) ((delta_x * delta_x) + (delta_y * delta_y)));
                    if (v > 255.0f) {
                        v = 255.0f;
                    }
                    v = 255.0f - v;
                    hsv[0] = H_pixels[i][j];
                    hsv[1] = S_pixels[i][j];
                    hsv[2] = v / 255.0f;
                    pixels_2D[i][j] = Color.HSVToColor(hsv);
                }
                publishProgress(new Integer[]{Integer.valueOf(i)});
            }
            return Bitmap.createBitmap(BitmapUtils.getPixels_1D(pixels_2D, height, width), width, height, Config.ARGB_8888);
        }

        protected void onProgressUpdate(Integer... progress) {
            ImageEditingActivity.this.progress_dialog.setProgress(progress[0].intValue());
            ImageEditingActivity.this.progress_dialog.setMax(ImageEditingActivity.original.getHeight());
        }

        protected void onPostExecute(Bitmap result) {
            ImageEditingActivity.this.progress_dialog.dismiss();
            ImageEditingActivity.current = result;
            ImageEditingActivity.this.bitmapView.setImageBitmap(ImageEditingActivity.current);
        }
    }

    private class GrayscaleSketchTask extends AsyncTask<Bitmap, Integer, Bitmap> {
        private GrayscaleSketchTask() {
        }

        protected Bitmap doInBackground(Bitmap... arg0) {
            int i;
            int j;
            int height = ImageEditingActivity.original.getHeight();
            int width = ImageEditingActivity.original.getWidth();
            int[][] pixels_2D = BitmapUtils.getPixels_2D(ImageEditingActivity.original);
            int[][] grayscale_2D = (int[][]) Array.newInstance(Integer.TYPE, new int[]{height, width});
            for (i = 0; i < height; i++) {
                for (j = 0; j < width; j++) {
                    grayscale_2D[i][j] = (int) (((((double) Color.red(pixels_2D[i][j])) * 0.299d) + (((double) Color.green(pixels_2D[i][j])) * 0.587d)) + (((double) Color.blue(pixels_2D[i][j])) * 0.114d));
                }
            }
            for (i = 1; i < height - 1; i++) {
                for (j = 1; j < width - 1; j++) {
                    int delta_x = Math.abs(((((grayscale_2D[i + 1][j - 1] + (grayscale_2D[i + 1][j] * 2)) + grayscale_2D[i + 1][j + 1]) - grayscale_2D[i - 1][j - 1]) - (grayscale_2D[i - 1][j] * 2)) - grayscale_2D[i - 1][j + 1]);
                    int delta_y = Math.abs(((((grayscale_2D[i - 1][j + 1] + (grayscale_2D[i][j + 1] * 2)) + grayscale_2D[i + 1][j + 1]) - grayscale_2D[i - 1][j - 1]) - (grayscale_2D[i][j - 1] * 2)) - grayscale_2D[i + 1][j - 1]);
                    int value = (int) Math.sqrt((double) ((delta_x * delta_x) + (delta_y * delta_y)));
                    if (value > 255) {
                        value = 255;
                    }
                    value = 255 - value;
                    pixels_2D[i][j] = Color.rgb(value, value, value);
                }
                publishProgress(new Integer[]{Integer.valueOf(i)});
            }
            return Bitmap.createBitmap(BitmapUtils.getPixels_1D(pixels_2D, height, width), width, height, Config.ARGB_8888);
        }

        protected void onProgressUpdate(Integer... progress) {
            ImageEditingActivity.this.progress_dialog.setProgress(progress[0].intValue());
            ImageEditingActivity.this.progress_dialog.setMax(ImageEditingActivity.original.getHeight());
        }

        protected void onPostExecute(Bitmap result) {
            ImageEditingActivity.this.progress_dialog.dismiss();
            ImageEditingActivity.current = result;
            ImageEditingActivity.this.bitmapView.setImageBitmap(ImageEditingActivity.current);
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.image_editing);
        this.progress_dialog = UIUtils.getLoadingIndicator(this, "Black-White Sketching...", false);
        this.progress_dialog.setProgress(0);
        this.progress_dialog.show();
        original = MainActivity.original_picked;
        int width = getWindowManager().getDefaultDisplay().getWidth();
        int height = getWindowManager().getDefaultDisplay().getHeight();
        if (original.getWidth() > original.getHeight()) {
            if (((double) original.getHeight()) > ((double) height) * 0.6d) {
                original = Bitmap.createScaledBitmap(original, (int) (((((double) height) * 0.6d) * ((double) original.getWidth())) / ((double) original.getHeight())), (int) (((double) height) * 0.6d), true);
            }
        } else if (((double) original.getWidth()) > ((double) width) * 0.85d) {
            original = Bitmap.createScaledBitmap(original, (int) (((double) width) * 0.85d), (int) (((((double) width) * 0.85d) * ((double) original.getHeight())) / ((double) original.getWidth())), true);
        }
        this.bitmapView = (ImageView) findViewById(R.id.bitmapView);
        this.grayscale_task = new GrayscaleSketchTask();
        this.grayscale_task.execute(new Bitmap[]{original});
        initializeListener();
        this.btn_gray = (ImageButton) findViewById(R.id.buttonGray);
        this.btn_gray.setOnClickListener(this.listener);
        this.btn_color = (ImageButton) findViewById(R.id.buttonColor);
        this.btn_color.setOnClickListener(this.listener);
        this.btn_save = (ImageButton) findViewById(R.id.buttonSave);
        this.btn_save.setOnClickListener(this.listener);
        this.btn_share = (ImageButton) findViewById(R.id.buttonShare);
        this.btn_share.setOnClickListener(this.listener);
    }

    private void initializeListener() {
        this.listener = new OnClickListener() {
            public void onClick(View v) {
                switch (v.getId()) {
                    case R.id.buttonGray:
                        ImageEditingActivity.this.grayscale_task = new GrayscaleSketchTask();
                        ImageEditingActivity.this.grayscale_task.execute(new Bitmap[]{ImageEditingActivity.original});
                        ImageEditingActivity.this.progress_dialog.setMessage("Black-White Sketching...");
                        if (!ImageEditingActivity.this.progress_dialog.isShowing()) {
                            ImageEditingActivity.this.progress_dialog.show();
                        }
                        ImageEditingActivity.this.progress_dialog.setProgress(0);
                        return;
                    case R.id.buttonColor:
                        ImageEditingActivity.this.color_task = new ColorSketchTask();
                        ImageEditingActivity.this.color_task.execute(new Bitmap[]{ImageEditingActivity.original});
                        ImageEditingActivity.this.progress_dialog.setMessage("Color Sketching...");
                        if (!ImageEditingActivity.this.progress_dialog.isShowing()) {
                            ImageEditingActivity.this.progress_dialog.show();
                        }
                        ImageEditingActivity.this.progress_dialog.setProgress(0);
                        return;
                    case R.id.buttonSave:
                        if (BitmapUtils.saveImageOnPhone(ImageEditingActivity.current)) {
                            ImageEditingActivity.this.sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse("file://" + Environment.getExternalStorageDirectory())));
                            Toast.makeText(ImageEditingActivity.this.getBaseContext(), "Image Saved in \"Pencil_Sketch\" Folder!", 0).show();
                            return;
                        }
                        return;
                    case R.id.buttonShare:
                        BitmapUtils.shareImage(ImageEditingActivity.this, ImageEditingActivity.current);
                        return;
                    default:
                        return;
                }
            }
        };
    }
}
