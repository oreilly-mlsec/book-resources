package u.aly;

/* compiled from: ShortStack */
public class ch {
    private short[] a;
    private int b = -1;

    public ch(int i) {
        this.a = new short[i];
    }

    public short a() {
        short[] sArr = this.a;
        int i = this.b;
        this.b = i - 1;
        return sArr[i];
    }

    public void a(short s) {
        if (this.a.length == this.b + 1) {
            d();
        }
        short[] sArr = this.a;
        int i = this.b + 1;
        this.b = i;
        sArr[i] = s;
    }

    private void d() {
        Object obj = new short[(this.a.length * 2)];
        System.arraycopy(this.a, 0, obj, 0, this.a.length);
        this.a = obj;
    }

    public short b() {
        return this.a[this.b];
    }

    public void c() {
        this.b = -1;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("<ShortStack vector:[");
        for (int i = 0; i < this.a.length; i++) {
            if (i != 0) {
                stringBuilder.append(" ");
            }
            if (i == this.b) {
                stringBuilder.append(">>");
            }
            stringBuilder.append(this.a[i]);
            if (i == this.b) {
                stringBuilder.append("<<");
            }
        }
        stringBuilder.append("]>");
        return stringBuilder.toString();
    }
}
