package com.appbrain;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import com.appbrain.a.k;
import java.util.ArrayList;
import java.util.List;

public class ReferrerReceiver extends BroadcastReceiver {
    public static String retrieve(Context context) {
        return k.b(context);
    }

    public void onReceive(Context context, Intent intent) {
        String stringExtra;
        Object newInstance;
        try {
            stringExtra = intent.getStringExtra("referrer");
            List<String> arrayList;
            ActivityInfo receiverInfo;
            if (stringExtra == null) {
                arrayList = new ArrayList();
                receiverInfo = context.getPackageManager().getReceiverInfo(new ComponentName(context, ReferrerReceiver.class), 128);
                if (receiverInfo != null && receiverInfo.metaData != null && receiverInfo.metaData.keySet() != null && receiverInfo.metaData.keySet().size() != 0) {
                    for (String stringExtra2 : receiverInfo.metaData.keySet()) {
                        if (stringExtra2.startsWith("forward.")) {
                            arrayList.add(receiverInfo.metaData.getString(stringExtra2));
                        }
                    }
                    for (String stringExtra22 : arrayList) {
                        try {
                            newInstance = Class.forName(stringExtra22).newInstance();
                            if (newInstance instanceof BroadcastReceiver) {
                                try {
                                    ((BroadcastReceiver) newInstance).onReceive(context, intent);
                                } catch (Throwable th) {
                                }
                            }
                        } catch (ClassNotFoundException e) {
                        } catch (InstantiationException e2) {
                        } catch (IllegalAccessException e3) {
                        }
                    }
                    return;
                }
                return;
            }
            k.b(context, stringExtra22);
            arrayList = new ArrayList();
            try {
                receiverInfo = context.getPackageManager().getReceiverInfo(new ComponentName(context, ReferrerReceiver.class), 128);
                if (receiverInfo != null && receiverInfo.metaData != null && receiverInfo.metaData.keySet() != null && receiverInfo.metaData.keySet().size() != 0) {
                    for (String stringExtra222 : receiverInfo.metaData.keySet()) {
                        if (stringExtra222.startsWith("forward.")) {
                            arrayList.add(receiverInfo.metaData.getString(stringExtra222));
                        }
                    }
                    for (String stringExtra2222 : arrayList) {
                        try {
                            newInstance = Class.forName(stringExtra2222).newInstance();
                            if (newInstance instanceof BroadcastReceiver) {
                                try {
                                    ((BroadcastReceiver) newInstance).onReceive(context, intent);
                                } catch (Throwable th2) {
                                }
                            }
                        } catch (ClassNotFoundException e4) {
                        } catch (InstantiationException e5) {
                        } catch (IllegalAccessException e6) {
                        }
                    }
                }
            } catch (NameNotFoundException e7) {
                e7.printStackTrace();
            }
        } catch (NameNotFoundException e72) {
            e72.printStackTrace();
        } catch (Throwable th3) {
            th3.printStackTrace();
        }
    }
}
