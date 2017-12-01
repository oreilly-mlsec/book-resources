package com.appbrain.a;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.appbrain.e.f;

final class aa implements OnClickListener {
    final /* synthetic */ v a;
    private final /* synthetic */ Activity b;

    aa(v vVar, Activity activity) {
        this.a = vVar;
        this.b = activity;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        a.a(this.b, f.MAYBE_OFFERWALL);
    }
}
