package com.m.u;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.AsyncTask;
import android.os.Handler;
import android.text.TextUtils;
import com.m.ac.ab;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.UUID;
import u.aly.bs;

public class o {
    public static final String aa = ae.aa(ac.bc);
    public static final String ab = ae.aa(ac.bd);
    private static final String ac = ae.aa(ac.dy);
    private static int ah = 0;
    private Context ad;
    private Handler ae;
    private DexClassLoader af = this.ag.ab();
    private al ag = al.aa();

    public class aa extends AsyncTask<Object, Void, DexClassLoader> {
        final /* synthetic */ o aa;
        private ao ab;
        private String ac;

        public aa(o oVar) {
            this.aa = oVar;
        }

        protected DexClassLoader aa(Object... objArr) {
            this.ac = (String) objArr[0];
            this.ab = (ao) objArr[1];
            ag.ab(o.ac, new StringBuilder(String.valueOf(4)).append("   ").append(this.ac).toString());
            String aa = o.ab(this.aa.ad);
            File aa2 = ab.aa(this.aa.ad, com.m.ac.aa.ay);
            if (!TextUtils.isEmpty(aa)) {
                this.aa.ag.aa(aa);
                try {
                    this.aa.af = new DexClassLoader(aa, aa2.getAbsolutePath(), null, ClassLoader.getSystemClassLoader());
                } catch (Throwable th) {
                    ag.aa(th);
                    aa2 = new File(aa);
                    if (aa2.exists() && aa2.isFile()) {
                        ag.ad(o.ac, new StringBuilder(String.valueOf(5)).append("   ").append(aa2.getAbsolutePath()).toString());
                        aa2.delete();
                    }
                }
            }
            return this.aa.af;
        }

        protected void aa(DexClassLoader dexClassLoader) {
            super.onPostExecute(dexClassLoader);
            this.aa.ag.aa(false);
            if (dexClassLoader != null) {
                this.aa.ag.aa(dexClassLoader);
                try {
                    Class loadClass = dexClassLoader.loadClass(this.ac);
                    if (loadClass != null) {
                        ag.ab(o.ac, new StringBuilder(String.valueOf(6)).append("    ").append(this.ac).toString());
                        this.ab.aa(true, loadClass);
                        return;
                    }
                    ag.ab(o.ac, new StringBuilder(String.valueOf(7)).append("    ").append(this.ac).toString());
                    this.ab.aa(false, null);
                    return;
                } catch (ClassNotFoundException e) {
                    ag.ab(o.ac, new StringBuilder(String.valueOf(8)).append("    ").append(this.ac).toString());
                    this.ab.aa(false, null);
                    return;
                }
            }
            ag.ad(o.ac, new StringBuilder(String.valueOf(9)).append("    ").toString());
            this.ab.aa(false, null);
        }

        protected /* synthetic */ Object doInBackground(Object... objArr) {
            return aa(objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            aa((DexClassLoader) obj);
        }
    }

    public o(Context context) {
        this.ad = context;
        this.ae = new Handler(context.getMainLooper());
        context.getSharedPreferences(com.m.ac.aa.ap, 0).edit().putString(com.m.ac.aa.ba, "2.0.4").commit();
    }

    public static String ab() {
        return "jdta.db";
    }

