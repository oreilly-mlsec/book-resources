package cmn;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public final class h {
    private static Map a = new i();
    private static DefaultHttpClient d;
    private final String b;
    private final String c;

    public h(String str, String str2) {
        this.b = str;
        this.c = str2;
    }

    public static synchronized DefaultHttpClient a() {
        DefaultHttpClient defaultHttpClient;
        synchronized (h.class) {
            if (d == null) {
                String str = "Apache-HttpClient/UNAVAILABLE (java 1.4; SCM)";
                HttpParams basicHttpParams = new BasicHttpParams();
                ConnManagerParams.setMaxTotalConnections(basicHttpParams, 10);
                HttpConnectionParams.setConnectionTimeout(basicHttpParams, 30000);
                HttpConnectionParams.setStaleCheckingEnabled(basicHttpParams, false);
                HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
                HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
                HttpProtocolParams.setUserAgent(basicHttpParams, str);
                HttpClientParams.setRedirecting(basicHttpParams, true);
                SchemeRegistry schemeRegistry = new SchemeRegistry();
                schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
                schemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
                DefaultHttpClient defaultHttpClient2 = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
                defaultHttpClient2.getParams().setParameter("http.socket.timeout", new Integer(30000));
                defaultHttpClient2.getParams().setParameter("http.connection.timeout", new Integer(30000));
                defaultHttpClient2.getParams().setParameter("http.useragent", str);
                defaultHttpClient2.getParams().setParameter("http.protocol.expect-continue", Boolean.valueOf(false));
                d = defaultHttpClient2;
            }
            defaultHttpClient = d;
        }
        return defaultHttpClient;
    }

    public static void a(HttpResponse httpResponse) {
        if (httpResponse.getEntity() != null) {
            httpResponse.getEntity().consumeContent();
        }
    }

    public final byte[] a(String str, byte[] bArr) {
        DefaultHttpClient a = a();
        int i = 0;
        IOException iOException = null;
        while (i < 3) {
            Object httpPost = new HttpPost(this.b + this.c + str);
            if (bArr != null) {
                httpPost.setHeader("Content-Type", "application/octet-stream");
                OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                gZIPOutputStream.write(bArr);
                gZIPOutputStream.close();
                httpPost.setEntity(new ByteArrayEntity(byteArrayOutputStream.toByteArray()));
            }
            HttpResponse execute;
            try {
                execute = a.execute(httpPost);
                if (execute.getStatusLine().getStatusCode() == 200) {
                    GZIPInputStream gZIPInputStream = new GZIPInputStream(execute.getEntity().getContent());
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    byte[] bArr2 = new byte[128];
                    while (true) {
                        int read = gZIPInputStream.read(bArr2);
                        if (read != -1) {
                            byteArrayOutputStream2.write(bArr2, 0, read);
                        } else {
                            gZIPInputStream.close();
                            byte[] toByteArray = byteArrayOutputStream2.toByteArray();
                            a(execute);
                            return toByteArray;
                        }
                    }
                } else if (execute.getStatusLine().getStatusCode() == 204) {
                    a(execute);
                    return null;
                } else if (execute.getStatusLine().getStatusCode() < 500) {
                    iOException = new IOException("bad response " + execute.getStatusLine().getStatusCode());
                    a(execute);
                    break;
                } else {
                    execute.getEntity().writeTo(new ByteArrayOutputStream());
                    throw new IOException("bad response " + execute.getStatusLine().getStatusCode());
                }
            } catch (IOException e) {
                iOException = e;
                httpPost.abort();
                i++;
            } catch (Throwable th) {
                a(execute);
            }
        }
        throw iOException;
    }
}
