package com.appbrain.a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.drawable.PaintDrawable;
import android.graphics.drawable.shapes.Shape;

final class g extends PaintDrawable {
    private Paint a = new Paint(1);

    public g(Shape shape) {
        setShape(shape);
        this.a.setStyle(Style.STROKE);
    }

    public final Paint a() {
        return this.a;
    }

    protected final void onDraw(Shape shape, Canvas canvas, Paint paint) {
        shape.draw(canvas, paint);
        if (this.a.getStrokeWidth() > 0.0f) {
            shape.draw(canvas, this.a);
        }
    }
}
