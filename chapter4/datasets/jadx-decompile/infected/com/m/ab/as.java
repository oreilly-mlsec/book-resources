package com.m.ab;

import java.util.HashMap;
import java.util.Map;

public class as {
    private static Map<Integer, Class> aa = new HashMap();

    static {
        aa.put(Integer.valueOf(100001), al.class);
        aa.put(Integer.valueOf(200001), am.class);
        aa.put(Integer.valueOf(101001), ah.class);
        aa.put(Integer.valueOf(201001), ai.class);
    }

    public static Class aa(int i) {
        return aa.containsKey(Integer.valueOf(i)) ? (Class) aa.get(Integer.valueOf(i)) : null;
    }

    public static boolean aa(Class cls) {
        av ab = ab.ab(cls);
        if (ab == null || aa.containsKey(Integer.valueOf(ab.ab()))) {
            return false;
        }
        aa.put(Integer.valueOf(ab.ab()), cls);
        return true;
    }
}
