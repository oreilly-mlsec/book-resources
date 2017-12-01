package com.third.mx.utils;

import android.content.Context;
import android.os.AsyncTask;
import com.third.mx.update.a;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Timer;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class e extends AsyncTask {
    public static boolean a = false;
    private int b;
    private Context c;
    private String d;

    public e(Context context, String str) {
        this(context.getApplicationContext(), str, 0);
    }

    private e(Context context, String str, int i) {
        this.b = 0;
        this.c = context;
        this.d = str;
        this.b = i;
    }

    private static File a(Context context) {
        return new File(context.getDir("jd", 0), "thirdcd.jar");
    }

    private boolean a() {
        InputStream b;
        Exception e;
        Throwable th;
        boolean z = false;
        InputStream inputStream = null;
        File a = a(this.c);
        a.deleteOnExit();
        OutputStream bufferedOutputStream;
        try {
            OutputStream outputStream;
            b = b();
            if (b != null) {
                try {
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(a));
                    try {
                        byte[] bArr = new byte[2048];
                        while (true) {
                            int read = b.read(bArr, 0, 2048);
                            if (read <= 0) {
                                break;
                            }
                            bufferedOutputStream.write(bArr, 0, read);
                        }
                        File b2 = a.b(this.c);
                        b2.deleteOnExit();
                        z = a.renameTo(b2);
                        outputStream = bufferedOutputStream;
                    } catch (Exception e2) {
                        e = e2;
                        inputStream = b;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Exception e3) {
                    e = e3;
                    bufferedOutputStream = null;
                    inputStream = b;
                    try {
                        e.printStackTrace();
                        if (bufferedOutputStream != null) {
                            try {
                                bufferedOutputStream.close();
                            } catch (IOException e4) {
                            }
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e5) {
                            }
                        }
                        return z;
                    } catch (Throwable th3) {
                        th = th3;
                        b = inputStream;
                        if (bufferedOutputStream != null) {
                            try {
                                bufferedOutputStream.close();
                            } catch (IOException e6) {
                            }
                        }
                        if (b != null) {
                            try {
                                b.close();
                            } catch (IOException e7) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    bufferedOutputStream = null;
                    if (bufferedOutputStream != null) {
                        bufferedOutputStream.close();
                    }
                    if (b != null) {
                        b.close();
                    }
                    throw th;
                }
            }
            outputStream = null;
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e8) {
                }
            }
            if (b != null) {
                try {
                    b.close();
                } catch (IOException e9) {
                }
            }
        } catch (Exception e10) {
            e = e10;
            bufferedOutputStream = null;
            e.printStackTrace();
            if (bufferedOutputStream != null) {
                bufferedOutputStream.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
            return z;
        } catch (Throwable th5) {
            th = th5;
            b = null;
            bufferedOutputStream = null;
            if (bufferedOutputStream != null) {
                bufferedOutputStream.close();
            }
            if (b != null) {
                b.close();
            }
            throw th;
        }
        return z;
    }

    private InputStream b() {
        try {
            HttpResponse execute = new DefaultHttpClient().execute(new HttpGet(this.d));
            if (execute.getStatusLine().getStatusCode() == 200) {
                return execute.getEntity().getContent();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private void c() {
        new Timer().schedule(new f(this), 20000);
    }

    protected Boolean a(Void... voidArr) {
        try {
            return Boolean.valueOf(a());
        } catch (Exception e) {
            return Boolean.valueOf(false);
        }
    }

    protected void a(Boolean bool) {
        if (bool.booleanValue()) {
            a = false;
            a.a(this.c, true);
            a.a(this.c, 0);
        } else if (this.b + 1 < 5) {
            c();
        } else {
            a = false;
            a.a(this.c, false);
        }
    }

    protected /* synthetic */ Object doInBackground(Object... objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Boolean) obj);
    }

    protected void onPreExecute() {
        a = true;
    }
}
