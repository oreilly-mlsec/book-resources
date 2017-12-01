package com.umeng.analytics.social;

import android.text.TextUtils;
import com.umeng.analytics.a;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import java.util.zip.InflaterInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* compiled from: UMNetwork */
public abstract class c {
    protected static String a(String str) {
        int nextInt = new Random().nextInt(1000);
        try {
            String property = System.getProperty("line.separator");
            if (str.length() <= 1) {
                b.b(a.e, nextInt + ":\tInvalid baseUrl.");
                return null;
            }
            HttpUriRequest httpGet = new HttpGet(str);
            b.a(a.e, nextInt + ": GET_URL: " + str);
            HttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, 10000);
            HttpConnectionParams.setSoTimeout(basicHttpParams, 20000);
            HttpResponse execute = new DefaultHttpClient(basicHttpParams).execute(httpGet);
            if (execute.getStatusLine().getStatusCode() == 200) {
                HttpEntity entity = execute.getEntity();
                if (entity == null) {
                    return null;
                }
                InputStream gZIPInputStream;
                InputStream content = entity.getContent();
                Header firstHeader = execute.getFirstHeader("Content-Encoding");
                if (firstHeader != null && firstHeader.getValue().equalsIgnoreCase("gzip")) {
                    b.a(a.e, nextInt + "  Use GZIPInputStream get data....");
                    gZIPInputStream = new GZIPInputStream(content);
                } else if (firstHeader == null || !firstHeader.getValue().equalsIgnoreCase("deflate")) {
                    gZIPInputStream = content;
                } else {
                    b.a(a.e, nextInt + "  Use InflaterInputStream get data....");
                    gZIPInputStream = new InflaterInputStream(content);
                }
                String a = a(gZIPInputStream);
                b.a(a.e, nextInt + ":\tresponse: " + property + a);
                if (a != null) {
                    return a;
                }
                return null;
            }
            b.a(a.e, nextInt + ":\tFailed to get message." + str);
            return null;
        } catch (Exception e) {
            b.c(a.e, nextInt + ":\tClientProtocolException,Failed to send message." + str, e);
            return null;
        } catch (Exception e2) {
            b.c(a.e, nextInt + ":\tIOException,Failed to send message." + str, e2);
            return null;
        }
    }

    private static String a(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 8192);
        StringBuilder stringBuilder = new StringBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                stringBuilder.append(readLine + "\n");
            } catch (Exception e) {
                stringBuilder = a.e;
                b.b(stringBuilder, "Caught IOException in convertStreamToString()", e);
                return null;
            } finally {
                try {
                    inputStream.close();
                } catch (Exception e2) {
                    b.b(a.e, "Caught IOException in convertStreamToString()", e2);
                    return null;
                }
            }
        }
        return stringBuilder.toString();
    }

    protected static String a(String str, String str2) {
        int nextInt = new Random().nextInt(1000);
        String property = System.getProperty("line.separator");
        HttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, 10000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 20000);
        HttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
        b.a(a.e, nextInt + ": POST_URL: " + str);
        try {
            HttpUriRequest httpPost = new HttpPost(str);
            if (!TextUtils.isEmpty(str2)) {
                b.a(a.e, nextInt + ": POST_BODY: " + str2);
                List arrayList = new ArrayList(1);
                arrayList.add(new BasicNameValuePair("data", str2));
                httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
            }
            HttpResponse execute = defaultHttpClient.execute(httpPost);
            if (execute.getStatusLine().getStatusCode() == 200) {
                HttpEntity entity = execute.getEntity();
                if (entity == null) {
                    return null;
                }
                InputStream inputStream;
                InputStream content = entity.getContent();
                Header firstHeader = execute.getFirstHeader("Content-Encoding");
                if (firstHeader == null || !firstHeader.getValue().equalsIgnoreCase("deflate")) {
                    inputStream = content;
                } else {
                    inputStream = new InflaterInputStream(content);
                }
                String a = a(inputStream);
                b.a(a.e, nextInt + ":\tresponse: " + property + a);
                if (a == null) {
                    return null;
                }
                return a;
            }
            b.c(a.e, nextInt + ":\tFailed to send message." + str);
            return null;
        } catch (Exception e) {
            b.c(a.e, nextInt + ":\tClientProtocolException,Failed to send message." + str, e);
            return null;
        } catch (Exception e2) {
            b.c(a.e, nextInt + ":\tIOException,Failed to send message." + str, e2);
            return null;
        }
    }
}
