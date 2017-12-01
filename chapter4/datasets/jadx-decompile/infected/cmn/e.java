package cmn;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.StatFs;
import android.preference.PreferenceManager;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import u.aly.bs;

public final class e implements Serializable {
    private static e g = null;
    public int a = -1;
    public int b = -1;
    public int c = -1;
    public int d = -1;
    public String e = bs.b;
    public Set f = new HashSet();
    private String h = null;
    private String i = null;
    private String j = bs.b;
    private String k = bs.b;
    private final int l;
    private final long m;
    private final String n;
    private final int o;
    private final String p;
    private final String q;
    private final String r;
    private final String s;
    private final String t;
    private int u;
    private String v;
    private String w;
    private String x;
    private String y;
    private int z;

    private e(int i, int i2, String str, long j, String str2) {
        this.l = i;
        this.o = i2;
        this.p = str;
        this.m = j;
        this.n = str2;
        this.q = Build.BRAND + " " + Build.DEVICE;
        this.r = Build.MODEL;
        String str3 = bs.b;
        Field[] fields = Build.class.getFields();
        int length = fields.length;
        int i3 = 0;
        while (i3 < length) {
            String str4;
            Field field = fields[i3];
            if (field.getName().equals("MANUFACTURER")) {
                try {
                    str4 = (String) field.get(null);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                i3++;
                str3 = str4;
            }
            str4 = str3;
            i3++;
            str3 = str4;
        }
        this.s = str3;
        this.t = Build.PRODUCT;
    }

    private static long a(String str) {
        int i = 0;
        long j = 0;
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            int i2 = 0;
            while (i2 < 8) {
                long j2 = ((((long) digest[i2]) & 255) << (i2 * 8)) | j;
                i2++;
                j = j2;
            }
        } catch (NoSuchAlgorithmException e) {
            Log.e("scm", "MD5 not found!");
            while (i < str.length()) {
                j = (j * 7265812761L) + ((long) ((str.charAt(i) + 123) * 41));
                i++;
            }
        }
        return j;
    }

