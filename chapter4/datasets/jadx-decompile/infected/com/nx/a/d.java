package com.nx.a;

import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;
import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.spec.SecretKeySpec;
import u.aly.bs;

public class d {
    protected static MessageDigest a;
    protected static int[] b = new int[]{99, 113, 112, 115, 97, 56, 49, 52, 48, 57, 54, 117, 105, 109, 101, 120};
    private static String c = "DES";
    private static final String[] d = new String[]{"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};

    static {
        a = null;
        try {
            a = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
    }

    public static String a(File file) {
        FileChannel channel;
        Exception e;
        FileChannel fileChannel;
        FileInputStream fileInputStream;
        Throwable th;
        MappedByteBuffer mappedByteBuffer = null;
        FileInputStream fileInputStream2;
        try {
            fileInputStream2 = new FileInputStream(file);
            try {
                channel = fileInputStream2.getChannel();
                try {
                    mappedByteBuffer = channel.map(MapMode.READ_ONLY, 0, file.length());
                } catch (Exception e2) {
                    e = e2;
                    fileChannel = channel;
                    fileInputStream = fileInputStream2;
                    try {
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e3) {
                            }
                        }
                        if (fileChannel != null) {
                            try {
                                fileChannel.close();
                            } catch (IOException e4) {
                            }
                        }
                        if (mappedByteBuffer == null) {
                            return bs.b;
                        }
                        mappedByteBuffer.clear();
                        return bs.b;
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream2 = fileInputStream;
                        channel = fileChannel;
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (IOException e5) {
                            }
                        }
                        if (channel != null) {
                            try {
                                channel.close();
                            } catch (IOException e6) {
                            }
                        }
                        if (mappedByteBuffer != null) {
                            mappedByteBuffer.clear();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (fileInputStream2 != null) {
                        fileInputStream2.close();
                    }
                    if (channel != null) {
                        channel.close();
                    }
                    if (mappedByteBuffer != null) {
                        mappedByteBuffer.clear();
                    }
                    throw th;
                }
            } catch (Exception e7) {
                e = e7;
                fileInputStream = fileInputStream2;
                Object obj = mappedByteBuffer;
                e.printStackTrace();
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                if (fileChannel != null) {
                    fileChannel.close();
                }
                if (mappedByteBuffer == null) {
                    return bs.b;
                }
                mappedByteBuffer.clear();
                return bs.b;
            } catch (Throwable th4) {
                th = th4;
                Object obj2 = mappedByteBuffer;
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                if (channel != null) {
                    channel.close();
                }
                if (mappedByteBuffer != null) {
                    mappedByteBuffer.clear();
                }
                throw th;
            }
            try {
                a.update(mappedByteBuffer);
                String a = a(a.digest());
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e8) {
                    }
                }
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException e9) {
                    }
                }
                if (mappedByteBuffer == null) {
                    return a;
                }
                mappedByteBuffer.clear();
                return a;
            } catch (Exception e10) {
                e = e10;
                fileChannel = channel;
                fileInputStream = fileInputStream2;
                e.printStackTrace();
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                if (fileChannel != null) {
                    fileChannel.close();
                }
                if (mappedByteBuffer == null) {
                    return bs.b;
                }
                mappedByteBuffer.clear();
                return bs.b;
            } catch (Throwable th5) {
                th = th5;
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                if (channel != null) {
                    channel.close();
                }
                if (mappedByteBuffer != null) {
                    mappedByteBuffer.clear();
                }
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            fileChannel = mappedByteBuffer;
            fileInputStream = mappedByteBuffer;
            e.printStackTrace();
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            if (fileChannel != null) {
                fileChannel.close();
            }
            if (mappedByteBuffer == null) {
                return bs.b;
            }
            mappedByteBuffer.clear();
            return bs.b;
        } catch (Throwable th6) {
            th = th6;
            fileInputStream2 = mappedByteBuffer;
            channel = mappedByteBuffer;
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            if (channel != null) {
                channel.close();
            }
            if (mappedByteBuffer != null) {
                mappedByteBuffer.clear();
            }
            throw th;
        }
    }

    private static String a(InputStream inputStream, OutputStream outputStream) {
        String str;
        Exception exception;
        Exception exception2;
        Throwable th;
        CipherOutputStream cipherOutputStream = null;
        try {
            byte[] bArr = new byte[32];
            byte[] bArr2 = new byte[1024];
            str = inputStream.read(bArr) != -1 ? new String(bArr) : bs.b;
            CipherOutputStream cipherOutputStream2;
            try {
                cipherOutputStream2 = new CipherOutputStream(outputStream, a(a(str)));
                if (cipherOutputStream2 != null) {
                    while (true) {
                        try {
                            int read = inputStream.read(bArr2);
                            if (read == -1) {
                                break;
                            }
                            cipherOutputStream2.write(bArr2, 0, read);
                        } catch (Exception e) {
                            exception = e;
                            cipherOutputStream = cipherOutputStream2;
                            exception2 = exception;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    cipherOutputStream2.flush();
                }
                if (cipherOutputStream2 != null) {
                    try {
                        cipherOutputStream2.close();
                    } catch (Exception e2) {
                    }
                }
            } catch (Exception e3) {
                exception2 = e3;
                try {
                    exception2.printStackTrace();
                    if (cipherOutputStream != null) {
                        try {
                            cipherOutputStream.close();
                        } catch (Exception e4) {
                        }
                    }
                    return str;
                } catch (Throwable th3) {
                    th = th3;
                    cipherOutputStream2 = cipherOutputStream;
                    if (cipherOutputStream2 != null) {
                        try {
                            cipherOutputStream2.close();
                        } catch (Exception e5) {
                        }
                    }
                    throw th;
                }
            }
        } catch (Exception e6) {
            exception = e6;
            str = bs.b;
            exception2 = exception;
            exception2.printStackTrace();
            if (cipherOutputStream != null) {
                cipherOutputStream.close();
            }
            return str;
        }
        return str;
    }

    public static String a(String str, String str2) {
        InputStream fileInputStream;
        OutputStream fileOutputStream;
        Exception e;
        Throwable th;
        InputStream inputStream = null;
        String str3 = bs.b;
        if (new File(str).exists()) {
            File file = new File(str2);
            file.delete();
            try {
                fileInputStream = new FileInputStream(str);
                try {
                    fileOutputStream = new FileOutputStream(str2);
                } catch (Exception e2) {
                    e = e2;
                    fileOutputStream = null;
                    inputStream = fileInputStream;
                    try {
                        e.printStackTrace();
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e32) {
                                e32.printStackTrace();
                            }
                        }
                        return str3;
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = inputStream;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e322) {
                                e322.printStackTrace();
                            }
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e3222) {
                                e3222.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    throw th;
                }
                try {
                    String a = a(fileInputStream, fileOutputStream);
                    Object a2 = a(file);
                    if (!(a2 == null || TextUtils.isEmpty(a2) || !a2.equals(a))) {
                        str3 = a;
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e32222) {
                            e32222.printStackTrace();
                        }
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e322222) {
                            e322222.printStackTrace();
                        }
                    }
                } catch (Exception e4) {
                    e = e4;
                    inputStream = fileInputStream;
                    e.printStackTrace();
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return str3;
                } catch (Throwable th4) {
                    th = th4;
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    throw th;
                }
            } catch (Exception e5) {
                e = e5;
                fileOutputStream = null;
                e.printStackTrace();
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                return str3;
            } catch (Throwable th5) {
                th = th5;
                fileOutputStream = null;
                fileInputStream = null;
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        }
        return str3;
    }

    private static String a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    private static String a(byte[] bArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer(i2 * 2);
        int i3 = i + i2;
        while (i < i3) {
            a(bArr[i], stringBuffer);
            i++;
        }
        return stringBuffer.toString();
    }

    private static Key a(String str) {
        try {
            byte[] bytes = str.getBytes();
            byte[] bArr = new byte[8];
            int i = 0;
            while (i < bArr.length && i < bytes.length) {
                bArr[i] = bytes[i];
                i++;
            }
            return new SecretKeySpec(bArr, c);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static Cipher a(Key key) {
        Cipher instance = Cipher.getInstance(c);
        instance.init(2, key);
        return instance;
    }

    private static void a(byte b, StringBuffer stringBuffer) {
        char c = (char) b[b & 15];
        stringBuffer.append((char) b[(b & 240) >> 4]);
        stringBuffer.append(c);
    }
}
