package u.aly;

/* compiled from: TField */
public class dd {
    public final String a;
    public final byte b;
    public final short c;

    public dd() {
        this(bs.b, (byte) 0, (short) 0);
    }

    public dd(String str, byte b, short s) {
        this.a = str;
        this.b = b;
        this.c = s;
    }

    public String toString() {
        return "<TField name:'" + this.a + "' type:" + this.b + " field-id:" + this.c + ">";
    }

    public boolean a(dd ddVar) {
        return this.b == ddVar.b && this.c == ddVar.c;
    }
}
