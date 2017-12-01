package com.appbrain.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class y implements OnClickListener {
    final /* synthetic */ v a;
    private final /* synthetic */ Runnable b;

    y(v vVar, Runnable runnable) {
        this.a = vVar;
        this.b = runnable;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        if (this.b != null) {
            this.b.run();
        }
    }
}
