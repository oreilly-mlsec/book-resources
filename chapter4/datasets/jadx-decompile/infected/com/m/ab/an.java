package com.m.ab;

import com.m.u.ag;
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

public class an {
    private static an ac;
    ThreadPoolExecutor aa = null;
    private ar ab = new ar();

    class aa implements Runnable {
        String aa;
        final /* synthetic */ an ab;
        private ao ac;
        private au ad;

        public aa(an anVar, at atVar, ao aoVar, au auVar) {
            this.ab = anVar;
            this.aa = atVar.aa();
            this.ac = aoVar;
            this.ad = auVar;
        }

        protected boolean aa(ao aoVar, String str) {
            try {
                aoVar.ac++;
                if (ab.aa(aoVar.ab) == null || aoVar.ac >= 3) {
                    ag.aa(com.m.ac.aa.ca, new StringBuilder(String.valueOf(809)).append("    ").append(aoVar.ab.getClass()).append("    ").append(aoVar.ac).append("    ").append(str).toString());
                    return false;
                }
                ag.aa(com.m.ac.aa.ca, new StringBuilder(String.valueOf(808)).append("    ").append(aoVar.ab.getClass()).append("    ").append(aoVar.ac).append("    ").append(str).toString());
                return true;
            } catch (Exception e) {
                return false;
            }
        }

        public void run() {
            do {
                try {
                    byte[] bArr = new byte[5120];
                    byte[] aa = this.ab.ab.aa(this.ac);
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.aa).openConnection();
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
                    outputStream.write(aa);
                    outputStream.flush();
                    outputStream.close();
                    ag.ab(com.m.ac.aa.ca, new StringBuilder(String.valueOf(801)).append("    ").append(this.ac.ab.getClass()).append("    ").append(this.aa).toString());
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
                        ao aoVar = new ao();
                        aoVar.aa = this.ab.ab.aa(bArr, 0);
                        if (bArr.length < aoVar.aa.ab) {
                            throw new Exception(new StringBuilder(String.valueOf(803)).append("    ").append(bArr.length).append("    ").append(aoVar.aa.ab).toString());
                        }
                        aoVar.ab = this.ab.ab.aa(bArr, 28, bArr.length - 28, aoVar.aa.ag);
                        ag.ab(com.m.ac.aa.ca, new StringBuilder(String.valueOf(804)).append("    ").append(aoVar.ab.getClass()).toString());
                        if (this.ad != null) {
                            this.ad.aa(Boolean.valueOf(true), aoVar);
                            return;
                        }
                        return;
                    }
                    throw new Exception(new StringBuilder(String.valueOf(802)).append("    ").append(responseCode).toString());
                } catch (Exception e) {
                    ag.ad(com.m.ac.aa.ca, 4040404);
                    ag.aa(com.m.ac.aa.ca, new StringBuilder(String.valueOf(805)).toString());
                    if (!aa(this.ac, e.getClass().getSimpleName())) {
                        if (this.ad == null) {
                            ag.aa(com.m.ac.aa.ca, new StringBuilder(String.valueOf(806)).toString());
                        } else {
                            this.ad.aa(Boolean.valueOf(false), this.ac);
                        }
                        ag.aa(com.m.ac.aa.ca, new StringBuilder(String.valueOf(807)).toString());
                    }
                }
            } while (aa(this.ac, e.getClass().getSimpleName()));
            if (this.ad == null) {
                this.ad.aa(Boolean.valueOf(false), this.ac);
            } else {
                ag.aa(com.m.ac.aa.ca, new StringBuilder(String.valueOf(806)).toString());
            }
            ag.aa(com.m.ac.aa.ca, new StringBuilder(String.valueOf(807)).toString());
        }
    }

    private an() {
        ab();
    }

    public static synchronized an aa() {
        an anVar;
        synchronized (an.class) {
            if (ac == null) {
                ac = new an();
            }
            anVar = ac;
        }
        return anVar;
    }

    private ao aa(Object obj) throws Exception {
        av aa = ab.aa(obj);
        if (aa == null || aa.ab() == 0) {
            throw new Exception(new StringBuilder(String.valueOf(800)).toString());
        }
        UUID randomUUID = UUID.randomUUID();
        ao aoVar = new ao();
        aoVar.aa = new ap();
        aoVar.aa.aa = (byte) 1;
        aoVar.aa.ab = 0;
        aoVar.aa.ae = randomUUID.getMostSignificantBits();
        aoVar.aa.af = randomUUID.getLeastSignificantBits();
        aoVar.aa.ac = (byte) 1;
        aoVar.aa.ad = (short) 0;
        aoVar.aa.ag = aa.ab();
        aoVar.ab = obj;
        return aoVar;
    }

    public synchronized void aa(at atVar, Object obj, au auVar) {
        try {
            this.aa.execute(new aa(this, atVar, aa(obj), auVar));
        } catch (Exception e) {
            auVar.aa(Boolean.valueOf(false), null);
        }
    }

    public void ab() {
        if (this.aa == null) {
            this.aa = new ThreadPoolExecutor(3, 6, 5, TimeUnit.SECONDS, new ArrayBlockingQueue(20), new DiscardOldestPolicy());
        }
    }
}
