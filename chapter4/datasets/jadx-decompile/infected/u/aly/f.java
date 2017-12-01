package u.aly;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.ReportPolicy;
import com.umeng.analytics.b;
import java.io.File;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

/* compiled from: ImprintHandler */
public class f {
    private static final String a = ".imprint";
    private static final byte[] b = "pbl0".getBytes();
    private static f f;
    private w c;
    private a d = new a();
    private bc e = null;
    private Context g;

    /* compiled from: ImprintHandler */
    public static class a {
        private int a = -1;
        private int b = -1;
        private int c = -1;
        private int d = -1;
        private int e = -1;
        private String f = null;
        private int g = -1;
        private String h = null;
        private int i = -1;
        private int j = -1;

        a() {
        }

        a(bc bcVar) {
            a(bcVar);
        }

        public void a(bc bcVar) {
            if (bcVar != null) {
                this.a = a(bcVar, "defcon");
                this.b = a(bcVar, "latent");
                this.c = a(bcVar, "codex");
                this.d = a(bcVar, "report_policy");
                this.e = a(bcVar, "report_interval");
                this.f = b(bcVar, "client_test");
                this.g = a(bcVar, "test_report_interval");
                this.h = b(bcVar, "umid");
                this.i = a(bcVar, "integrated_test");
                this.j = a(bcVar, "latent_hours");
            }
        }

        public int a(int i) {
            return (this.a != -1 && this.a <= 3 && this.a >= 0) ? this.a : i;
        }

        public int b(int i) {
            return (this.b != -1 && this.b >= 0 && this.b <= 1800) ? this.b * 1000 : i;
        }

        public int c(int i) {
            if (this.c == 0 || this.c == 1 || this.c == -1) {
                return this.c;
            }
            return i;
        }

        public int[] a(int i, int i2) {
            if (this.d == -1 || !ReportPolicy.a(this.d)) {
                return new int[]{i, i2};
            }
            if (this.e == -1 || this.e < 90 || this.e > 86400) {
                this.e = 90;
            }
            return new int[]{this.d, this.e * 1000};
        }

        public String a(String str) {
            return (this.f == null || !ak.a(this.f)) ? str : this.f;
        }

        public int d(int i) {
            return (this.g == -1 || this.g < 90 || this.g > 86400) ? i : this.g * 1000;
        }

        public boolean a() {
            return this.g != -1;
        }

        public String b(String str) {
            return this.h;
        }

        public boolean b() {
            return this.i == 1;
        }

        public long a(long j) {
            return (this.j != -1 && this.j >= 48) ? com.umeng.analytics.a.h * ((long) this.j) : j;
        }

        private int a(bc bcVar, String str) {
            if (bcVar == null || !bcVar.f()) {
                return -1;
            }
            bd bdVar = (bd) bcVar.d().get(str);
            if (bdVar == null || TextUtils.isEmpty(bdVar.c())) {
                return -1;
            }
            try {
                return Integer.parseInt(bdVar.c().trim());
            } catch (Exception e) {
                return -1;
            }
        }

        private String b(bc bcVar, String str) {
            if (bcVar == null || !bcVar.f()) {
                return null;
            }
            bd bdVar = (bd) bcVar.d().get(str);
            if (bdVar == null || TextUtils.isEmpty(bdVar.c())) {
                return null;
            }
            return bdVar.c();
        }
    }

    f(Context context) {
        this.g = context;
    }

    public static synchronized f a(Context context) {
        f fVar;
        synchronized (f.class) {
            if (f == null) {
                f = new f(context);
                f.c();
            }
            fVar = f;
        }
        return fVar;
    }

    public void a(w wVar) {
        this.c = wVar;
    }

    public String a(bc bcVar) {
        StringBuilder stringBuilder = new StringBuilder();
        for (Entry entry : new TreeMap(bcVar.d()).entrySet()) {
            stringBuilder.append((String) entry.getKey());
            if (((bd) entry.getValue()).e()) {
                stringBuilder.append(((bd) entry.getValue()).c());
            }
            stringBuilder.append(((bd) entry.getValue()).f());
            stringBuilder.append(((bd) entry.getValue()).j());
        }
        stringBuilder.append(bcVar.b);
        return cf.a(stringBuilder.toString()).toLowerCase(Locale.US);
    }

