package u.aly;

import java.lang.reflect.InvocationTargetException;

/* compiled from: TEnumHelper */
public class co {
    public static cn a(Class<? extends cn> cls, int i) {
        try {
            return (cn) cls.getMethod("findByValue", new Class[]{Integer.TYPE}).invoke(null, new Object[]{Integer.valueOf(i)});
        } catch (NoSuchMethodException e) {
            return null;
        } catch (IllegalAccessException e2) {
            return null;
        } catch (InvocationTargetException e3) {
            return null;
        }
    }
}
