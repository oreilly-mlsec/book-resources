package com.appbrain.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import cmn.a;
import cmn.h;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;

final class ad implements Runnable {
    private final /* synthetic */ SharedPreferences a;
    private final /* synthetic */ Context b;
    private final /* synthetic */ String c;
    private final /* synthetic */ long d;

    ad(SharedPreferences sharedPreferences, Context context, String str, long j) {
        this.a = sharedPreferences;
        this.b = context;
        this.c = str;
        this.d = j;
    }

    public final void run() {
        InputStream openFileInput;
        HttpResponse execute;
        boolean z = true;
        Editor edit = this.a.edit();
        edit.remove(ac.a);
        a.a().a(edit);
        boolean z2 = Integer.parseInt(v.a().g().get("tver", "1")) > this.a.getInt(ac.c, 0) ? z : false;
        try {
            openFileInput = this.b.openFileInput(ac.b);
        } catch (FileNotFoundException e) {
            z2 = z;
            openFileInput = null;
        }
        if (z2) {
            try {
                execute = h.a().execute(new HttpGet(this.c + "/promoted.data?v=11"));
                HttpEntity entity = execute.getEntity();
                OutputStream openFileOutput = this.b.openFileOutput(ac.b, 0);
                entity.writeTo(openFileOutput);
                openFileOutput.close();
                h.a(execute);
                openFileInput = this.b.openFileInput(ac.b);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        try {
            List arrayList = new ArrayList();
            for (PackageInfo packageInfo : this.b.getPackageManager().getInstalledPackages(0)) {
                arrayList.add(packageInfo.packageName);
            }
            ae a = ae.a(openFileInput);
            String a2 = ac.a(arrayList, a);
            Editor edit2 = this.a.edit();
            edit2.putInt(ac.c, a.a());
            edit2.putString(ac.a, a2);
            edit2.putLong(ac.d, this.d);
            a.a().a(edit2);
            openFileInput.close();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        ac.f.set(false);
    }
}
