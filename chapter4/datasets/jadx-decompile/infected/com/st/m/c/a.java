package com.st.m.c;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

public class a {
    public static int a(Class<?> cls) {
        pcv b = b(cls);
        return b != null ? b.b() : 0;
    }

    public static b a(Field field) {
        for (Annotation annotation : field.getAnnotations()) {
            if (annotation.annotationType().equals(b.class)) {
                return (b) annotation;
            }
        }
        return null;
    }

    public static pcv a(Object obj) {
        return b(obj.getClass());
    }

    public static pcv b(Class<?> cls) {
        for (Annotation annotation : cls.getAnnotations()) {
            if (annotation.annotationType().equals(pcv.class)) {
                return (pcv) annotation;
            }
        }
        return null;
    }
}
