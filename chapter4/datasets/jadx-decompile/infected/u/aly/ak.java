package u.aly;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import u.aly.f.a;

/* compiled from: ABTest */
public class ak implements w {
    private static ak h = null;
    private boolean a = false;
    private int b;
    private int c;
    private int d;
    private float e = 0.0f;
    private float f = 0.0f;
    private Context g = null;

    public static synchronized ak a(Context context) {
        ak akVar;
        synchronized (ak.class) {
            if (h == null) {
                a b = f.a(context).b();
                h = new ak(context, b.a(null), b.d(0));
            }
            akVar = h;
        }
        return akVar;
    }

    private ak(Context context, String str, int i) {
        this.g = context;
        a(str, i);
    }

    private float b(String str, int i) {
        int i2 = i * 2;
        if (str == null) {
            return 0.0f;
        }
        return ((float) Integer.valueOf(str.substring(i2, i2 + 5), 16).intValue()) / 1048576.0f;
    }

    public void a(String str, int i) {
        this.c = i;
        String a = c.a(this.g);
        if (TextUtils.isEmpty(a) || TextUtils.isEmpty(str)) {
            this.a = false;
            return;
        }
        try {
            this.e = b(a, 12);
            this.f = b(a, 6);
            if (str.startsWith("SIG7")) {
                b(str);
            } else if (str.startsWith("FIXED")) {
                c(str);
            }
        } catch (Exception e) {
            this.a = false;
            bt.b(com.umeng.analytics.a.e, "v:" + str, e);
        }
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String[] split = str.split("\\|");
        if (split.length != 6) {
            return false;
        }
        if (split[0].startsWith("SIG7") && split[1].split(",").length == split[5].split(",").length) {
            return true;
        }
        if (!split[0].startsWith("FIXED")) {
            return false;
        }
        int length = split[5].split(",").length;
        int parseInt = Integer.parseInt(split[1]);
        if (length < parseInt || parseInt < 1) {
            return false;
        }
        return true;
    }

    private void b(String str) {
        int[] iArr = null;
        if (str != null) {
            float floatValue;
            String[] split = str.split("\\|");
            if (split[2].equals("SIG13")) {
                floatValue = Float.valueOf(split[3]).floatValue();
            } else {
                floatValue = 0.0f;
            }
            if (this.e > floatValue) {
                this.a = false;
                return;
            }
            float[] fArr;
            if (split[0].equals("SIG7")) {
                String[] split2 = split[1].split(",");
                float[] fArr2 = new float[split2.length];
                for (int i = 0; i < split2.length; i++) {
                    fArr2[i] = Float.valueOf(split2[i]).floatValue();
                }
                fArr = fArr2;
            } else {
                Object obj = null;
            }
            if (split[4].equals("RPT")) {
                split = split[5].split(",");
                iArr = new int[split.length];
                for (int i2 = 0; i2 < split.length; i2++) {
                    iArr[i2] = Integer.valueOf(split[i2]).intValue();
                }
            }
            float f = 0.0f;
            int i3 = 0;
            while (i3 < fArr.length) {
                f += fArr[i3];
                if (this.f < f) {
                    break;
                }
                i3++;
            }
            i3 = -1;
            if (i3 != -1) {
                this.a = true;
                this.d = i3 + 1;
                this.b = iArr[i3];
                return;
            }
            this.a = false;
        }
    }

    private void c(String str) {
        if (str != null) {
            String[] split = str.split("\\|");
            float f = 0.0f;
            if (split[2].equals("SIG13")) {
                f = Float.valueOf(split[3]).floatValue();
            }
            if (this.e > f) {
                this.a = false;
                return;
            }
            int intValue;
            if (split[0].equals("FIXED")) {
                intValue = Integer.valueOf(split[1]).intValue();
            } else {
                intValue = -1;
            }
            int[] iArr = null;
            if (split[4].equals("RPT")) {
                String[] split2 = split[5].split(",");
                int[] iArr2 = new int[split2.length];
                for (int i = 0; i < split2.length; i++) {
                    iArr2[i] = Integer.valueOf(split2[i]).intValue();
                }
                iArr = iArr2;
            }
            if (intValue != -1) {
                this.a = true;
                this.d = intValue;
                this.b = iArr[intValue - 1];
                return;
            }
            this.a = false;
        }
    }

    public boolean a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public int d() {
        return this.d;
    }

    public Map<String, Integer> e() {
        if (!this.a) {
            return null;
        }
        Map<String, Integer> hashMap = new HashMap();
        hashMap.put("client_test", Integer.valueOf(this.d));
        return hashMap;
    }

    public void a(a aVar) {
        a(aVar.a(null), aVar.d(0));
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(" p13:");
        stringBuilder.append(this.e);
        stringBuilder.append(" p07:");
        stringBuilder.append(this.f);
        stringBuilder.append(" policy:");
        stringBuilder.append(this.b);
        stringBuilder.append(" interval:");
        stringBuilder.append(this.c);
        return stringBuilder.toString();
    }
}
