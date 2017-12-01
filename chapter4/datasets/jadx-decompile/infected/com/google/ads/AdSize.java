package com.google.ads;

public class AdSize {
    public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");
    public static final AdSize IAB_BANNER = new AdSize(468, 60, "468x60_as");
    public static final AdSize IAB_LEADERBOARD = new AdSize(728, 90, "728x90_as");
    public static final AdSize IAB_MRECT = new AdSize(300, 250, "300x250_as");
    private int a;
    private int b;
    private String c;

    public AdSize(int width, int height) {
        this(width, height, null);
    }

    private AdSize(int width, int height, String format) {
        this.a = width;
        this.b = height;
        this.c = format;
    }

    public int getWidth() {
        return this.a;
    }

    public int getHeight() {
        return this.b;
    }

    public String toString() {
        return this.c;
    }
}
