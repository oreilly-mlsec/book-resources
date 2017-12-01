package com.st.m.c;

import java.util.HashMap;
import java.util.Map;

public class mf {
    private static Map<Integer, Class> a = new HashMap();

    static {
        a.put(Integer.valueOf(104001), da.class);
        a.put(Integer.valueOf(204001), ef.class);
        a.put(Integer.valueOf(104002), f.class);
        a.put(Integer.valueOf(204002), gt.class);
    }

    public static Class a(int i) {
        return a.containsKey(Integer.valueOf(i)) ? (Class) a.get(Integer.valueOf(i)) : null;
    }
}
