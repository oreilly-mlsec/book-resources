package u.aly;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import u.aly.dc.a;

/* compiled from: TSerializer */
public class cs {
    private final ByteArrayOutputStream a;
    private final du b;
    private di c;

    public cs() {
        this(new a());
    }

    public cs(dk dkVar) {
        this.a = new ByteArrayOutputStream();
        this.b = new du(this.a);
        this.c = dkVar.a(this.b);
    }

    public byte[] a(cj cjVar) throws cp {
        this.a.reset();
        cjVar.b(this.c);
        return this.a.toByteArray();
    }

    public String a(cj cjVar, String str) throws cp {
        try {
            return new String(a(cjVar), str);
        } catch (UnsupportedEncodingException e) {
            throw new cp("JVM DOES NOT SUPPORT ENCODING: " + str);
        }
    }

    public String b(cj cjVar) throws cp {
        return new String(a(cjVar));
    }
}
