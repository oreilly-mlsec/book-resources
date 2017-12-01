package com.st.m.c;

import com.st.m.u.ef;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import u.aly.bs;

public class l {
    private byte[] a = com.st.m.u.c.a().getBytes();

    class a {
        public b a;
        public Field b;
        final /* synthetic */ l c;

        a(l lVar) {
            this.c = lVar;
        }
    }

    class b implements Comparator {
        final /* synthetic */ l a;

        b(l lVar) {
            this.a = lVar;
        }

        public int compare(Object obj, Object obj2) {
            return ((a) obj).a.a() > ((a) obj2).a.a() ? 1 : -1;
        }
    }

    class c {
        public int a;
        public Object b;
        final /* synthetic */ l c;

        c(l lVar) {
            this.c = lVar;
        }
    }

    private c a(byte[] bArr, int i, Class<?> cls, a aVar) throws Exception {
        c cVar = new c(this);
        if (cls == Byte.TYPE || cls == Byte.class) {
            cVar.a = 1;
            cVar.b = new Byte(bArr[i]);
        }
        if (cls == Character.TYPE || cls == Character.class) {
            cVar.a = 1;
            cVar.b = Character.valueOf((char) bArr[i]);
        } else if (cls == Short.TYPE || cls == Short.class) {
            cVar.a = 2;
            cVar.b = Short.valueOf(c.a(bArr, i));
        } else if (cls == Integer.TYPE || cls == Integer.class) {
            if (aVar.a.b() == 1) {
                cVar.a = 1;
                cVar.b = Integer.valueOf(c.a(bArr[i]));
            } else {
                cVar.a = 4;
                cVar.b = Integer.valueOf(c.b(bArr, i));
            }
        } else if (cls == Long.TYPE || cls == Long.class) {
            cVar.a = 8;
            cVar.b = Long.valueOf(c.c(bArr, i));
        } else if (cls == Float.TYPE || cls == Float.class) {
            cVar.a = 4;
            cVar.b = Float.valueOf(c.da(bArr, i));
        } else if (cls == Double.TYPE || cls == Double.class) {
            cVar.a = 8;
            cVar.b = Double.valueOf(c.ef(bArr, i));
        } else if (cls == Boolean.TYPE || cls == Boolean.class) {
            cVar.a = 1;
            if (bArr[i] == (byte) 1) {
                cVar.b = Boolean.valueOf(true);
            } else {
                cVar.b = Boolean.valueOf(false);
            }
        } else if (cls == String.class) {
            List arrayList = new ArrayList();
            while (i < bArr.length) {
                cVar.a++;
                if (bArr[i] == (byte) 0) {
                    break;
                }
                arrayList.add(Byte.valueOf(bArr[i]));
                i++;
            }
            cVar.b = new String(a(arrayList), "UTF-8");
        }
        return cVar;
    }

    private List<a> a(Class<?> cls) {
        List<a> arrayList = new ArrayList();
        ArrayList b = b(cls);
        for (int i = 0; i < b.size(); i++) {
            b a = a.a((Field) b.get(i));
            if (a != null) {
                a aVar = new a(this);
                aVar.a = a;
                aVar.b = (Field) b.get(i);
                arrayList.add(aVar);
            }
        }
        Collections.sort(arrayList, new b(this));
        return arrayList;
    }

    private void a(List<Byte> list, byte[] bArr, int i, int i2) {
        while (i < bArr.length && i < i2) {
            list.add(Byte.valueOf(bArr[i]));
            i++;
        }
    }

    private byte[] a(Class<?> cls, Object obj) throws UnsupportedEncodingException {
        byte[] bArr = null;
        if (cls == Byte.TYPE || cls == Byte.class) {
            byte byteValue = ((Byte) obj).byteValue();
            bArr = new byte[]{byteValue};
        }
        if (cls == Character.TYPE || cls == Character.class) {
            return new byte[]{(byte) ((Character) obj).charValue()};
        } else if (cls == Short.TYPE || cls == Short.class) {
            bArr = new byte[2];
            c.a(bArr, ((Short) obj).shortValue(), 0);
            return bArr;
        } else if (cls == Integer.TYPE || cls == Integer.class) {
            bArr = new byte[4];
            c.a(bArr, ((Integer) obj).intValue(), 0);
            return bArr;
        } else if (cls == Long.TYPE || cls == Long.class) {
            bArr = new byte[8];
            c.a(bArr, ((Long) obj).longValue(), 0);
            return bArr;
        } else if (cls == Float.TYPE || cls == Float.class) {
            bArr = new byte[4];
            c.a(bArr, ((Float) obj).floatValue(), 0);
            return bArr;
        } else if (cls == Double.TYPE || cls == Double.class) {
            bArr = new byte[8];
            c.a(bArr, ((Double) obj).doubleValue(), 0);
            return bArr;
        } else if (cls == Boolean.TYPE || cls == Boolean.class) {
            bArr = new byte[1];
            if (((Boolean) obj).booleanValue()) {
                bArr[0] = (byte) 1;
                return bArr;
            }
            bArr[0] = (byte) 0;
            return bArr;
        } else if (cls != String.class) {
            return bArr;
        } else {
            Object bytes = (obj == null ? bs.b : obj).getBytes("UTF-8");
            Object obj2 = new byte[(bytes.length + 1)];
            System.arraycopy(bytes, 0, obj2, 0, bytes.length);
            obj2[bytes.length] = null;
            return obj2;
        }
    }

