package com.m.u;

import android.content.Context;
import android.text.TextUtils;
import com.m.ab.aa;
import java.io.File;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import u.aly.bs;

public class ba {
    public static final String aa = ae.aa(ac.eb);
    private Context ab;
    private f ac;
    private boolean ad;
    private int ae = 0;
    private int af = 0;
    private az[] ag;
    private File ah;
    private Map<Integer, Integer> ai = new ConcurrentHashMap();
    private int aj;
    private String ak;
    private String al;
    private int am;
    private String an;
    private String ao;
    private int ap = 0;

    public ba(Context context, String str, String str2, File file, int i) {
        try {
            this.ab = context;
            this.al = str2;
            this.ak = str;
            this.am = i;
            this.ac = new f(this.ab);
            URL url = new URL(this.ak);
            if (!file.exists()) {
                file.mkdirs();
            }
            this.ag = new az[1];
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("User-Agent", "NetFox");
            httpURLConnection.connect();
            ab(httpURLConnection);
            if (httpURLConnection.getResponseCode() == 200) {
                this.af = httpURLConnection.getContentLength();
                if (this.af <= 0) {
                    ag.ab(aa, new StringBuilder(String.valueOf(1)).append("    ").append(this.af).toString());
                    throw new RuntimeException(new StringBuilder(String.valueOf(1)).toString());
                }
                this.an = ac(httpURLConnection);
                this.ao = new StringBuilder(String.valueOf(UUID.randomUUID().toString())).append(".tmp").toString();
                this.ah = new File(file, this.ao);
                if (!this.ah.exists()) {
                    this.ah.createNewFile();
                }
                Map aa = this.ac.aa(str);
                if (aa.size() > 0) {
                    for (Entry entry : aa.entrySet()) {
                        this.ai.put((Integer) entry.getKey(), (Integer) entry.getValue());
                    }
                }
                if (this.ai.size() == this.ag.length) {
                    for (int i2 = 0; i2 < this.ag.length; i2++) {
                        this.ae = ((Integer) this.ai.get(Integer.valueOf(i2 + 1))).intValue() + this.ae;
                    }
                    ag.ab(aa, new StringBuilder(String.valueOf(2)).append("    ").append(this.ae).toString());
                }
                this.aj = this.af % this.ag.length == 0 ? this.af / this.ag.length : (this.af / this.ag.length) + 1;
                return;
            }
            ag.ab(aa, new StringBuilder(String.valueOf(3)).toString());
        } catch (Throwable e) {
            ag.aa(e);
        }
    }

    public static Map<String, String> aa(HttpURLConnection httpURLConnection) {
        Map<String, String> linkedHashMap = new LinkedHashMap();
        int i = 0;
        while (true) {
            String headerField = httpURLConnection.getHeaderField(i);
            if (headerField == null) {
                return linkedHashMap;
            }
            linkedHashMap.put(httpURLConnection.getHeaderFieldKey(i), headerField);
            i++;
        }
    }

    public static void ab(HttpURLConnection httpURLConnection) {
        for (Entry entry : aa(httpURLConnection).entrySet()) {
            ag.aa(new StringBuilder(String.valueOf(entry.getKey() != null ? new StringBuilder(String.valueOf((String) entry.getKey())).append(":").toString() : bs.b)).append((String) entry.getValue()).toString());
        }
    }

    private String ac(HttpURLConnection httpURLConnection) {
        String substring = this.ak.substring(this.ak.lastIndexOf(47) + 1);
        if (substring != null && !bs.b.equals(substring.trim())) {
            return substring;
        }
        int i = 0;
        while (true) {
            String headerField = httpURLConnection.getHeaderField(i);
            if (headerField == null) {
                return UUID.randomUUID() + ".tmp";
            }
            if ("content-disposition".equals(httpURLConnection.getHeaderFieldKey(i).toLowerCase())) {
                Matcher matcher = Pattern.compile(".*filename=(.*)").matcher(headerField.toLowerCase());
                if (matcher.find()) {
                    return matcher.group(1);
                }
            }
            i++;
        }
    }

