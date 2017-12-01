package com.appbrain.a;

import android.view.View;
import android.view.View.OnClickListener;
import com.appbrain.e.f;

final class d implements OnClickListener {
    final /* synthetic */ c a;

    d(c cVar) {
        this.a = cVar;
    }

    public final void onClick(View view) {
        this.a.a = true;
        a.a(this.a.c, this.a.e ? f.MAYBE_INTERSTITIAL : f.INTERSTITIAL, this.a.d);
        this.a.c.finish();
    }
}
