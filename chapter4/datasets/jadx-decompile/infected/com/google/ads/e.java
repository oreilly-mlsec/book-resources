package com.google.ads;

import android.os.Bundle;
import java.io.Serializable;
import java.util.HashMap;

public final class e {
    private String a;
    private HashMap<String, String> b;

    public e(Bundle bundle) {
        this.a = bundle.getString("action");
        Serializable serializable = bundle.getSerializable("params");
        this.b = serializable instanceof HashMap ? (HashMap) serializable : null;
    }

    public e(String str) {
        this.a = str;
    }

    public e(String str, HashMap<String, String> hashMap) {
        this(str);
        this.b = hashMap;
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("action", this.a);
        bundle.putSerializable("params", this.b);
        return bundle;
    }

    public final String b() {
        return this.a;
    }

    public final HashMap<String, String> c() {
        return this.b;
    }
}
