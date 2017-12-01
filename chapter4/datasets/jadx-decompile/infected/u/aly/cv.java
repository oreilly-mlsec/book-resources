package u.aly;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* compiled from: FieldMetaData */
public class cv implements Serializable {
    private static Map<Class<? extends cj>, Map<? extends cq, cv>> d = new HashMap();
    public final String a;
    public final byte b;
    public final cw c;

    public cv(String str, byte b, cw cwVar) {
        this.a = str;
        this.b = b;
        this.c = cwVar;
    }

    public static void a(Class<? extends cj> cls, Map<? extends cq, cv> map) {
        d.put(cls, map);
    }

    public static Map<? extends cq, cv> a(Class<? extends cj> cls) {
        if (!d.containsKey(cls)) {
            try {
                cls.newInstance();
            } catch (InstantiationException e) {
                throw new RuntimeException("InstantiationException for TBase class: " + cls.getName() + ", message: " + e.getMessage());
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("IllegalAccessException for TBase class: " + cls.getName() + ", message: " + e2.getMessage());
            }
        }
        return (Map) d.get(cls);
    }
}
