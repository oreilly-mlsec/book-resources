package com.nx.a;

import android.content.Context;
import android.text.TextUtils;
import com.google.ads.AdActivity;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class f {
    private static File a;
    private static File b;
    private static File c;
    private static File d;
    private static File e;
    private static File f;

    public static File a(Context context) {
        if (b == null) {
            b = context.getDir(k.y, 0);
        }
        return b;
    }

    public static void a(Context context, boolean z) {
        InputStream resourceAsStream;
        BufferedInputStream bufferedInputStream;
        Exception exception;
        InputStream inputStream;
        Exception exception2;
        Throwable th;
        BufferedOutputStream bufferedOutputStream = null;
        if (z) {
            c(context).delete();
        } else if (g(context)) {
            return;
        }
        File e = e(context);
        File f = f(context);
        BufferedInputStream bufferedInputStream2;
        try {
            resourceAsStream = f.class.getResourceAsStream(k.A);
            try {
                e.delete();
                bufferedInputStream2 = new BufferedInputStream(resourceAsStream);
            } catch (Exception e2) {
                bufferedInputStream = null;
                exception = e2;
                inputStream = resourceAsStream;
                exception2 = exception;
                try {
                    exception2.printStackTrace();
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
                    e.delete();
                } catch (Throwable th2) {
                    bufferedInputStream2 = bufferedInputStream;
                    InputStream inputStream2 = inputStream;
                    th = th2;
                    resourceAsStream = inputStream2;
                    if (resourceAsStream != null) {
                        try {
                            resourceAsStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    if (bufferedInputStream2 != null) {
                        try {
                            bufferedInputStream2.close();
                        } catch (IOException e42) {
                            e42.printStackTrace();
                        }
                    }
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e422) {
                            e422.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedInputStream2 = null;
                if (resourceAsStream != null) {
                    resourceAsStream.close();
                }
                if (bufferedInputStream2 != null) {
                    bufferedInputStream2.close();
                }
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
                throw th;
            }
            try {
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(e));
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
                    if (TextUtils.isEmpty(d.a(e.getAbsolutePath(), f.getAbsolutePath()))) {
                        f.delete();
                    } else {
                        f.renameTo(c(context));
                    }
                    b.a(context, true);
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
                    bufferedOutputStream = bufferedOutputStream2;
                    bufferedInputStream = bufferedInputStream2;
                    exception = e22;
                    inputStream = resourceAsStream;
                    exception2 = exception;
                } catch (Throwable th4) {
                    th = th4;
                    bufferedOutputStream = bufferedOutputStream2;
                }
            } catch (Exception e222) {
                bufferedInputStream = bufferedInputStream2;
                exception = e222;
                inputStream = resourceAsStream;
                exception2 = exception;
                exception2.printStackTrace();
                if (inputStream != null) {
                    inputStream.close();
                }
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
                e.delete();
            } catch (Throwable th5) {
                th = th5;
                if (resourceAsStream != null) {
                    resourceAsStream.close();
                }
                if (bufferedInputStream2 != null) {
                    bufferedInputStream2.close();
                }
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
                throw th;
            }
        } catch (Exception e2222) {
            exception2 = e2222;
            bufferedInputStream = null;
            inputStream = null;
            exception2.printStackTrace();
            if (inputStream != null) {
                inputStream.close();
            }
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (bufferedOutputStream != null) {
                bufferedOutputStream.close();
            }
            e.delete();
        } catch (Throwable th6) {
            th = th6;
            bufferedInputStream2 = null;
            resourceAsStream = null;
            if (resourceAsStream != null) {
                resourceAsStream.close();
            }
            if (bufferedInputStream2 != null) {
                bufferedInputStream2.close();
            }
            if (bufferedOutputStream != null) {
                bufferedOutputStream.close();
            }
            throw th;
        }
        e.delete();
    }

    public static File b(Context context) {
        return new File(a(context), "fx.dex");
    }

    protected static File c(Context context) {
        if (d == null) {
            d = new File(h(context), k.z);
        }
        return d;
    }

    protected static File d(Context context) {
        if (c == null) {
            c = new File(h(context), new StringBuilder(AdActivity.URL_PARAM).append(k.z).toString());
        }
        return c;
    }

    public static File e(Context context) {
        if (e == null) {
            e = new File(h(context), "t" + k.z);
        }
        return e;
    }

    public static File f(Context context) {
        if (f == null) {
            f = new File(h(context), "d" + k.z);
        }
        return f;
    }

    protected static boolean g(Context context) {
        return c(context).exists();
    }

    private static File h(Context context) {
        if (a == null) {
            a = context.getDir(k.x, 0);
        }
        return a;
    }
}
