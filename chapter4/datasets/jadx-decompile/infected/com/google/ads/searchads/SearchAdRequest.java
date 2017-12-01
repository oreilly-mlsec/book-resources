package com.google.ads.searchads;

import android.content.Context;
import android.graphics.Color;
import android.util.Pair;
import com.google.ads.AdRequest;
import java.util.Map;

public class SearchAdRequest extends AdRequest {
    private String a;
    private int b;
    private Pair<Integer, Integer> c;
    private int d;
    private int e;
    private int f;
    private String g;
    private int h;
    private int i;
    private BorderType j;
    private int k;

    public enum BorderType {
        NONE("none"),
        DASHED("dashed"),
        DOTTED("dotted"),
        SOLID("solid");
        
        private String a;

        private BorderType(String param) {
            this.a = param;
        }

        public final String toString() {
            return this.a;
        }
    }

    public void setQuery(String query) {
        this.a = query;
    }

    public void setBackgroundColor(int backgroundColor) {
        if (Color.alpha(backgroundColor) == 255) {
            this.b = backgroundColor;
            this.c = null;
        }
    }

    public void setBackgroundGradient(int from, int to) {
        if (Color.alpha(from) == 255 && Color.alpha(to) == 255) {
            this.b = Color.argb(0, 0, 0, 0);
            this.c = Pair.create(new Integer(from), new Integer(to));
        }
    }

    public void setHeaderTextColor(int headerTextColor) {
        this.d = headerTextColor;
    }

    public void setDescriptionTextColor(int descriptionTextColor) {
        this.e = descriptionTextColor;
    }

    public void setAnchorTextColor(int anchorTextColor) {
        this.f = anchorTextColor;
    }

    public void setFontFace(String fontFace) {
        this.g = fontFace;
    }

    public void setHeaderTextSize(int headerTextSize) {
        this.h = headerTextSize;
    }

    public void setBorderColor(int borderColor) {
        this.i = borderColor;
    }

    public void setBorderType(BorderType borderType) {
        this.j = borderType;
    }

    public void setBorderThickness(int borderThickness) {
        this.k = borderThickness;
    }

    public Map<String, Object> getRequestMap(Context context) {
        if (this.a != null) {
            addExtra("q", this.a);
        }
        if (Color.alpha(this.b) != 0) {
            addExtra("bgcolor", a(this.b));
        }
        if (!(this.c == null || this.c.first == null || this.c.second == null)) {
            addExtra("gradientfrom", a(((Integer) this.c.first).intValue()));
            addExtra("gradientto", a(((Integer) this.c.second).intValue()));
        }
        if (Color.alpha(this.d) != 0) {
            addExtra("hcolor", a(this.d));
        }
        if (Color.alpha(this.e) != 0) {
            addExtra("dcolor", a(this.e));
        }
        if (Color.alpha(this.f) != 0) {
            addExtra("acolor", a(this.f));
        }
        if (this.g != null) {
            addExtra("font", this.g);
        }
        addExtra("headersize", Integer.toString(this.h));
        if (Color.alpha(this.i) != 0) {
            addExtra("bcolor", a(this.i));
        }
        if (this.j != null) {
            addExtra("btype", this.j.toString());
        }
        addExtra("bthick", Integer.toString(this.k));
        return super.getRequestMap(context);
    }

    private static String a(int i) {
        return String.format("#%06x", new Object[]{Integer.valueOf(16777215 & i)});
    }
}
