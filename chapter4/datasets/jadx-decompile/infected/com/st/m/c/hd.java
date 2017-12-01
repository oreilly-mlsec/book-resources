package com.st.m.c;

import com.st.m.da.b;
import com.st.m.u.ef;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.UUID;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardOldestPolicy;
import java.util.concurrent.TimeUnit;

public class hd {
    private static hd c;
    ThreadPoolExecutor a = null;
    private l b = new l();

    class a implements Runnable {
        String a;
        final /* synthetic */ hd b;
        private if c;
        private o da;

        public a(hd hdVar, n nVar, if ifVar, o oVar) {
            this.b = hdVar;
            this.a = nVar.a();
            this.c = ifVar;
            this.da = oVar;
        }

        protected boolean a(if ifVar, String str) {
            try {
                ifVar.c++;
                if (a.a(ifVar.b) == null || ifVar.c >= 3) {
                    ef.a(b.pcv, new StringBuilder(String.valueOf(809)).append("    ").append(ifVar.b.getClass()).append("    ").append(ifVar.c).append("    ").append(str).toString());
                    return false;
                }
                ef.a(b.pcv, new StringBuilder(String.valueOf(808)).append("    ").append(ifVar.b.getClass()).append("    ").append(ifVar.c).append("    ").append(str).toString());
                return true;
            } catch (Exception e) {
                return false;
            }
        }

        public void run() {
            do {
                try {
                    byte[] bArr = new byte[5120];
                    byte[] a = this.b.b.a(this.c);
                    ef.b("sendsize=" + a.length);
                    ef.da("yys", new String(a));
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.a).openConnection();
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setConnectTimeout(25000);
                    httpURLConnection.setReadTimeout(30000);
                    httpURLConnection.setUseCaches(false);
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setInstanceFollowRedirects(true);
                    httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                    httpURLConnection.connect();
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    outputStream.write(a);
                    outputStream.flush();
                    outputStream.close();
                    ef.b(b.pcv, new StringBuilder(String.valueOf(801)).append("    ").append(this.c.b.getClass()).append("    ").append(this.a).toString());
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 200 || responseCode == 206) {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, read);
                        }
                        bArr = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        inputStream.close();
                        httpURLConnection.disconnect();
                        if ifVar = new if();
                        ifVar.a = this.b.b.a(bArr, 0);
                        if (bArr.length < ifVar.a.b) {
                            throw new Exception(new StringBuilder(String.valueOf(803)).append("    ").append(bArr.length).append("    ").append(ifVar.a.b).toString());
                        }
                        ifVar.b = this.b.b.a(bArr, 28, bArr.length - 28, ifVar.a.gt);
                        ef.b(b.pcv, new StringBuilder(String.valueOf(804)).append("    ").append(ifVar.b.getClass()).toString());
                        if (this.da != null) {
                            this.da.a(Boolean.valueOf(true), ifVar);
                            return;
                        }
                        return;
                    }
                    throw new Exception(new StringBuilder(String.valueOf(802)).append("    ").append(responseCode).toString());
                } catch (Exception e) {
                    e.printStackTrace();
                    ef.da(b.pcv, 4040404);
                    ef.a(b.pcv, new StringBuilder(String.valueOf(805)).toString());
                    if (!a(this.c, e.getClass().getSimpleName())) {
                        if (this.da == null) {
                            ef.a(b.pcv, new StringBuilder(String.valueOf(806)).toString());
                        } else {
                            this.da.a(Boolean.valueOf(false), this.c);
                        }
                        ef.a(b.pcv, new StringBuilder(String.valueOf(807)).toString());
                    }
                }
            } while (a(this.c, e.getClass().getSimpleName()));
            if (this.da == null) {
                this.da.a(Boolean.valueOf(false), this.c);
            } else {
                ef.a(b.pcv, new StringBuilder(String.valueOf(806)).toString());
            }
            ef.a(b.pcv, new StringBuilder(String.valueOf(807)).toString());
        }
    }

    private hd() {
        b();
    }

    public static synchronized hd a() {
        hd hdVar;
        synchronized (hd.class) {
            if (c == null) {
                c = new hd();
            }
            hdVar = c;
        }
        return hdVar;
    }

    private if a(Object obj) throws Exception {
        pcv a = a.a(obj);
        if (a == null || a.b() == 0) {
            throw new Exception(new StringBuilder(String.valueOf(800)).toString());
        }
        UUID randomUUID = UUID.randomUUID();
        if ifVar = new if();
        ifVar.a = new j();
        ifVar.a.a = (byte) 1;
        ifVar.a.b = 0;
        ifVar.a.ef = randomUUID.getMostSignificantBits();
        ifVar.a.f = randomUUID.getLeastSignificantBits();
        ifVar.a.c = (byte) 1;
        ifVar.a.da = (short) 0;
        ifVar.a.gt = a.b();
        ifVar.b = obj;
        return ifVar;
    }

    public synchronized void a(n nVar, Object obj, o oVar) {
        try {
            this.a.execute(new a(this, nVar, a(obj), oVar));
        } catch (Exception e) {
            oVar.a(Boolean.valueOf(false), null);
        }
    }

    public void b() {
        if (this.a == null) {
            this.a = new ThreadPoolExecutor(3, 6, 5, TimeUnit.SECONDS, new ArrayBlockingQueue(20), new DiscardOldestPolicy());
        }
    }
}