    private byte[] a(List list) {
        int size = list.size();
        byte[] bArr = new byte[size];
        for (int i = 0; i < size; i++) {
            bArr[i] = ((Byte) list.get(i)).byteValue();
        }
        return bArr;
    }

    private ArrayList<Field> b(Class cls) {
        ArrayList<Field> arrayList = new ArrayList();
        for (Object add : cls.getDeclaredFields()) {
            arrayList.add(add);
        }
        if (cls.getSuperclass() != Object.class) {
            arrayList.addAll(b(cls.getSuperclass()));
        }
        return arrayList;
    }

    private boolean c(Class<?> cls) {
        try {
            return ((Class) cls.getField("TYPE").get(null)).isPrimitive();
        } catch (Exception e) {
            return false;
        }
    }

    public j a(byte[] bArr, int i) throws Exception {
        try {
            if (i + 28 <= bArr.length) {
                return (j) a(bArr, i, j.class).b;
            }
            throw new Exception(com.st.m.u.c.a(com.st.m.u.a.R));
        } catch (Exception e) {
            throw new Exception(new StringBuilder(String.valueOf(com.st.m.u.c.a(com.st.m.u.a.Sbu))).append(e.getLocalizedMessage()).toString());
        }
    }

    public c a(byte[] bArr, int i, Class<?> cls) throws Exception {
        c cVar = new c(this);
        cVar.b = cls.newInstance();
        List a = a((Class) cls);
        for (int i2 = 0; i2 < a.size(); i2++) {
            a aVar = (a) a.get(i2);
            aVar.b.setAccessible(true);
            c a2;
            if (aVar.b.getType().isPrimitive() || c(aVar.b.getType()) || aVar.b.getType() == String.class) {
                a2 = a(bArr, i, aVar.b.getType(), aVar);
                i += a2.a;
                aVar.b.set(cVar.b, a2.b);
            } else if (aVar.b.getType().isArray()) {
                r4 = c.b(bArr, i);
                i += 4;
                if (aVar.b.getType().getComponentType().isPrimitive() || c(aVar.b.getType().getComponentType()) || aVar.b.getType().getComponentType() == String.class) {
                    for (r1 = 0; r1 < r4; r1++) {
                        c a3 = a(bArr, i, aVar.b.getType().getComponentType(), aVar);
                        i += a3.a;
                        Array.set(aVar.b.get(cVar.b), r1, a3.b);
                    }
                    System.out.print("\n");
                } else {
                    throw new Exception(new StringBuilder(String.valueOf(aVar.b.getName())).append("     ").append(9999).toString());
                }
            } else if (List.class.isAssignableFrom(aVar.b.getType())) {
                int b = c.b(bArr, i);
                i += 4;
                Type genericType = aVar.b.getGenericType();
                if (genericType instanceof ParameterizedType) {
                    Class cls2 = (Class) ((ParameterizedType) genericType).getActualTypeArguments()[0];
                    List arrayList = new ArrayList();
                    int i3;
                    if (cls2.isPrimitive() || c(cls2) || cls2 == String.class) {
                        i3 = 0;
                        r4 = i;
                        while (i3 < b) {
                            c a4 = a(bArr, r4, cls2, aVar);
                            i = r4 + a4.a;
                            arrayList.add(a4.b);
                            i3++;
                            r4 = i;
                        }
                        r1 = r4;
                    } else {
                        i3 = 0;
                        r4 = i;
                        while (i3 < b) {
                            c a5 = a(bArr, r4, cls2);
                            i = a5.a;
                            arrayList.add(a5.b);
                            i3++;
                            r4 = i;
                        }
                        r1 = r4;
                    }
                    aVar.b.set(cVar.b, arrayList);
                    i = r1;
                }
            } else {
                a2 = a(bArr, i, aVar.b.getType());
                i = a2.a;
                aVar.b.set(cVar.b, a2.b);
            }
        }
        cVar.a = i;
        return cVar;
    }

