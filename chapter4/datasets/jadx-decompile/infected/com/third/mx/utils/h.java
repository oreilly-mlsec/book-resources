package com.third.mx.utils;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.third.mx.update.a;
import java.util.ArrayList;
import org.apache.http.message.BasicNameValuePair;

public class h {
    private Context a;

    public h(Context context) {
        this.a = context;
    }

    public ArrayList a() {
        ArrayList arrayList = new ArrayList();
        i iVar = new i(this.a);
        Object e = l.e(this.a);
        if (TextUtils.isEmpty(e)) {
            arrayList.add(new BasicNameValuePair("uuid", i.f(this.a)));
        } else {
            arrayList.add(new BasicNameValuePair("uuid", e));
        }
        arrayList.add(new BasicNameValuePair("mid", i.d(this.a)));
        arrayList.add(new BasicNameValuePair("imid", i.f(this.a)));
        arrayList.add(new BasicNameValuePair("language", i.g(this.a)));
        arrayList.add(new BasicNameValuePair("appkey", i.h(this.a)));
        arrayList.add(new BasicNameValuePair("sv", l.c(this.a)));
        arrayList.add(new BasicNameValuePair("kv", l.d(this.a)));
        arrayList.add(new BasicNameValuePair("pname", iVar.a(this.a)));
        arrayList.add(new BasicNameValuePair("appname", iVar.b(this.a)));
        arrayList.add(new BasicNameValuePair("model", Build.MODEL));
        arrayList.add(new BasicNameValuePair("networkname", i.j(this.a)));
        arrayList.add(new BasicNameValuePair("operatorsname", i.c(this.a)));
        arrayList.add(new BasicNameValuePair("networktype", i.j(this.a)));
        arrayList.add(new BasicNameValuePair("api", new StringBuilder(String.valueOf(i.a())).toString()));
        if (c.a(this.a)) {
            arrayList.add(new BasicNameValuePair("gp", "1"));
        } else {
            arrayList.add(new BasicNameValuePair("gp", "0"));
        }
        arrayList.add(new BasicNameValuePair("lpadkind", c.a));
        return arrayList;
    }

    public String b() {
        return a.c() ? "http://192.168.10.169:9392/uthrkup.do" : "http://hgupdate.hmapi.com:7017/uthrkup.do";
    }

    public String c() {
        return a.c() ? "http://192.168.10.169:9392/uthrkup.do" : "http://hgupdate.eoapi.com:7017/uthrkup.do";
    }
}
