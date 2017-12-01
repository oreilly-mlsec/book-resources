package com.third.mx.utils;

import java.net.UnknownHostException;
import java.util.ArrayList;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;
import u.aly.bs;

public class d {
    public static String a(String str, ArrayList arrayList) {
        String str2 = bs.b;
        try {
            HttpUriRequest httpPost = new HttpPost(str);
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
            HttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, 30000);
            HttpConnectionParams.setSoTimeout(basicHttpParams, 30000);
            HttpResponse execute = new DefaultHttpClient(basicHttpParams).execute(httpPost);
            if (execute.getStatusLine().getStatusCode() == 200) {
                str2 = EntityUtils.toString(execute.getEntity());
            }
        } catch (UnknownHostException e) {
            throw e;
        } catch (Exception e2) {
        }
        if (a.f != a.c) {
            b.a(str, str2, arrayList);
        }
        g.a("url=====" + str + "result========" + str2);
        return str2;
    }
}