    public int aa(ay ayVar) {
        int i;
        aa aaVar;
        int i2;
        RandomAccessFile randomAccessFile = new RandomAccessFile(this.ah, "rw");
        if (this.af > 0) {
            randomAccessFile.setLength((long) this.af);
        }
        randomAccessFile.close();
        URL url = new URL(this.ak);
        if (this.ai.size() != this.ag.length) {
            this.ai.clear();
            i = 0;
            while (i < this.ag.length) {
                try {
                    this.ai.put(Integer.valueOf(i + 1), Integer.valueOf(0));
                    i++;
                } catch (Throwable e) {
                    ag.aa(e);
                    if (ayVar != null) {
                        ayVar.aa(false);
                    }
                    aaVar = new aa();
                    aaVar.aa(12);
                    aaVar.aa("0/" + this.ab.getPackageName());
                    aaVar.ab(1);
                    aaVar.aa((short) 10);
                    bb.aa(this.ab, aaVar);
                }
            }
            this.ae = 0;
        }
        for (i2 = 0; i2 < this.ag.length; i2++) {
            if (((Integer) this.ai.get(Integer.valueOf(i2 + 1))).intValue() >= this.aj || this.ae >= this.af) {
                this.ag[i2] = null;
            } else {
                this.ag[i2] = new az(this, url, this.ah, this.aj, ((Integer) this.ai.get(Integer.valueOf(i2 + 1))).intValue(), i2 + 1);
                this.ag[i2].setPriority(7);
                this.ag[i2].start();
            }
        }
        this.ac.ab(this.ak);
        this.ac.aa(this.ak, this.ai);
        i = 1;
        while (i != 0) {
            Thread.sleep(500);
            i2 = 0;
            i = false;
            while (i2 < this.ag.length) {
                if (!(this.ag[i2] == null || this.ag[i2].aa())) {
                    if (this.ag[i2].ab() == -1 && this.ap < 3) {
                        this.ap++;
                        this.ag[i2] = new az(this, url, this.ah, this.aj, ((Integer) this.ai.get(Integer.valueOf(i2 + 1))).intValue(), i2 + 1);
                        this.ag[i2].setPriority(7);
                        this.ag[i2].start();
                    }
                    i = 1;
                }
                i2++;
            }
        }
        if (this.ae == this.af) {
            this.ac.ab(this.ak);
            String aa = aj.aa(this.ah.getAbsolutePath());
            if (TextUtils.isEmpty(this.al) || !this.al.equalsIgnoreCase(aa)) {
                this.ah.delete();
                ag.ab(aa, new StringBuilder(String.valueOf(5)).append("    ").toString());
                if (ayVar != null) {
                    ayVar.aa(false);
                }
            } else {
                ag.ab(aa, new StringBuilder(String.valueOf(4)).append("    ").toString());
                if (ayVar != null) {
                    ayVar.aa(true);
                }
            }
            aaVar = new aa();
            aaVar.aa(5);
            aaVar.aa("0/" + this.ab.getPackageName());
            aaVar.ab(1);
            aaVar.aa((short) 10);
            bb.aa(this.ab, aaVar);
        }
        ag.ab(aa, new StringBuilder(String.valueOf(6)).append("    ").append(this.ae).append("    ").append(this.af).toString());
        return this.ae;
    }

    public void aa() {
        this.ad = true;
    }

    protected synchronized void aa(int i) {
        this.ae += i;
    }

    protected synchronized void aa(int i, int i2) {
        this.ai.put(Integer.valueOf(i), Integer.valueOf(i2));
        this.ac.aa(this.ak, i, i2);
    }

    public boolean ab() {
        return this.ad;
    }

    public File ac() {
        return this.ah;
    }

    public String ad() {
        return this.an;
    }
}
