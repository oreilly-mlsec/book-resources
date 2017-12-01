package com.m.u;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.view.KeyEvent;
import com.m.ac.aa;
import java.lang.reflect.Method;
import java.util.HashMap;

public class as {
    public static AssetManager aa(String str) {
        try {
            AssetManager assetManager = (AssetManager) AssetManager.class.newInstance();
            assetManager.getClass().getMethod(ae.aa(ac.bu), new Class[]{String.class}).invoke(assetManager, new Object[]{str});
            return assetManager;
        } catch (Throwable e) {
            ag.aa(e);
            return null;
        }
    }

    public static HashMap<String, Method> aa(Class<?> cls) {
        Object declaredMethod;
        Throwable e;
        HashMap<String, Method> hashMap = new HashMap();
        for (String str : new String[]{ae.aa(ac.ca), ae.aa(ac.bz), ae.aa(ac.cb), ae.aa(ac.cc), ae.aa(ac.cd), ae.aa(ac.ce)}) {
            try {
                declaredMethod = cls.getDeclaredMethod(str, new Class[0]);
                try {
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException e2) {
                    e = e2;
                }
            } catch (Throwable e3) {
                e = e3;
                declaredMethod = null;
                ag.aa(e);
                hashMap.put(str, declaredMethod);
            }
            hashMap.put(str, declaredMethod);
        }
        try {
            declaredMethod = cls.getDeclaredMethod(ae.aa(ac.bw), new Class[]{Bundle.class});
            try {
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e4) {
                e = e4;
                ag.aa(e);
                hashMap.put(ae.aa(ac.bw), declaredMethod);
                declaredMethod = cls.getDeclaredMethod(ae.aa(ac.bx), new Class[]{Integer.TYPE, KeyEvent.class});
                declaredMethod.setAccessible(true);
                hashMap.put(ae.aa(ac.bx), declaredMethod);
                return hashMap;
            }
        } catch (Throwable e32) {
            e = e32;
            declaredMethod = null;
            ag.aa(e);
            hashMap.put(ae.aa(ac.bw), declaredMethod);
            declaredMethod = cls.getDeclaredMethod(ae.aa(ac.bx), new Class[]{Integer.TYPE, KeyEvent.class});
            declaredMethod.setAccessible(true);
            hashMap.put(ae.aa(ac.bx), declaredMethod);
            return hashMap;
        }
        hashMap.put(ae.aa(ac.bw), declaredMethod);
        try {
            declaredMethod = cls.getDeclaredMethod(ae.aa(ac.bx), new Class[]{Integer.TYPE, KeyEvent.class});
            try {
                declaredMethod.setAccessible(true);
            } catch (Exception e5) {
                e = e5;
                ag.aa(e);
                hashMap.put(ae.aa(ac.bx), declaredMethod);
                return hashMap;
            }
        } catch (Throwable e322) {
            e = e322;
            declaredMethod = null;
            ag.aa(e);
            hashMap.put(ae.aa(ac.bx), declaredMethod);
            return hashMap;
        }
        hashMap.put(ae.aa(ac.bx), declaredMethod);
        return hashMap;
    }

    public static void aa(BroadcastReceiver broadcastReceiver, Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(broadcastReceiver, intentFilter);
    }

    public static void aa(HashMap<String, Method> hashMap, Activity activity, String str) {
        Method method = (Method) hashMap.get(str);
        if (method != null) {
            try {
                method.invoke(activity, new Object[0]);
            } catch (Throwable e) {
                ag.aa(e);
            }
        }
    }

    public static void aa(HashMap<String, Method> hashMap, Activity activity, String str, int i, int i2, Intent intent) {
        Method method = (Method) hashMap.get(str);
        if (method != null) {
            try {
                method.invoke(activity, new Object[]{Integer.valueOf(i), Integer.valueOf(i2), intent});
            } catch (Throwable e) {
                ag.aa(e);
            }
        }
    }

    public static boolean aa(HashMap<String, Method> hashMap, Activity activity, String str, int i, KeyEvent keyEvent) {
        Method method = (Method) hashMap.get(str);
        if (method != null) {
            try {
                return ((Boolean) method.invoke(activity, new Object[]{Integer.valueOf(i), keyEvent})).booleanValue();
            } catch (Throwable e) {
                ag.aa(e);
            }
        }
        return false;
    }

    public static void ab(BroadcastReceiver broadcastReceiver, Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(aa.bx);
        intentFilter.addAction(aa.by);
        intentFilter.addDataScheme(aa.cl);
        context.registerReceiver(broadcastReceiver, intentFilter);
    }

    public static void ac(BroadcastReceiver broadcastReceiver, Context context) {
        context.unregisterReceiver(broadcastReceiver);
    }
}
