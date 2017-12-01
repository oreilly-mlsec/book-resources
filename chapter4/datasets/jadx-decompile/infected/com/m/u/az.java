package com.m.u;

import java.io.File;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;

public class az extends Thread {
    private static final String aa = ae.aa(ac.ea);
    private File ab;
    private URL ac;
    private int ad;
    private int ae = -1;
    private int af;
    private boolean ag = false;
    private ba ah;

    public az(ba baVar, URL url, File file, int i, int i2, int i3) {
        this.ac = url;
        this.ab = file;
        this.ad = i;
        this.ah = baVar;
        this.ae = i3;
        this.af = i2;
    }

    private static void aa(String str) {
        ag.ac(aa, str);
    }

    public boolean aa() {
        return this.ag;
    }

    public long ab() {
        return (long) this.af;
    }

    public void run() {
        if (this.af < this.ad) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) this.ac.openConnection();
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setReadTimeout(10000);
                int i = (this.ad * (this.ae - 1)) + this.af;
                httpURLConnection.setRequestProperty("RANGE", "bytes=" + i + "-" + ((this.ad * this.ae) - 1));
                httpURLConnection.setRequestProperty("User-Agent", "NetFox");
                httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
                InputStream inputStream = httpURLConnection.getInputStream();
                byte[] bArr = new byte[1024];
                aa(new StringBuilder(String.valueOf(1)).append("    ").append(this.ae).append("    ").append(i).toString());
                RandomAccessFile randomAccessFile = new RandomAccessFile(this.ab, "rwd");
                randomAccessFile.seek((long) i);
                while (!this.ah.ab()) {
                    i = inputStream.read(bArr, 0, 1024);
                    if (i == -1) {
                        break;
                    }
                    randomAccessFile.write(bArr, 0, i);
                    this.af += i;
                    this.ah.aa(this.ae, this.af);
                    this.ah.aa(i);
                }
                randomAccessFile.close();
                inputStream.close();
                aa(new StringBuilder(String.valueOf(2)).append("    ").append(this.ae).toString());
                this.ag = true;
            } catch (Throwable e) {
                this.af = -1;
                this.ag = true;
                ag.aa(e);
            }
        }
    }
}
