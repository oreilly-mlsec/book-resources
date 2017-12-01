package u.aly;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
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
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONObject;

/* compiled from: UClient */
public class by {
    private static final String a = by.class.getName();
    private Map<String, String> b;

    public <T extends ca> T a(bz bzVar, Class<T> cls) {
        JSONObject a;
        String trim = bzVar.c().trim();
        b(trim);
        if (bz.b.equals(trim)) {
            a = a(bzVar.b());
        } else if (bz.a.equals(trim)) {
            a = a(bzVar.c, bzVar.a());
        } else {
            a = null;
        }
        if (a == null) {
            return null;
        }
        try {
            return (ca) cls.getConstructor(new Class[]{JSONObject.class}).newInstance(new Object[]{a});
        } catch (Exception e) {
            bt.b(a, "SecurityException", e);
            return null;
        } catch (Exception e2) {
            bt.b(a, "NoSuchMethodException", e2);
            return null;
        } catch (Exception e22) {
            bt.b(a, "IllegalArgumentException", e22);
            return null;
        } catch (Exception e222) {
            bt.b(a, "InstantiationException", e222);
            return null;
        } catch (Exception e2222) {
            bt.b(a, "IllegalAccessException", e2222);
            return null;
        } catch (Exception e22222) {
            bt.b(a, "InvocationTargetException", e22222);
            return null;
        }
    }

    private JSONObject a(String str, JSONObject jSONObject) {
        Object obj = 1;
        String jSONObject2 = jSONObject.toString();
        int nextInt = new Random().nextInt(1000);
        bt.c(a, new StringBuilder(String.valueOf(nextInt)).append(":\trequest: ").append(str).append(cf.a).append(jSONObject2).toString());
        Object httpPost = new HttpPost(str);
        HttpClient defaultHttpClient = new DefaultHttpClient(b());
        try {
            if (a()) {
                byte[] a = ce.a(jSONObject2, Charset.defaultCharset().name());
                httpPost.addHeader("Content-Encoding", "deflate");
                httpPost.setEntity(new InputStreamEntity(new ByteArrayInputStream(a), (long) a.length));
            } else {
                List arrayList = new ArrayList(1);
                arrayList.add(new BasicNameValuePair("content", jSONObject2));
                httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
            }
            HttpResponse execute = defaultHttpClient.execute(httpPost);
            Header firstHeader = execute.getFirstHeader("Content-Type");
            if (execute.getStatusLine().getStatusCode() != 200) {
                obj = null;
            }
            boolean a2 = cf.a(firstHeader, "application/json");
            if (obj == null || !a2) {
                bt.c(a, new StringBuilder(String.valueOf(nextInt)).append(":\tFailed to send message. StatusCode = ").append(execute.getStatusLine().getStatusCode()).append(cf.a).append(str).toString());
                return null;
            }
            HttpEntity entity = execute.getEntity();
            if (entity == null) {
                return null;
            }
            InputStream inputStream;
            InputStream content = entity.getContent();
            Header firstHeader2 = execute.getFirstHeader("Content-Encoding");
            if (firstHeader2 == null || !firstHeader2.getValue().equalsIgnoreCase("deflate")) {
                inputStream = content;
            } else {
                inputStream = new InflaterInputStream(content);
            }
            jSONObject2 = a(inputStream);
            bt.a(a, new StringBuilder(String.valueOf(nextInt)).append(":\tresponse: ").append(cf.a).append(jSONObject2).toString());
            if (jSONObject2 == null) {
                return null;
            }
            return new JSONObject(jSONObject2);
        } catch (Exception e) {
            bt.c(a, new StringBuilder(String.valueOf(nextInt)).append(":\tClientProtocolException,Failed to send message.").append(str).toString(), e);
            return null;
        } catch (Exception e2) {
            bt.c(a, new StringBuilder(String.valueOf(nextInt)).append(":\tIOException,Failed to send message.").append(str).toString(), e2);
            return null;
        } catch (Exception e22) {
            bt.c(a, new StringBuilder(String.valueOf(nextInt)).append(":\tIOException,Failed to send message.").append(str).toString(), e22);
            return null;
        }
    }

