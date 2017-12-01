package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Locale;
import u.aly.bs;
import u.aly.bt;
import u.aly.cf;
import u.aly.x;

/* compiled from: StoreHelper */
public final class h {
    private static h a = null;
    private static Context b = null;
    private static String c = null;
    private static long e = 1209600000;
    private static long f = 2097152;
    private static final String g = "mobclick_agent_user_";
    private static final String h = "mobclick_agent_online_setting_";
    private static final String i = "mobclick_agent_header_";
    private static final String j = "mobclick_agent_update_";
    private static final String k = "mobclick_agent_state_";
    private static final String l = "mobclick_agent_cached_";
    private a d;

    /* compiled from: StoreHelper */
    public static class a {
        private final int a;
        private File b;
        private FilenameFilter c;

        public a(Context context) {
            this(context, ".um");
        }

        public a(Context context, String str) {
            this.a = 10;
            this.c = new FilenameFilter(this) {
                final /* synthetic */ a a;

                {
                    this.a = r1;
                }

                public boolean accept(File file, String str) {
                    return str.startsWith("um");
                }
            };
            this.b = new File(context.getFilesDir(), str);
            if (!this.b.exists() || !this.b.isDirectory()) {
                this.b.mkdir();
            }
        }

        public boolean a() {
            File[] listFiles = this.b.listFiles();
            if (listFiles == null || listFiles.length <= 0) {
                return false;
            }
            return true;
        }

        public void a(b bVar) {
            File[] listFiles = this.b.listFiles(this.c);
            if (listFiles != null && listFiles.length > 0) {
                bVar.a(this.b);
                int length = listFiles.length;
                for (int i = 0; i < length; i++) {
                    try {
                        if (bVar.b(listFiles[i])) {
                            listFiles[i].delete();
                        }
                    } catch (Throwable th) {
                        listFiles[i].delete();
                    }
                }
                bVar.c(this.b);
            }
        }

        public void a(byte[] bArr) {
            int i = 0;
            if (bArr != null && bArr.length != 0) {
                try {
                    cf.a(new File(this.b, String.format(Locale.US, "um_cache_%d.env", new Object[]{Long.valueOf(System.currentTimeMillis())})), bArr);
                } catch (Exception e) {
                }
                File[] listFiles = this.b.listFiles(this.c);
                if (listFiles != null && listFiles.length >= 10) {
                    Arrays.sort(listFiles);
                    int length = listFiles.length - 10;
                    while (i < length) {
                        listFiles[i].delete();
                        i++;
                    }
                }
            }
        }

        public void b() {
            File[] listFiles = this.b.listFiles(this.c);
            if (listFiles != null && listFiles.length > 0) {
                for (File delete : listFiles) {
                    delete.delete();
                }
            }
        }

        public int c() {
            File[] listFiles = this.b.listFiles(this.c);
            if (listFiles == null || listFiles.length <= 0) {
                return 0;
            }
            return listFiles.length;
        }
    }

    /* compiled from: StoreHelper */
    public interface b {
        void a(File file);

        boolean b(File file);

        void c(File file);
    }

    public h(Context context) {
        this.d = new a(context);
        b = context.getApplicationContext();
        c = context.getPackageName();
    }

    public static synchronized h a(Context context) {
        h hVar;
        synchronized (h.class) {
            if (a == null) {
                a = new h(context);
            }
            hVar = a;
        }
        return hVar;
    }

    private static boolean a(File file) {
        long length = file.length();
        if (!file.exists() || length <= f) {
            return false;
        }
        return true;
    }

    public void a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            Editor edit = l().edit();
            edit.putString("au_p", str);
            edit.putString("au_u", str2);
            edit.commit();
        }
    }

    public String[] a() {
        SharedPreferences l = l();
        String string = l.getString("au_p", null);
        String string2 = l.getString("au_u", null);
        if (string == null || string2 == null) {
            return null;
        }
        return new String[]{string, string2};
    }

    public void b() {
        l().edit().remove("au_p").remove("au_u").commit();
    }

    public String c() {
        SharedPreferences a = x.a(b);
        if (a != null) {
            return a.getString("appkey", null);
        }
        return null;
    }

    public void a(String str) {
        SharedPreferences a = x.a(b);
        if (a != null) {
            a.edit().putString("appkey", str).commit();
        }
    }

    public String d() {
        SharedPreferences a = x.a(b);
        if (a != null) {
            return a.getString("channel", null);
        }
        return null;
    }

    public void b(String str) {
        SharedPreferences a = x.a(b);
        if (a != null) {
            a.edit().putString("channel", str).commit();
        }
    }

    public byte[] e() {
        InputStream openFileInput;
        Exception e;
        Throwable th;
        byte[] bArr = null;
        String n = n();
        File file = new File(b.getFilesDir(), n);
        if (a(file)) {
            file.delete();
        } else if (file.exists()) {
            try {
                openFileInput = b.openFileInput(n);
                try {
                    bArr = cf.b(openFileInput);
                    cf.c(openFileInput);
                } catch (Exception e2) {
                    e = e2;
                    try {
                        e.printStackTrace();
                        cf.c(openFileInput);
                        return bArr;
                    } catch (Throwable th2) {
                        th = th2;
                        cf.c(openFileInput);
                        throw th;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                openFileInput = bArr;
                e.printStackTrace();
                cf.c(openFileInput);
                return bArr;
            } catch (Throwable th3) {
                openFileInput = bArr;
                th = th3;
                cf.c(openFileInput);
                throw th;
            }
        }
        return bArr;
    }

    public void a(byte[] bArr) {
        try {
            cf.a(new File(b.getFilesDir(), n()), bArr);
        } catch (Exception e) {
            bt.b(a.e, e.getMessage());
        }
    }

    public void f() {
        b.deleteFile(m());
        b.deleteFile(n());
    }

    public void b(byte[] bArr) {
        this.d.a(bArr);
    }

    public boolean g() {
        return this.d.a();
    }

    public a h() {
        return this.d;
    }

    private SharedPreferences l() {
        return b.getSharedPreferences(g + c, 0);
    }

    public SharedPreferences i() {
        return b.getSharedPreferences(i + c, 0);
    }

    public SharedPreferences j() {
        return b.getSharedPreferences(j + c, 0);
    }

    public SharedPreferences k() {
        return b.getSharedPreferences(k + c, 0);
    }

    private String m() {
        return i + c;
    }

    private String n() {
        return l + c + bs.c(b);
    }
}