    public static synchronized e a(Context context) {
        e eVar;
        Editor edit;
        String a;
        String packageName;
        TelephonyManager telephonyManager;
        DisplayMetrics displayMetrics;
        int i = 0;
        synchronized (e.class) {
            if (g != null) {
                eVar = g;
            } else {
                int i2;
                long j;
                int i3;
                String string;
                Context applicationContext = context.getApplicationContext();
                ContentResolver contentResolver = applicationContext.getContentResolver();
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(applicationContext);
                int time = (int) (new Date().getTime() / 1000);
                try {
                    i2 = defaultSharedPreferences.getInt("installed-since", time);
                    try {
                        i = defaultSharedPreferences.getInt("scmid", 0);
                        j = defaultSharedPreferences.getLong("newscmid", 0);
                        i3 = i2;
                        i2 = i;
                    } catch (Exception e) {
                        j = 0;
                        i3 = i2;
                        i2 = i;
                        edit = defaultSharedPreferences.edit();
                        a = a(contentResolver);
                        i2 = a.hashCode();
                        j = a(a);
                        edit.putInt("installed-since", i3);
                        edit.putInt("scmid", i2);
                        edit.putLong("newscmid", j);
                        a.a().a(edit);
                        string = Secure.getString(applicationContext.getContentResolver(), "android_id");
                        if (string == null) {
                            string = bs.b;
                        }
                        eVar = new e(i2, i3, VERSION.RELEASE, j, string);
                        eVar.w = applicationContext.getResources().getConfiguration().locale.getLanguage();
                        eVar.b(applicationContext);
                        packageName = applicationContext.getPackageName();
                        if (packageName.startsWith("com.appspot.swisscodemonkeys.")) {
                            packageName = packageName.substring(packageName.lastIndexOf(46) + 1);
                        }
                        eVar.x = packageName;
                        eVar.y = applicationContext.getPackageName();
                        eVar.i = j.a(defaultSharedPreferences);
                        telephonyManager = (TelephonyManager) applicationContext.getSystemService("phone");
                        eVar.j = telephonyManager.getNetworkCountryIso();
                        if (eVar.j == null) {
                            eVar.j = bs.b;
                        }
                        eVar.k = telephonyManager.getSimCountryIso();
                        if (eVar.k == null) {
                            eVar.k = bs.b;
                        }
                        eVar.e = telephonyManager.getSimOperator();
                        if (eVar.e == null) {
                            eVar.e = bs.b;
                        }
                        eVar.z = defaultSharedPreferences.getInt("cmn.nbar.stats", 0);
                        g = eVar;
                        displayMetrics = new DisplayMetrics();
                        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                        eVar.d = displayMetrics.densityDpi;
                        eVar.a = (int) (((float) Math.min(displayMetrics.heightPixels, displayMetrics.widthPixels)) / displayMetrics.density);
                        return eVar;
                    }
                } catch (Exception e2) {
                    i2 = time;
                    j = 0;
                    i3 = i2;
                    i2 = i;
                    edit = defaultSharedPreferences.edit();
                    a = a(contentResolver);
                    i2 = a.hashCode();
                    j = a(a);
                    edit.putInt("installed-since", i3);
                    edit.putInt("scmid", i2);
                    edit.putLong("newscmid", j);
                    a.a().a(edit);
                    string = Secure.getString(applicationContext.getContentResolver(), "android_id");
                    if (string == null) {
                        string = bs.b;
                    }
                    eVar = new e(i2, i3, VERSION.RELEASE, j, string);
                    eVar.w = applicationContext.getResources().getConfiguration().locale.getLanguage();
                    eVar.b(applicationContext);
                    packageName = applicationContext.getPackageName();
                    if (packageName.startsWith("com.appspot.swisscodemonkeys.")) {
                        packageName = packageName.substring(packageName.lastIndexOf(46) + 1);
                    }
                    eVar.x = packageName;
                    eVar.y = applicationContext.getPackageName();
                    eVar.i = j.a(defaultSharedPreferences);
                    telephonyManager = (TelephonyManager) applicationContext.getSystemService("phone");
                    eVar.j = telephonyManager.getNetworkCountryIso();
                    if (eVar.j == null) {
                        eVar.j = bs.b;
                    }
                    eVar.k = telephonyManager.getSimCountryIso();
                    if (eVar.k == null) {
                        eVar.k = bs.b;
                    }
                    eVar.e = telephonyManager.getSimOperator();
                    if (eVar.e == null) {
                        eVar.e = bs.b;
                    }
                    eVar.z = defaultSharedPreferences.getInt("cmn.nbar.stats", 0);
                    g = eVar;
                    displayMetrics = new DisplayMetrics();
                    ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                    eVar.d = displayMetrics.densityDpi;
                    eVar.a = (int) (((float) Math.min(displayMetrics.heightPixels, displayMetrics.widthPixels)) / displayMetrics.density);
                    return eVar;
                }
                if (time == i3 || (r1 == 0 && r4 == 0)) {
                    edit = defaultSharedPreferences.edit();
                    a = a(contentResolver);
                    i2 = a.hashCode();
                    j = a(a);
                    edit.putInt("installed-since", i3);
                    edit.putInt("scmid", i2);
                    edit.putLong("newscmid", j);
                    a.a().a(edit);
                }
                string = Secure.getString(applicationContext.getContentResolver(), "android_id");
                if (string == null) {
                    string = bs.b;
                }
                eVar = new e(i2, i3, VERSION.RELEASE, j, string);
                eVar.w = applicationContext.getResources().getConfiguration().locale.getLanguage();
                eVar.b(applicationContext);
                packageName = applicationContext.getPackageName();
                if (packageName.startsWith("com.appspot.swisscodemonkeys.")) {
                    packageName = packageName.substring(packageName.lastIndexOf(46) + 1);
                }
                eVar.x = packageName;
                eVar.y = applicationContext.getPackageName();
                eVar.i = j.a(defaultSharedPreferences);
                try {
                    telephonyManager = (TelephonyManager) applicationContext.getSystemService("phone");
                    eVar.j = telephonyManager.getNetworkCountryIso();
                    if (eVar.j == null) {
                        eVar.j = bs.b;
                    }
                    eVar.k = telephonyManager.getSimCountryIso();
                    if (eVar.k == null) {
                        eVar.k = bs.b;
                    }
                    eVar.e = telephonyManager.getSimOperator();
                    if (eVar.e == null) {
                        eVar.e = bs.b;
                    }
                } catch (Throwable th) {
                }
                eVar.z = defaultSharedPreferences.getInt("cmn.nbar.stats", 0);
                g = eVar;
                try {
                    displayMetrics = new DisplayMetrics();
                    ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                    eVar.d = displayMetrics.densityDpi;
                    eVar.a = (int) (((float) Math.min(displayMetrics.heightPixels, displayMetrics.widthPixels)) / displayMetrics.density);
                } catch (Throwable th2) {
                }
            }
        }
        return eVar;
    }

