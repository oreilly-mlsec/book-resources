package com.appbrain.a;

import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable.ShaderFactory;

final class f extends ShaderFactory {
    final /* synthetic */ c a;
    private final /* synthetic */ String b;

    f(c cVar, String str) {
        this.a = cVar;
        this.b = str;
    }

    public final Shader resize(int i, int i2) {
        return c.a(this.b, i2);
    }
}
