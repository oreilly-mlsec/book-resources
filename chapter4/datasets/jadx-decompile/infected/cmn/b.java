package cmn;

import android.content.SharedPreferences.Editor;

final class b implements Runnable {
    final /* synthetic */ Editor a;
    final /* synthetic */ a b;

    b(a aVar, Editor editor) {
        this.b = aVar;
        this.a = editor;
    }

    public final void run() {
        this.a.commit();
    }
}