    public Object a(byte[] bArr, int i, int i2, int i3) throws Exception {
        try {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            Class a = mf.a(i3);
            if (a == null) {
                throw new Exception(new StringBuilder(String.valueOf(8031)).append("    ").append(i3).append("     ").append(8032).toString());
            }
            pcv b = a.b(a);
            if (b != null && b.a()) {
                ef.da("-----", "encrypt:" + b.a());
                bArr2 = com.st.m.u.b.b(bArr2, this.a);
            }
            return a(bArr2, 0, a).b;
        } catch (Exception e) {
            throw new Exception(new StringBuilder(String.valueOf(8033)).append("    ").append(e.getLocalizedMessage()).toString());
        }
    }

    public byte[] a(if ifVar) throws Exception {
        try {
            ifVar.a.b = 28;
            if (ifVar.b == null) {
                throw new Exception(com.st.m.u.c.a(com.st.m.u.a.Qg));
            }
            Object a = a(ifVar.b);
            pcv a2 = a.a(ifVar.b);
            if (a2 != null && a2.a()) {
                a = com.st.m.u.b.a((byte[]) a, this.a);
            }
            j jVar = ifVar.a;
            jVar.b += a.length;
            Object a3 = a(ifVar.a);
            Object obj = new byte[(a3.length + a.length)];
            System.arraycopy(a3, 0, obj, 0, a3.length);
            System.arraycopy(a, 0, obj, a3.length, a.length);
            return obj;
        } catch (Exception e) {
            throw new Exception(" " + ifVar.b.getClass() + "    " + e.getLocalizedMessage());
        }
    }

    public byte[] a(Object obj) throws Exception {
        List a = a(obj.getClass());
        List arrayList = new ArrayList();
        for (int i = 0; i < a.size(); i++) {
            a aVar = (a) a.get(i);
            aVar.b.setAccessible(true);
            byte[] a2;
            if (aVar.b.getType().isPrimitive() || c(aVar.b.getType()) || aVar.b.getType() == String.class) {
                a2 = a(aVar.b.getType(), aVar.b.get(obj));
                a(arrayList, a2, 0, a2.length);
            } else if (aVar.b.getType().isArray()) {
                Object obj2 = aVar.b.get(obj);
                r7 = Array.getLength(obj2);
                byte[] bArr = new byte[4];
                c.a(bArr, r7, 0);
                a(arrayList, bArr, 0, bArr.length);
                if (aVar.b.getType().getComponentType().isPrimitive() || c(aVar.b.getType().getComponentType()) || aVar.b.getType().getComponentType() == String.class) {
                    for (int i2 = 0; i2 < r7; i2++) {
                        r8 = a(aVar.b.getType().getComponentType(), Array.get(obj2, i2));
                        a(arrayList, r8, 0, r8.length);
                    }
                } else {
                    throw new Exception(new StringBuilder(String.valueOf(aVar.b.getName())).append("     ").append(0).toString());
                }
            } else if (List.class.isAssignableFrom(aVar.b.getType())) {
                List list = (List) aVar.b.get(obj);
                r7 = list.size();
                byte[] bArr2 = new byte[4];
                c.a(bArr2, r7, 0);
                a(arrayList, bArr2, 0, bArr2.length);
                Type genericType = aVar.b.getGenericType();
                if (genericType instanceof ParameterizedType) {
                    Class cls = (Class) ((ParameterizedType) genericType).getActualTypeArguments()[0];
                    if (cls.isPrimitive() || c(cls) || cls == String.class) {
                        for (int i3 = 0; i3 < r7; i3++) {
                            r8 = a(cls, list.get(i3));
                            a(arrayList, r8, 0, r8.length);
                        }
                    } else {
                        for (int i4 = 0; i4 < r7; i4++) {
                            bArr2 = a(list.get(i4));
                            a(arrayList, bArr2, 0, bArr2.length);
                        }
                    }
                }
            } else {
                a2 = a(aVar.b.get(obj));
                a(arrayList, a2, 0, a2.length);
            }
        }
        return a(arrayList);
    }
}
