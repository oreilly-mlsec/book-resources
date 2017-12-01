package com.m.s;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.m.ac.aa;
import com.m.u.af;
import com.m.u.ag;
import com.m.u.at;
import com.m.u.ay;
import com.m.u.o;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

class ab implements ay {
    final /* synthetic */ ab aa;

    ab(ab abVar) {
        this.aa = abVar;
    }

    public void aa(boolean z) {
        this.aa.ag = 11;
        ag.ad(c.aa, new StringBuilder(String.valueOf(this.aa.ag)).append("    ").append(z).toString());
        File file = null;
        File aa = com.m.ac.ab.aa(this.aa.aa.ac, aa.aw);
        String ad = this.aa.ad.ad();
        this.aa.ag = 12;
        ag.ad(c.aa, new StringBuilder(String.valueOf(this.aa.ag)).append("    ").append(ad).append("    ").append(this.aa.ad.ac()).toString());
        if (z) {
            if (!(TextUtils.isEmpty(ad) || this.aa.ad.ac() == null)) {
                ad = new StringBuilder(String.valueOf(UUID.randomUUID().toString())).append(aa.ao).toString();
                file = new File(com.m.ac.ab.aa(this.aa.aa.ac, aa.aw), ad);
                this.aa.ag = 13;
                ag.ad(c.aa, new StringBuilder(String.valueOf(this.aa.ag)).append("     ").append(file.getAbsolutePath()).toString());
                this.aa.ad.ac().renameTo(file);
                SharedPreferences sharedPreferences = this.aa.aa.ac.getSharedPreferences(aa.ap, 0);
                if (file != null) {
                    File aa2 = com.m.ac.ab.aa(this.aa.aa.ac, aa.ax);
                    if (aa2.exists() && aa2.list().length > 0) {
                        for (String file2 : aa2.list()) {
                            new File(aa2, file2).delete();
                        }
                    }
                    String stringBuilder = new StringBuilder(String.valueOf(UUID.randomUUID().toString())).append(aa.ao).toString();
                    try {
                        af.aa(file, new File(com.m.ac.ab.aa(this.aa.aa.ac, aa.ax), stringBuilder));
                        sharedPreferences.edit().putString(o.aa, stringBuilder).commit();
                    } catch (IOException e) {
                        ag.ad(c.aa, new StringBuilder(String.valueOf(stringBuilder)).toString());
                    }
                }
                sharedPreferences.edit().putString(o.ab, ad).commit();
                at.aa();
            }
            if (aa.length() > 0) {
                for (String str : aa.list()) {
                    if (!str.equalsIgnoreCase(ad)) {
                        new File(aa, str).delete();
                    }
                }
            }
            try {
                File file3 = new File(com.m.ac.ab.ab(this.aa.aa.ac));
                if (!file3.exists()) {
                    file3.mkdirs();
                }
                aa = new File(com.m.ac.ab.ab(this.aa.aa.ac), ad);
                if (!file3.exists() || file3.list().length <= 0) {
                    try {
                        file3.mkdirs();
                        aa.createNewFile();
                    } catch (Exception e2) {
                    }
                } else {
                    for (String str2 : file3.list()) {
                        if (str2.toLowerCase().endsWith(aa.ao)) {
                            new File(com.m.ac.ab.ab(this.aa.aa.ac), str2).delete();
                        }
                    }
                }
                if (file != null) {
                    af.aa(file, aa);
                }
            } catch (Throwable e3) {
                ag.aa(e3);
            }
        }
    }
}