    private static String ab(Context context) {
        File file;
        ag.ab(ac, new StringBuilder(String.valueOf(1)).toString());
        String str = bs.b;
        File file2 = new File(ab.aa(context, com.m.ac.aa.ax).getPath());
        SharedPreferences sharedPreferences = context.getSharedPreferences(com.m.ac.aa.ap, 0);
        if (file2.exists()) {
            Object string = sharedPreferences.getString(aa, bs.b);
            if (!TextUtils.isEmpty(string)) {
                file = new File(file2, string);
            }
            file = null;
        } else {
            file2.mkdirs();
            file = null;
        }
        if (file != null && file.exists()) {
            try {
                ah = aa.aa(context.getPackageManager(), file).versionCode;
                str = file.getAbsolutePath();
            } catch (Throwable e) {
                ag.aa(e);
            }
        }
        if (ah == 0) {
            Object ab = ab();
            if (TextUtils.isEmpty(ab)) {
                return str;
            }
            try {
                String stringBuilder = new StringBuilder(String.valueOf(UUID.randomUUID().toString())).append(com.m.ac.aa.ao).toString();
                File file3 = new File(file2, stringBuilder);
                InputStream open = context.getAssets().open(ab);
                byte[] ac = ac();
                if (!file3.exists()) {
                    file3.createNewFile();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                int length = ac.length;
                byte[] bArr = new byte[512];
                int i = 0;
                while (true) {
                    int read = open.read(bArr);
                    if (read == -1) {
                        open.close();
                        fileOutputStream.close();
                        str = file3.getAbsolutePath();
                        ah = aa.aa(context.getPackageManager(), file3).versionCode;
                        sharedPreferences.edit().putString(aa, stringBuilder).commit();
                        ag.ab(ac, new StringBuilder(String.valueOf(2)).append("   ").append(ah).toString());
                        return str;
                    }
                    for (int i2 = 0; i2 < read; i2++) {
                        bArr[i2] = (byte) (bArr[i2] ^ ac[i]);
                        fileOutputStream.write(bArr[i2]);
                        i++;
                        if (i == length) {
                            i = 0;
                        }
                    }
                }
            } catch (Exception e2) {
                return str;
            }
        }
        File aa = ab.aa(context, com.m.ac.aa.aw);
        if (!aa.exists()) {
            return str;
        }
        Object string2 = sharedPreferences.getString(ab, bs.b);
        if (TextUtils.isEmpty(string2)) {
            return str;
        }
        File file4 = new File(aa, string2);
        if (aa.aa(context.getPackageManager(), file4).versionCode > ah) {
            try {
                String stringBuilder2 = new StringBuilder(String.valueOf(UUID.randomUUID().toString())).append(com.m.ac.aa.ao).toString();
                File file5 = new File(file2, stringBuilder2);
                file5.createNewFile();
                file2 = ab.aa(context, com.m.ac.aa.ay);
                if (file2.list().length > 0) {
                    af.aa(file2.getAbsolutePath());
                }
                af.aa(file4, file5);
                str = file5.getAbsolutePath();
                sharedPreferences.edit().putString(aa, stringBuilder2).commit();
                if (file != null && file.exists()) {
                    file.delete();
                }
                ah = aa.aa(context.getPackageManager(), file5).versionCode;
            } catch (Throwable e3) {
                ag.aa(e3);
            }
        } else {
            str = file.getAbsolutePath();
        }
        ag.ab(ac, new StringBuilder(String.valueOf(3)).append("    ").append(str).toString());
        return str;
    }

    public static byte[] ac() {
        return "jdta".getBytes();
    }

    private boolean ae() {
        File aa = ab.aa(this.ad, com.m.ac.aa.aw);
        if (aa.exists()) {
            Object string = this.ad.getSharedPreferences(com.m.ac.aa.ap, 0).getString(ab, bs.b);
            if (!TextUtils.isEmpty(string)) {
                File file = new File(aa, string);
                if (file.exists()) {
                    PackageInfo aa2 = aa.aa(this.ad.getPackageManager(), file);
                    if (aa2 != null && aa2.versionCode > ah) {
                        return true;
                    }
                }
            }
            for (String str : aa.list()) {
                if (str.toLowerCase().endsWith(com.m.ac.aa.ao)) {
                    PackageInfo aa3 = aa.aa(this.ad.getPackageManager(), new File(aa, str));
                    if (aa3 != null && aa3.versionCode > ah) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public al aa() {
        return this.ag;
    }

    public synchronized void aa(String str, ao aoVar) {
        if (this.af == null) {
            if (this.ag.ac()) {
                this.ae.postDelayed(new ai(this, str, aoVar), 1000);
            } else {
                this.ag.aa(true);
                new aa(this).execute(new Object[]{str, aoVar});
            }
        } else if (ae()) {
            this.af = null;
            ah = 0;
            aa(str, aoVar);
        } else {
            try {
                aoVar.aa(true, this.af.loadClass(str));
            } catch (Exception e) {
                try {
                    Class loadClass = this.ad.getClassLoader().loadClass(str);
                    if (loadClass != null) {
                        aoVar.aa(true, loadClass);
                    } else {
                        aoVar.aa(false, null);
                    }
                } catch (ClassNotFoundException e2) {
                    aoVar.aa(false, null);
                }
            }
        }
    }
}