    private static String a(ContentResolver contentResolver) {
        String string = Secure.getString(contentResolver, "android_id");
        if (string == null || string.equals("9774d56d682e549c") || string.equals("67ef2b122f51423f")) {
            string = bs.b;
        }
        if (string.length() != 0) {
            return string;
        }
        Random random = new Random();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < 16; i++) {
            stringBuffer.append(random.nextInt(16) + 97);
        }
        return stringBuffer.toString();
    }

    private void b(Context context) {
        if (this.v == null) {
            StringBuilder stringBuilder = new StringBuilder();
            this.x = "notfound";
            this.f.clear();
            int i = 0;
            for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(0)) {
                if (packageInfo.packageName.equals(context.getPackageName())) {
                    this.h = packageInfo.versionCode;
                }
                if (packageInfo.packageName.equals("com.android.vending")) {
                    this.b = packageInfo.versionCode;
                }
                if (packageInfo.packageName.contains("swisscodemonkeys")) {
                    if (stringBuilder.length() > 0) {
                        stringBuilder.append(",");
                    }
                    stringBuilder.append(packageInfo.packageName.substring(packageInfo.packageName.lastIndexOf(46) + 1));
                }
                this.f.add(packageInfo.packageName);
                i++;
            }
            this.v = stringBuilder.toString();
            this.u = i;
            try {
                StatFs statFs = new StatFs("/data/app");
                this.c = (int) ((((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize())) / 1024);
            } catch (Throwable th) {
            }
        }
    }

    public final String a() {
        return this.j;
    }

    public final String b() {
        return this.k;
    }

    public final String c() {
        return this.q;
    }

    public final String d() {
        return this.w;
    }

    public final int e() {
        return this.u;
    }

    public final String f() {
        return this.h == null ? bs.b : this.h;
    }

    public final String g() {
        return this.p;
    }

    public final String h() {
        return this.n;
    }

    public final String i() {
        return f.b(new byte[]{(byte) ((this.l >> 24) & 255), (byte) ((this.l >> 16) & 255), (byte) ((this.l >> 8) & 255), (byte) (this.l & 255)});
    }

    public final String j() {
        byte[] bArr = new byte[8];
        for (int i = 0; i < 8; i++) {
            bArr[i] = (byte) ((int) ((this.m >> (i * 8)) & 255));
        }
        return f.b(bArr);
    }

    public final int k() {
        return this.o;
    }

    public final String l() {
        return this.y;
    }

    public final String m() {
        return this.r;
    }

    public final String n() {
        return this.s;
    }

    public final String o() {
        return this.t;
    }
}
