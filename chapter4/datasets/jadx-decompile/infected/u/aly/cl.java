package u.aly;

import java.io.ByteArrayOutputStream;

/* compiled from: TByteArrayOutputStream */
public class cl extends ByteArrayOutputStream {
    public cl(int i) {
        super(i);
    }

    public byte[] a() {
        return this.buf;
    }

    public int b() {
        return this.count;
    }
}
