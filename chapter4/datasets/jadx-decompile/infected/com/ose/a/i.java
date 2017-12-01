package com.ose.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import java.lang.reflect.Method;

public class i {
    public static SharedPreferences a;

    public static Class a(Context context, Class cls) {
        int i = 0;
        try {
            ActivityInfo[] activityInfoArr = context.getPackageManager().getPackageInfo(context.getApplicationInfo().packageName, dr.class == cls ? 2 : 0).activities;
            if (activityInfoArr == null) {
                return cls;
            }
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
                        i2 = 0;
                        for (i = 0; i < parameterTypes.length; i++) {
                            if (parameterTypes[i] == clsArr[i]) {
                                i2++;
                            }
                        }
                        if (i2 == parameterTypes.length) {
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
                        i2 = 0;
                        for (i = 0; i < parameterTypes.length; i++) {
                            if (parameterTypes[i] == clsArr[i]) {
                                i2++;
                            }
                        }
                        if (i2 == parameterTypes.length) {
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
        return new NoSuchMethodException("没有找到Method:" + str);
    }

    public static Method a(Object obj, String str) {
        NoSuchMethodException noSuchMethodException;
        Method method = null;
        try {
            Method declaredMethod;
            Class cls = obj.getClass();
            Class[] a = a(cls, str);
            try {
                declaredMethod = cls.getDeclaredMethod(str, a);
            } catch (Exception e) {
                e.printStackTrace();
                declaredMethod = null;
            }
            if (declaredMethod != null) {
                return declaredMethod;
            }
            try {
                return cls.getMethod(str, a);
            } catch (NoSuchMethodException e2) {
                NoSuchMethodException noSuchMethodException2 = e2;
                method = declaredMethod;
                noSuchMethodException = noSuchMethodException2;
                noSuchMethodException.printStackTrace();
                return method;
            }
        } catch (NoSuchMethodException e3) {
            noSuchMethodException = e3;
            noSuchMethodException.printStackTrace();
            return method;
        }
    }

    public static void a(Context context) {
        new j(context).start();
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
            a = context.getSharedPreferences(h.b, 0);
        }
        return a;
    }
}
