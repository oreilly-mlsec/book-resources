package com.m.ab;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

public class ab {
    public static int aa(Class<?> cls) {
        av ab = ab(cls);
        return ab != null ? ab.ab() : 0;
    }

    public static ac aa(Field field) {
        for (Annotation annotation : field.getAnnotations()) {
            if (annotation.annotationType().equals(ac.class)) {
                return (ac) annotation;
            }
        }
        return null;
    }

    public static av aa(Object obj) {
        return ab(obj.getClass());
    }

    public static av ab(Class<?> cls) {
        for (Annotation annotation : cls.getAnnotations()) {
            if (annotation.annotationType().equals(av.class)) {
                return (av) annotation;
            }
        }
        return null;
    }
}