    public boolean a() {
        return false;
    }

    private static String a(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 8192);
        StringBuilder stringBuilder = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            try {
                stringBuilder.append(new StringBuilder(String.valueOf(readLine)).append("\n").toString());
            } catch (Exception e) {
                stringBuilder = a;
                bt.b(stringBuilder, "Caught IOException in convertStreamToString()", e);
                return null;
            } finally {
                try {
                    inputStream.close();
                } catch (Exception e2) {
                    bt.b(a, "Caught IOException in convertStreamToString()", e2);
                    return null;
                }
            }
        }
        return stringBuilder.toString();
    }

    private JSONObject a(String str) {
        int nextInt = new Random().nextInt(1000);
        try {
            String property = System.getProperty("line.separator");
            if (str.length() <= 1) {
                bt.b(a, new StringBuilder(String.valueOf(nextInt)).append(":\tInvalid baseUrl.").toString());
                return null;
            }
            bt.a(a, new StringBuilder(String.valueOf(nextInt)).append(":\tget: ").append(str).toString());
            HttpUriRequest httpGet = new HttpGet(str);
            if (this.b != null && this.b.size() > 0) {
                for (String str2 : this.b.keySet()) {
                    httpGet.addHeader(str2, (String) this.b.get(str2));
                }
            }
            HttpResponse execute = new DefaultHttpClient(b()).execute(httpGet);
            if (execute.getStatusLine().getStatusCode() == 200) {
                HttpEntity entity = execute.getEntity();
                if (entity != null) {
                    InputStream inflaterInputStream;
                    InputStream content = entity.getContent();
                    Header firstHeader = execute.getFirstHeader("Content-Encoding");
                    if (firstHeader == null || !firstHeader.getValue().equalsIgnoreCase("gzip")) {
                        if (firstHeader != null) {
                            if (firstHeader.getValue().equalsIgnoreCase("deflate")) {
                                bt.a(a, new StringBuilder(String.valueOf(nextInt)).append("  Use InflaterInputStream get data....").toString());
                                inflaterInputStream = new InflaterInputStream(content);
                            }
                        }
                        inflaterInputStream = content;
                    } else {
                        bt.a(a, new StringBuilder(String.valueOf(nextInt)).append("  Use GZIPInputStream get data....").toString());
                        inflaterInputStream = new GZIPInputStream(content);
                    }
                    String a = a(inflaterInputStream);
                    bt.a(a, new StringBuilder(String.valueOf(nextInt)).append(":\tresponse: ").append(property).append(a).toString());
                    if (a == null) {
                        return null;
                    }
                    return new JSONObject(a);
                }
            }
            bt.c(a, new StringBuilder(String.valueOf(nextInt)).append(":\tFailed to send message. StatusCode = ").append(execute.getStatusLine().getStatusCode()).append(cf.a).append(str).toString());
            return null;
        } catch (Exception e) {
            bt.c(a, new StringBuilder(String.valueOf(nextInt)).append(":\tClientProtocolException,Failed to send message.").append(str).toString(), e);
            return null;
        } catch (Exception e2) {
            bt.c(a, new StringBuilder(String.valueOf(nextInt)).append(":\tIOException,Failed to send message.").append(str).toString(), e2);
            return null;
        }
    }

    private HttpParams b() {
        HttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, 10000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 20000);
        HttpProtocolParams.setUserAgent(basicHttpParams, System.getProperty("http.agent"));
        return basicHttpParams;
    }

    public by a(Map<String, String> map) {
        this.b = map;
        return this;
    }

    private void b(String str) {
        if (cf.d(str) || (bz.b.equals(str.trim()) ^ bz.a.equals(str.trim())) == 0) {
            throw new RuntimeException("验证请求方式失败[" + str + "]");
        }
    }
}
