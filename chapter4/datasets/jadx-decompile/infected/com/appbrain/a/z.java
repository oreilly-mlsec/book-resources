package com.appbrain.a;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.appbrain.e.f;

final class z implements OnClickListener {
    final /* synthetic */ v a;
    private final /* synthetic */ Activity b;
    private final /* synthetic */ b c;

    z(v vVar, Activity activity, b bVar) {
        this.a = vVar;
        this.b = activity;
        this.c = bVar;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        a.a(this.b, f.SHOW_DIALOG, this.c);
    }
}
