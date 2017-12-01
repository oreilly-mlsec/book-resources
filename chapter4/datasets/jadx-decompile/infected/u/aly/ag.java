package u.aly;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;

/* compiled from: UError */
public class ag extends av implements q {
    public ag() {
        a(System.currentTimeMillis());
        a(aw.LEGIT);
    }

    public ag(String str) {
        this();
        a(str);
    }

    public ag(Throwable th) {
        this();
        a(a(th));
    }

    public ag a(boolean z) {
        a(z ? aw.LEGIT : aw.ALIEN);
        return this;
    }

    private String a(Throwable th) {
        String str = null;
        if (th != null) {
            try {
                Writer stringWriter = new StringWriter();
                PrintWriter printWriter = new PrintWriter(stringWriter);
                th.printStackTrace(printWriter);
                for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
                    cause.printStackTrace(printWriter);
                }
                str = stringWriter.toString();
                printWriter.close();
                stringWriter.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str;
    }

    public void a(bp bpVar, String str) {
        if (bpVar.s() > 0) {
            for (be beVar : bpVar.u()) {
                if (str.equals(beVar.c())) {
                    break;
                }
            }
        }
        be beVar2 = null;
        if (beVar2 == null) {
            beVar2 = new be();
            beVar2.a(str);
            bpVar.a(beVar2);
        }
        beVar2.a((av) this);
    }
}
