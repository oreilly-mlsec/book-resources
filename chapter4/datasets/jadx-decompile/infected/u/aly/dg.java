package u.aly;

/* compiled from: TMessage */
public final class dg {
    public final String a;
    public final byte b;
    public final int c;

    public dg() {
        this(bs.b, (byte) 0, 0);
    }

    public dg(String str, byte b, int i) {
        this.a = str;
        this.b = b;
        this.c = i;
    }

    public String toString() {
        return "<TMessage name:'" + this.a + "' type: " + this.b + " seqid:" + this.c + ">";
    }

    public boolean equals(Object obj) {
        if (obj instanceof dg) {
            return a((dg) obj);
        }
        return false;
    }

    public boolean a(dg dgVar) {
        return this.a.equals(dgVar.a) && this.b == dgVar.b && this.c == dgVar.c;
    }
}
