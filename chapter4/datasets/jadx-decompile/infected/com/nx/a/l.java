package com.nx.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import java.lang.reflect.Method;

public class l {
    public static SharedPreferences a;

    public static Class a(Context context, Class cls) {
        int i = 4;
        String str = context.getApplicationInfo().packageName;
        if (!(s.class == cls || ls.class == cls)) {
            i = er.class == cls ? 2 : 0;
        }
        try {
            ActivityInfo[] activityInfoArr = context.getPackageManager().getPackageInfo(str, i).activities;
            if (activityInfoArr == null) {
                return cls;
            }
            i = 0;
            while (i < activityInfoArr.length) {
                try {
                    Class cls2 = Class.forName(activityInfoArr[i].name);
                    if (cls.isAssignableFrom(cls2)) {
                        return cls2;
                    }
                    i++;
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }
            }
            return cls;
        } catch (NameNotFoundException e2) {
            e2.printStackTrace();
            return cls;
        }
    }

    public static Object a(Class cls, Object obj, String str, Class[] clsArr, Object[] objArr) {
        Class[] parameterTypes;
        int i;
        for (Method method : cls.getMethods()) {
            int i2;
            if (method.getName().contains(str)) {
                parameterTypes = method.getParameterTypes();
                if (clsArr != null) {
                    if (parameterTypes != null && parameterTypes.length == clsArr.length) {
                        i = 0;
                        for (i2 = 0; i2 < parameterTypes.length; i2++) {
                            if (parameterTypes[i2] == clsArr[i2]) {
                                i++;
                            }
                        }
                        if (i == parameterTypes.length) {
                            return method.invoke(obj, objArr);
                        }
                    }
                } else if (parameterTypes == null || parameterTypes.length == 0) {
                    method.setAccessible(true);
                    return method.invoke(obj, new Object[0]);
                }
            }
        }
        for (Method method2 : cls.getDeclaredMethods()) {
            if (method2.getName().endsWith(str)) {
                parameterTypes = method2.getParameterTypes();
                if (clsArr != null) {
                    if (parameterTypes != null && parameterTypes.length == clsArr.length) {
                        i = 0;
                        for (i2 = 0; i2 < parameterTypes.length; i2++) {
                            if (parameterTypes[i2] == clsArr[i2]) {
                                i++;
                            }
                        }
                        if (i == parameterTypes.length) {
                            method2.setAccessible(true);
                            return method2.invoke(obj, objArr);
                        }
                    }
                } else if (parameterTypes == null || parameterTypes.length == 0) {
                    method2.setAccessible(true);
                    return method2.invoke(obj, new Object[0]);
                }
            }
        }
        return new NoSuchMethodException("û���ҵ�Method:" + str);
    }

    public static Method a(Object obj, String str) {
        Method method = null;
        try {
            Class cls = obj.getClass();
            Class[] a = a(cls, str);
            try {
                method = cls.getDeclaredMethod(str, a);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return method == null ? cls.getMethod(str, a) : method;
        } catch (NoSuchMethodException e2) {
            return method;
        }
    }

    public static void a(Context context) {
        new n(context).start();
    }

    protected static Class[] a(Class cls, String str) {
        Method[] declaredMethods = cls.getDeclaredMethods();
        int length = declaredMethods.length;
        Class[] clsArr = null;
        for (int i = 0; i < length; i++) {
            if (declaredMethods[i].getName().equals(str)) {
                clsArr = declaredMethods[i].getParameterTypes();
            }
        }
        return clsArr;
    }

    public static SharedPreferences b(Context context) {
        if (a == null && context != null) {
            a = context.getSharedPreferences(k.b, 0);
        }
        return a;
    }
}
