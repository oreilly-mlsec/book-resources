package com.m.s;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.text.TextUtils;
import com.m.ab.af;
import com.m.ab.aj;
import com.m.ab.ak;
import com.m.ab.an;
import com.m.ab.as;
import com.m.u.ac;
import com.m.u.ae;
import com.m.u.ag;
import com.m.u.at;
import com.m.u.ba;
import com.m.u.o;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import u.aly.bs;

public class c extends i {
    public static final String aa = ae.aa(ac.dx);
    public static boolean ab = false;
    private ab ah;

    class aa extends TimerTask {
        com.m.ac.ac aa;
        final /* synthetic */ c ab;

        public aa(c cVar, com.m.ac.ac acVar) {
            this.ab = cVar;
            this.aa = acVar;
        }

        public void run() {
            aj ajVar = new aj();
            ajVar.aa(at.aa(this.ab.ac));
            ajVar.aa(this.ab.ac.getSharedPreferences(com.m.ac.aa.ap, 0).getString(com.m.ac.aa.bb, bs.b));
            ag.ad(c.aa, ajVar.toString());
            an.aa().aa(this.aa.ac(), ajVar, new aa(this));
        }
    }

    private final class ab implements Runnable {
        final /* synthetic */ c aa;
        private String ab;
        private File ac;
        private ba ad;
        private String ae;
        private int af;
        private int ag = -1;

        public ab(c cVar, String str, int i, String str2, File file) {
            this.aa = cVar;
            this.ae = str2;
            this.ab = str;
            this.af = i;
            this.ac = file;
        }

        public void run() {
            try {
                this.ag = 10;
                ag.ab(c.aa, this.ag + "    " + this.ae + "    " + this.ac.getAbsolutePath());
                this.ad = new ba(this.aa.ac, this.ab, this.ae, this.ac, 1);
                this.ad.aa(new ab(this));
            } catch (Throwable e) {
                this.ag = 14;
                ag.ad(c.aa, this.ag + "    " + e.toString());
                ag.aa(e);
                this.ad.aa();
            }
        }
    }

    public c(int i, Context context, Handler handler) {
        super(i, context, handler);
        as.aa(aj.class);
        as.aa(ak.class);
        as.aa(af.class);
        as.aa(com.m.ab.ag.class);
    }

    public static int aa(Context context) {
        int i;
        Exception e;
        PackageInfo ac = com.m.u.ak.ac(context);
        if (ac != null) {
            return ac.versionCode;
        }
        int aa = com.m.u.ak.aa(context);
        if (aa == 0) {
            Object ab = o.ab();
            if (!TextUtils.isEmpty(ab)) {
                try {
                    String stringBuilder = new StringBuilder(String.valueOf(UUID.randomUUID().toString())).append(com.m.ac.aa.ao).toString();
                    File aa2 = com.m.ac.ab.aa(context, com.m.ac.aa.ax);
                    if (!aa2.exists()) {
                        aa2.mkdirs();
                    }
                    File file = new File(aa2, stringBuilder);
                    InputStream open = context.getAssets().open(ab);
                    byte[] ac2 = o.ac();
                    if (!file.exists()) {
                        file.createNewFile();
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    int length = ac2.length;
                    byte[] bArr = new byte[512];
                    i = 0;
                    while (true) {
                        int read = open.read(bArr);
                        if (read == -1) {
                            open.close();
                            fileOutputStream.close();
                            i = com.m.u.aa.aa(context.getPackageManager(), file).versionCode;
                            try {
                                context.getSharedPreferences(com.m.ac.aa.ap, 0).edit().putString(o.aa, stringBuilder).commit();
                                ag.ad(aa, new StringBuilder(String.valueOf(3)).append("    ").append(i).toString());
                                return i;
                            } catch (Exception e2) {
                                e = e2;
                                ag.aa(aa, new StringBuilder(String.valueOf(4)).append("    ").append(e.getMessage()).toString());
                                return i;
                            }
                        }
                        for (int i2 = 0; i2 < read; i2++) {
                            bArr[i2] = (byte) (bArr[i2] ^ ac2[i]);
                            fileOutputStream.write(bArr[i2]);
                            i++;
                            if (i == length) {
                                i = 0;
                            }
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    i = aa;
                }
            }
        }
        return aa;
    }

    private void aa(ak akVar) {
        if (akVar.aa() != 3) {
            File file = new File(com.m.ac.ab.ab(this.ac));
            if (file.exists()) {
                for (String str : file.list()) {
                    String str2;
                    if (str2.toLowerCase().endsWith(com.m.ac.aa.ao)) {
                        File file2 = new File(file, str2);
                        PackageInfo aa = com.m.u.aa.aa(this.ac.getPackageManager(), file2);
                        if ((aa == null ? 0 : aa.versionCode) >= akVar.ad()) {
                            str2 = new StringBuilder(String.valueOf(UUID.randomUUID().toString())).append(ae.aa(ac.ao)).toString();
                            File file3 = new File(com.m.ac.ab.aa(this.ac, com.m.ac.aa.aw), str2);
                            try {
                                String aa2 = com.m.u.aj.aa(file2.getAbsolutePath());
                                if (akVar.ac() != null && akVar.ac().equalsIgnoreCase(aa2)) {
                                    com.m.u.af.aa(file2, file3);
                                    SharedPreferences sharedPreferences = this.ac.getSharedPreferences(com.m.ac.aa.ap, 0);
                                    sharedPreferences.edit().putString(o.ab, str2).commit();
                                    if (file2 != null) {
                                        File aa3 = com.m.ac.ab.aa(this.ac, com.m.ac.aa.ax);
                                        if (aa3.exists() && aa3.list().length > 0) {
                                            for (String file4 : aa3.list()) {
                                                new File(aa3, file4).delete();
                                            }
                                        }
                                        str2 = new StringBuilder(String.valueOf(UUID.randomUUID().toString())).append(com.m.ac.aa.ao).toString();
                                        try {
                                            com.m.u.af.aa(file2, new File(com.m.ac.ab.aa(this.ac, com.m.ac.aa.ax), str2));
                                            sharedPreferences.edit().putString(o.aa, str2).commit();
                                            at.aa();
                                            return;
                                        } catch (IOException e) {
                                            ag.ad(aa, new StringBuilder(String.valueOf(str2)).toString());
                                            return;
                                        }
                                    }
                                    return;
                                }
                                return;
                            } catch (Throwable e2) {
                                ag.aa(e2);
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            aa(akVar.ab(), akVar.ad(), akVar.ac(), com.m.ac.ab.aa(this.ac, com.m.ac.aa.aw));
            return;
        }
        ag.ab(aa, new StringBuilder(String.valueOf(9)).toString());
    }

    private void aa(String str, int i, String str2, File file) {
        this.ah = new ab(this, str, i, str2, file);
        new Thread(this.ah).start();
    }

    protected void aa() {
        ag.aa(aa, new StringBuilder(String.valueOf(5)).append("    ").toString());
        super.aa();
        ab = false;
        ac();
    }

    public void aa(Intent intent, int i, int i2) {
        if (ab) {
            ag.ab(aa, new StringBuilder(String.valueOf(2)).toString());
            return;
        }
        ag.ab(aa, new StringBuilder(String.valueOf(1)).toString());
        ab = true;
        ab();
    }

    public void aa(com.m.ac.ac acVar) {
        new Timer().schedule(new aa(this, acVar), 1000);
    }
}
