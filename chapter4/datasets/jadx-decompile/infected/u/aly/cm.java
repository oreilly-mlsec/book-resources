package u.aly;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import u.aly.dc.a;

/* compiled from: TDeserializer */
public class cm {
    private final di a;
    private final dv b;

    public cm() {
        this(new a());
    }

    public cm(dk dkVar) {
        this.b = new dv();
        this.a = dkVar.a(this.b);
    }

    public void a(cj cjVar, byte[] bArr) throws cp {
        try {
            this.b.a(bArr);
            cjVar.a(this.a);
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public void a(cj cjVar, String str, String str2) throws cp {
        try {
            a(cjVar, str.getBytes(str2));
            this.a.B();
        } catch (UnsupportedEncodingException e) {
            throw new cp("JVM DOES NOT SUPPORT ENCODING: " + str2);
        } catch (Throwable th) {
            this.a.B();
        }
    }

    public void a(cj cjVar, byte[] bArr, cq cqVar, cq... cqVarArr) throws cp {
        try {
            if (j(bArr, cqVar, cqVarArr) != null) {
                cjVar.a(this.a);
            }
            this.b.e();
            this.a.B();
        } catch (Throwable e) {
            throw new cp(e);
        } catch (Throwable th) {
            this.b.e();
            this.a.B();
        }
    }

    public Boolean a(byte[] bArr, cq cqVar, cq... cqVarArr) throws cp {
        return (Boolean) a((byte) 2, bArr, cqVar, cqVarArr);
    }

    public Byte b(byte[] bArr, cq cqVar, cq... cqVarArr) throws cp {
        return (Byte) a((byte) 3, bArr, cqVar, cqVarArr);
    }

    public Double c(byte[] bArr, cq cqVar, cq... cqVarArr) throws cp {
        return (Double) a((byte) 4, bArr, cqVar, cqVarArr);
    }

    public Short d(byte[] bArr, cq cqVar, cq... cqVarArr) throws cp {
        return (Short) a((byte) 6, bArr, cqVar, cqVarArr);
    }

    public Integer e(byte[] bArr, cq cqVar, cq... cqVarArr) throws cp {
        return (Integer) a((byte) 8, bArr, cqVar, cqVarArr);
    }

    public Long f(byte[] bArr, cq cqVar, cq... cqVarArr) throws cp {
        return (Long) a((byte) 10, bArr, cqVar, cqVarArr);
    }

    public String g(byte[] bArr, cq cqVar, cq... cqVarArr) throws cp {
        return (String) a((byte) 11, bArr, cqVar, cqVarArr);
    }

    public ByteBuffer h(byte[] bArr, cq cqVar, cq... cqVarArr) throws cp {
        return (ByteBuffer) a((byte) 100, bArr, cqVar, cqVarArr);
    }

    public Short i(byte[] bArr, cq cqVar, cq... cqVarArr) throws cp {
        try {
            if (j(bArr, cqVar, cqVarArr) != null) {
                this.a.j();
                Short valueOf = Short.valueOf(this.a.l().c);
                this.b.e();
                this.a.B();
                return valueOf;
            }
            this.b.e();
            this.a.B();
            return null;
        } catch (Throwable e) {
            throw new cp(e);
        } catch (Throwable th) {
            this.b.e();
            this.a.B();
        }
    }

    private Object a(byte b, byte[] bArr, cq cqVar, cq... cqVarArr) throws cp {
        try {
            dd j = j(bArr, cqVar, cqVarArr);
            if (j != null) {
                Object valueOf;
                switch (b) {
                    case (byte) 2:
                        if (j.b == (byte) 2) {
                            valueOf = Boolean.valueOf(this.a.t());
                            this.b.e();
                            this.a.B();
                            return valueOf;
                        }
                        break;
                    case (byte) 3:
                        if (j.b == (byte) 3) {
                            valueOf = Byte.valueOf(this.a.u());
                            this.b.e();
                            this.a.B();
                            return valueOf;
                        }
                        break;
                    case (byte) 4:
                        if (j.b == (byte) 4) {
                            valueOf = Double.valueOf(this.a.y());
                            this.b.e();
                            this.a.B();
                            return valueOf;
                        }
                        break;
                    case (byte) 6:
                        if (j.b == (byte) 6) {
                            valueOf = Short.valueOf(this.a.v());
                            this.b.e();
                            this.a.B();
                            return valueOf;
                        }
                        break;
                    case (byte) 8:
                        if (j.b == (byte) 8) {
                            valueOf = Integer.valueOf(this.a.w());
                            this.b.e();
                            this.a.B();
                            return valueOf;
                        }
                        break;
                    case (byte) 10:
                        if (j.b == (byte) 10) {
                            valueOf = Long.valueOf(this.a.x());
                            this.b.e();
                            this.a.B();
                            return valueOf;
                        }
                        break;
                    case (byte) 11:
                        if (j.b == (byte) 11) {
                            valueOf = this.a.z();
                            this.b.e();
                            this.a.B();
                            return valueOf;
                        }
                        break;
                    case (byte) 100:
                        if (j.b == (byte) 11) {
                            valueOf = this.a.A();
                            this.b.e();
                            this.a.B();
                            return valueOf;
                        }
                        break;
                }
            }
            this.b.e();
            this.a.B();
            return null;
        } catch (Throwable e) {
            throw new cp(e);
        } catch (Throwable th) {
            this.b.e();
            this.a.B();
        }
    }

    private dd j(byte[] bArr, cq cqVar, cq... cqVarArr) throws cp {
        int i = 0;
        this.b.a(bArr);
        cq[] cqVarArr2 = new cq[(cqVarArr.length + 1)];
        cqVarArr2[0] = cqVar;
        for (int i2 = 0; i2 < cqVarArr.length; i2++) {
            cqVarArr2[i2 + 1] = cqVarArr[i2];
        }
        this.a.j();
        dd ddVar = null;
        while (i < cqVarArr2.length) {
            ddVar = this.a.l();
            if (ddVar.b == (byte) 0 || ddVar.c > cqVarArr2[i].a()) {
                return null;
            }
            if (ddVar.c != cqVarArr2[i].a()) {
                dl.a(this.a, ddVar.b);
                this.a.m();
            } else {
                i++;
                if (i < cqVarArr2.length) {
                    this.a.j();
                }
            }
        }
        return ddVar;
    }

    public void a(cj cjVar, String str) throws cp {
        a(cjVar, str.getBytes());
    }
}
