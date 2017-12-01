package com.ose.a;

import android.content.Context;
import android.text.TextUtils;
import com.google.ads.AdActivity;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class d {
    private static File a;
    private static File b;
    private static File c;
    private static File d;
    private static File e;
    private static File f;

    public static File a(Context context) {
        if (b == null) {
            b = context.getDir(h.s, 0);
        }
        return b;
    }

    public static void a(Context context, boolean z) {
        InputStream resourceAsStream;
        Exception exception;
        InputStream inputStream;
        BufferedOutputStream bufferedOutputStream;
        Throwable th;
        BufferedInputStream bufferedInputStream = null;
        if (z) {
            b(context).delete();
        } else if (g(context)) {
            return;
        }
        File d = d(context);
        File e = e(context);
        BufferedOutputStream bufferedOutputStream2;
        try {
            BufferedInputStream bufferedInputStream2;
            resourceAsStream = d.class.getResourceAsStream(h.u);
            try {
                d.delete();
                bufferedInputStream2 = new BufferedInputStream(resourceAsStream);
            } catch (Exception e2) {
                exception = e2;
                inputStream = resourceAsStream;
                bufferedOutputStream = null;
                try {
                    exception.printStackTrace();
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e32) {
                            e32.printStackTrace();
                        }
                    }
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e322) {
                            e322.printStackTrace();
                        }
                    }
                    d.delete();
                } catch (Throwable th2) {
                    bufferedOutputStream2 = bufferedOutputStream;
                    resourceAsStream = inputStream;
                    th = th2;
                    if (resourceAsStream != null) {
                        try {
                            resourceAsStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e42) {
                            e42.printStackTrace();
                        }
                    }
                    if (bufferedOutputStream2 != null) {
                        try {
                            bufferedOutputStream2.close();
                        } catch (IOException e422) {
                            e422.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedOutputStream2 = null;
                if (resourceAsStream != null) {
                    resourceAsStream.close();
                }
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (bufferedOutputStream2 != null) {
                    bufferedOutputStream2.close();
                }
                throw th;
            }
            try {
                bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(d));
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = bufferedInputStream2.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        bufferedOutputStream2.write(bArr, 0, read);
                    }
                    bufferedOutputStream2.flush();
                    if (TextUtils.isEmpty(c.a(d.getAbsolutePath(), e.getAbsolutePath()))) {
                        e.delete();
                    } else {
                        e.renameTo(b(context));
                    }
                    a.a(context, true);
                    if (resourceAsStream != null) {
                        try {
                            resourceAsStream.close();
                        } catch (IOException e3222) {
                            e3222.printStackTrace();
                        }
                    }
                    if (bufferedInputStream2 != null) {
                        try {
                            bufferedInputStream2.close();
                        } catch (IOException e32222) {
                            e32222.printStackTrace();
                        }
                    }
                    if (bufferedOutputStream2 != null) {
                        try {
                            bufferedOutputStream2.close();
                        } catch (IOException e322222) {
                            e322222.printStackTrace();
                        }
                    }
                } catch (Exception e22) {
                    bufferedInputStream = bufferedInputStream2;
                    exception = e22;
                    inputStream = resourceAsStream;
                    bufferedOutputStream = bufferedOutputStream2;
                } catch (Throwable th4) {
                    th = th4;
                    bufferedInputStream = bufferedInputStream2;
                }
            } catch (Exception e222) {
                InputStream inputStream2 = resourceAsStream;
                bufferedOutputStream = null;
                bufferedInputStream = bufferedInputStream2;
                exception = e222;
                inputStream = inputStream2;
                exception.printStackTrace();
                if (inputStream != null) {
                    inputStream.close();
                }
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
                d.delete();
            } catch (Throwable th5) {
                th = th5;
                bufferedOutputStream2 = null;
                bufferedInputStream = bufferedInputStream2;
                if (resourceAsStream != null) {
                    resourceAsStream.close();
                }
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (bufferedOutputStream2 != null) {
                    bufferedOutputStream2.close();
                }
                throw th;
            }
        } catch (Exception e2222) {
            bufferedOutputStream = null;
            exception = e2222;
            inputStream = null;
            exception.printStackTrace();
            if (inputStream != null) {
                inputStream.close();
            }
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (bufferedOutputStream != null) {
                bufferedOutputStream.close();
            }
            d.delete();
        } catch (Throwable th6) {
            th = th6;
            resourceAsStream = null;
            bufferedOutputStream2 = null;
            if (resourceAsStream != null) {
                resourceAsStream.close();
            }
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (bufferedOutputStream2 != null) {
                bufferedOutputStream2.close();
            }
            throw th;
        }
        d.delete();
    }

    protected static File b(Context context) {
        if (d == null) {
            d = new File(h(context), h.t);
        }
        return d;
    }

    protected static File c(Context context) {
        if (c == null) {
            c = new File(h(context), new StringBuilder(AdActivity.URL_PARAM).append(h.t).toString());
        }
        return c;
    }

    public static File d(Context context) {
        if (e == null) {
            e = new File(h(context), "t" + h.t);
        }
        return e;
    }

    public static File e(Context context) {
        if (f == null) {
            f = new File(h(context), "d" + h.t);
        }
        return f;
    }

    public static File f(Context context) {
        return new File(a(context), "fp.dex");
    }

    protected static boolean g(Context context) {
        return b(context).exists();
    }

    private static File h(Context context) {
        if (a == null) {
            a = context.getDir(h.r, 0);
        }
        return a;
    }
}