    private boolean c(bc bcVar) {
        if (!bcVar.k().equals(a(bcVar))) {
            return false;
        }
        for (bd bdVar : bcVar.d().values()) {
            byte[] a = b.a(bdVar.j());
            byte[] a2 = a(bdVar);
            for (int i = 0; i < 4; i++) {
                if (a[i] != a2[i]) {
                    return false;
                }
            }
        }
        return true;
    }

    public byte[] a(bd bdVar) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(null);
        allocate.putLong(bdVar.f());
        byte[] array = allocate.array();
        byte[] bArr = b;
        byte[] bArr2 = new byte[4];
        for (int i = 0; i < 4; i++) {
            bArr2[i] = (byte) (array[i] ^ bArr[i]);
        }
        return bArr2;
    }

    public void b(bc bcVar) {
        String str = null;
        if (bcVar != null && c(bcVar)) {
            Object obj = null;
            synchronized (this) {
                bc d;
                bc bcVar2 = this.e;
                String k = bcVar2 == null ? null : bcVar2.k();
                if (bcVar2 == null) {
                    d = d(bcVar);
                } else {
                    d = a(bcVar2, bcVar);
                }
                this.e = d;
                if (d != null) {
                    str = d.k();
                }
                if (!a(k, str)) {
                    obj = 1;
                }
            }
            if (this.e != null && r0 != null) {
                this.d.a(this.e);
                if (this.c != null) {
                    this.c.a(this.d);
                }
            }
        }
    }

    private boolean a(String str, String str2) {
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 != null) {
            return false;
        }
        return true;
    }

    private bc a(bc bcVar, bc bcVar2) {
        if (bcVar2 != null) {
            Map d = bcVar.d();
            for (Entry entry : bcVar2.d().entrySet()) {
                if (((bd) entry.getValue()).e()) {
                    d.put(entry.getKey(), entry.getValue());
                } else {
                    d.remove(entry.getKey());
                }
            }
            bcVar.a(bcVar2.h());
            bcVar.a(a(bcVar));
        }
        return bcVar;
    }

    private bc d(bc bcVar) {
        Map d = bcVar.d();
        List<String> arrayList = new ArrayList(d.size() / 2);
        for (Entry entry : d.entrySet()) {
            if (!((bd) entry.getValue()).e()) {
                arrayList.add(entry.getKey());
            }
        }
        for (String remove : arrayList) {
            d.remove(remove);
        }
        return bcVar;
    }

    public synchronized bc a() {
        return this.e;
    }

    public a b() {
        return this.d;
    }

    public void c() {
        byte[] b;
        Exception e;
        bc bcVar;
        Throwable th;
        InputStream inputStream = null;
        if (new File(this.g.getFilesDir(), a).exists()) {
            InputStream openFileInput;
            try {
                openFileInput = this.g.openFileInput(a);
                try {
                    b = cf.b(openFileInput);
                    cf.c(openFileInput);
                } catch (Exception e2) {
                    e = e2;
                    try {
                        e.printStackTrace();
                        cf.c(openFileInput);
                        if (b == null) {
                            try {
                                bcVar = new bc();
                                new cm().a((cj) bcVar, b);
                                this.e = bcVar;
                                this.d.a(bcVar);
                            } catch (Exception e3) {
                                e3.printStackTrace();
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = openFileInput;
                        cf.c(inputStream);
                        throw th;
                    }
                }
            } catch (Exception e4) {
                e3 = e4;
                openFileInput = inputStream;
                e3.printStackTrace();
                cf.c(openFileInput);
                if (b == null) {
                    bcVar = new bc();
                    new cm().a((cj) bcVar, b);
                    this.e = bcVar;
                    this.d.a(bcVar);
                }
            } catch (Throwable th3) {
                th = th3;
                cf.c(inputStream);
                throw th;
            }
            if (b == null) {
                bcVar = new bc();
                new cm().a((cj) bcVar, b);
                this.e = bcVar;
                this.d.a(bcVar);
            }
        }
    }

    public void d() {
        if (this.e != null) {
            try {
                cf.a(new File(this.g.getFilesDir(), a), new cs().a(this.e));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public boolean e() {
        return new File(this.g.getFilesDir(), a).delete();
    }
}
