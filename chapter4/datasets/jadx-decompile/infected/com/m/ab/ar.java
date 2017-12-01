package com.m.ab;

import com.m.u.ad;
import com.m.u.ae;
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

public class ar {
    private byte[] aa = ae.aa().getBytes();

    class aa {
        public ac aa;
        public Field ab;
        final /* synthetic */ ar ac;

        aa(ar arVar) {
            this.ac = arVar;
        }
    }

    class ab implements Comparator {
        final /* synthetic */ ar aa;

        ab(ar arVar) {
            this.aa = arVar;
        }

        public int compare(Object obj, Object obj2) {
            return ((aa) obj).aa.aa() > ((aa) obj2).aa.aa() ? 1 : -1;
        }
    }

    class ac {
        public int aa;
        public Object ab;
        final /* synthetic */ ar ac;

        ac(ar arVar) {
            this.ac = arVar;
        }
    }

    private ac aa(byte[] bArr, int i, Class<?> cls, aa aaVar) throws Exception {
        ac acVar = new ac(this);
        if (cls == Byte.TYPE || cls == Byte.class) {
            acVar.aa = 1;
            acVar.ab = new Byte(bArr[i]);
        }
        if (cls == Character.TYPE || cls == Character.class) {
            acVar.aa = 1;
            acVar.ab = Character.valueOf((char) bArr[i]);
        } else if (cls == Short.TYPE || cls == Short.class) {
            acVar.aa = 2;
            acVar.ab = Short.valueOf(ad.aa(bArr, i));
        } else if (cls == Integer.TYPE || cls == Integer.class) {
            if (aaVar.aa.ab() == 1) {
                acVar.aa = 1;
                acVar.ab = Integer.valueOf(ad.aa(bArr[i]));
            } else {
                acVar.aa = 4;
                acVar.ab = Integer.valueOf(ad.ab(bArr, i));
            }
        } else if (cls == Long.TYPE || cls == Long.class) {
            acVar.aa = 8;
            acVar.ab = Long.valueOf(ad.ac(bArr, i));
        } else if (cls == Float.TYPE || cls == Float.class) {
            acVar.aa = 4;
            acVar.ab = Float.valueOf(ad.ad(bArr, i));
        } else if (cls == Double.TYPE || cls == Double.class) {
            acVar.aa = 8;
            acVar.ab = Double.valueOf(ad.ae(bArr, i));
        } else if (cls == Boolean.TYPE || cls == Boolean.class) {
            acVar.aa = 1;
            if (bArr[i] == (byte) 1) {
                acVar.ab = Boolean.valueOf(true);
            } else {
                acVar.ab = Boolean.valueOf(false);
            }
        } else if (cls == String.class) {
            List arrayList = new ArrayList();
            while (i < bArr.length) {
                acVar.aa++;
                if (bArr[i] == (byte) 0) {
                    break;
                }
                arrayList.add(Byte.valueOf(bArr[i]));
                i++;
            }
            acVar.ab = new String(aa(arrayList), "UTF-8");
        }
        return acVar;
    }

    private List<aa> aa(Class<?> cls) {
        List<aa> arrayList = new ArrayList();
        ArrayList ab = ab(cls);
        for (int i = 0; i < ab.size(); i++) {
            ac aa = ab.aa((Field) ab.get(i));
            if (aa != null) {
                aa aaVar = new aa(this);
                aaVar.aa = aa;
                aaVar.ab = (Field) ab.get(i);
                arrayList.add(aaVar);
            }
        }
        Collections.sort(arrayList, new ab(this));
        return arrayList;
    }

    private void aa(List<Byte> list, byte[] bArr, int i, int i2) {
        while (i < bArr.length && i < i2) {
            list.add(Byte.valueOf(bArr[i]));
            i++;
        }
    }

    private byte[] aa(Class<?> cls, Object obj) throws UnsupportedEncodingException {
        byte[] bArr = null;
        if (cls == Byte.TYPE || cls == Byte.class) {
            byte byteValue = ((Byte) obj).byteValue();
            bArr = new byte[]{byteValue};
        }
        if (cls == Character.TYPE || cls == Character.class) {
            return new byte[]{(byte) ((Character) obj).charValue()};
        } else if (cls == Short.TYPE || cls == Short.class) {
            bArr = new byte[2];
            ad.aa(bArr, ((Short) obj).shortValue(), 0);
            return bArr;
        } else if (cls == Integer.TYPE || cls == Integer.class) {
            bArr = new byte[4];
            ad.aa(bArr, ((Integer) obj).intValue(), 0);
            return bArr;
        } else if (cls == Long.TYPE || cls == Long.class) {
            bArr = new byte[8];
            ad.aa(bArr, ((Long) obj).longValue(), 0);
            return bArr;
        } else if (cls == Float.TYPE || cls == Float.class) {
            bArr = new byte[4];
            ad.aa(bArr, ((Float) obj).floatValue(), 0);
            return bArr;
        } else if (cls == Double.TYPE || cls == Double.class) {
            bArr = new byte[8];
            ad.aa(bArr, ((Double) obj).doubleValue(), 0);
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

    private byte[] aa(List list) {
        int size = list.size();
        byte[] bArr = new byte[size];
        for (int i = 0; i < size; i++) {
            bArr[i] = ((Byte) list.get(i)).byteValue();
        }
        return bArr;
    }

    private ArrayList<Field> ab(Class cls) {
        ArrayList<Field> arrayList = new ArrayList();
        for (Object add : cls.getDeclaredFields()) {
            arrayList.add(add);
        }
        if (cls.getSuperclass() != Object.class) {
            arrayList.addAll(ab(cls.getSuperclass()));
        }
        return arrayList;
    }

    private boolean ac(Class<?> cls) {
        try {
            return ((Class) cls.getField("TYPE").get(null)).isPrimitive();
        } catch (Exception e) {
            return false;
        }
    }

    public ap aa(byte[] bArr, int i) throws Exception {
        try {
            if (i + 28 <= bArr.length) {
                return (ap) aa(bArr, i, ap.class).ab;
            }
            throw new Exception(ae.aa(com.m.u.ac.fi));
        } catch (Exception e) {
            throw new Exception(new StringBuilder(String.valueOf(ae.aa(com.m.u.ac.fj))).append(e.getLocalizedMessage()).toString());
        }
    }

    public ac aa(byte[] bArr, int i, Class<?> cls) throws Exception {
        ac acVar = new ac(this);
        acVar.ab = cls.newInstance();
        List aa = aa((Class) cls);
        for (int i2 = 0; i2 < aa.size(); i2++) {
            aa aaVar = (aa) aa.get(i2);
            aaVar.ab.setAccessible(true);
            ac aa2;
            if (aaVar.ab.getType().isPrimitive() || ac(aaVar.ab.getType()) || aaVar.ab.getType() == String.class) {
                aa2 = aa(bArr, i, aaVar.ab.getType(), aaVar);
                i += aa2.aa;
                aaVar.ab.set(acVar.ab, aa2.ab);
            } else if (aaVar.ab.getType().isArray()) {
                r4 = ad.ab(bArr, i);
                i += 4;
                if (aaVar.ab.getType().getComponentType().isPrimitive() || ac(aaVar.ab.getType().getComponentType()) || aaVar.ab.getType().getComponentType() == String.class) {
                    for (r1 = 0; r1 < r4; r1++) {
                        ac aa3 = aa(bArr, i, aaVar.ab.getType().getComponentType(), aaVar);
                        i += aa3.aa;
                        Array.set(aaVar.ab.get(acVar.ab), r1, aa3.ab);
                    }
                    System.out.print("\n");
                } else {
                    throw new Exception(new StringBuilder(String.valueOf(aaVar.ab.getName())).append("     ").append(9999).toString());
                }
            } else if (List.class.isAssignableFrom(aaVar.ab.getType())) {
                int ab = ad.ab(bArr, i);
                i += 4;
                Type genericType = aaVar.ab.getGenericType();
                if (genericType instanceof ParameterizedType) {
                    Class cls2 = (Class) ((ParameterizedType) genericType).getActualTypeArguments()[0];
                    List arrayList = new ArrayList();
                    int i3;
                    if (cls2.isPrimitive() || ac(cls2) || cls2 == String.class) {
                        i3 = 0;
                        r4 = i;
                        while (i3 < ab) {
                            ac aa4 = aa(bArr, r4, cls2, aaVar);
                            i = r4 + aa4.aa;
                            arrayList.add(aa4.ab);
                            i3++;
                            r4 = i;
                        }
                        r1 = r4;
                    } else {
                        i3 = 0;
                        r4 = i;
                        while (i3 < ab) {
                            ac aa5 = aa(bArr, r4, cls2);
                            i = aa5.aa;
                            arrayList.add(aa5.ab);
                            i3++;
                            r4 = i;
                        }
                        r1 = r4;
                    }
                    aaVar.ab.set(acVar.ab, arrayList);
                    i = r1;
                }
            } else {
                aa2 = aa(bArr, i, aaVar.ab.getType());
                i = aa2.aa;
                aaVar.ab.set(acVar.ab, aa2.ab);
            }
        }
        acVar.aa = i;
        return acVar;
    }

    public Object aa(byte[] bArr, int i, int i2, int i3) throws Exception {
        try {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            Class aa = as.aa(i3);
            if (aa == null) {
                throw new Exception(new StringBuilder(String.valueOf(8031)).append("    ").append(i3).append("     ").append(8032).toString());
            }
            av ab = ab.ab(aa);
            if (ab != null && ab.aa()) {
                bArr2 = ad.ab(bArr2, this.aa);
            }
            return aa(bArr2, 0, aa).ab;
        } catch (Exception e) {
            throw new Exception(new StringBuilder(String.valueOf(8033)).append("    ").append(e.getLocalizedMessage()).toString());
        }
    }

    public byte[] aa(ao aoVar) throws Exception {
        try {
            aoVar.aa.ab = 28;
            if (aoVar.ab == null) {
                throw new Exception(ae.aa(com.m.u.ac.fh));
            }
            Object aa = aa(aoVar.ab);
            av aa2 = ab.aa(aoVar.ab);
            if (aa2 != null && aa2.aa()) {
                aa = ad.aa((byte[]) aa, this.aa);
            }
            ap apVar = aoVar.aa;
            apVar.ab += aa.length;
            Object aa3 = aa(aoVar.aa);
            Object obj = new byte[(aa3.length + aa.length)];
            System.arraycopy(aa3, 0, obj, 0, aa3.length);
            System.arraycopy(aa, 0, obj, aa3.length, aa.length);
            return obj;
        } catch (Exception e) {
            throw new Exception(" " + aoVar.ab.getClass() + "    " + e.getLocalizedMessage());
        }
    }

    public byte[] aa(Object obj) throws Exception {
        List aa = aa(obj.getClass());
        List arrayList = new ArrayList();
        for (int i = 0; i < aa.size(); i++) {
            aa aaVar = (aa) aa.get(i);
            aaVar.ab.setAccessible(true);
            byte[] aa2;
            if (aaVar.ab.getType().isPrimitive() || ac(aaVar.ab.getType()) || aaVar.ab.getType() == String.class) {
                aa2 = aa(aaVar.ab.getType(), aaVar.ab.get(obj));
                aa(arrayList, aa2, 0, aa2.length);
            } else if (aaVar.ab.getType().isArray()) {
                Object obj2 = aaVar.ab.get(obj);
                r7 = Array.getLength(obj2);
                byte[] bArr = new byte[4];
                ad.aa(bArr, r7, 0);
                aa(arrayList, bArr, 0, bArr.length);
                if (aaVar.ab.getType().getComponentType().isPrimitive() || ac(aaVar.ab.getType().getComponentType()) || aaVar.ab.getType().getComponentType() == String.class) {
                    for (int i2 = 0; i2 < r7; i2++) {
                        r8 = aa(aaVar.ab.getType().getComponentType(), Array.get(obj2, i2));
                        aa(arrayList, r8, 0, r8.length);
                    }
                } else {
                    throw new Exception(new StringBuilder(String.valueOf(aaVar.ab.getName())).append("     ").append(0).toString());
                }
            } else if (List.class.isAssignableFrom(aaVar.ab.getType())) {
                List list = (List) aaVar.ab.get(obj);
                r7 = list.size();
                byte[] bArr2 = new byte[4];
                ad.aa(bArr2, r7, 0);
                aa(arrayList, bArr2, 0, bArr2.length);
                Type genericType = aaVar.ab.getGenericType();
                if (genericType instanceof ParameterizedType) {
                    Class cls = (Class) ((ParameterizedType) genericType).getActualTypeArguments()[0];
                    if (cls.isPrimitive() || ac(cls) || cls == String.class) {
                        for (int i3 = 0; i3 < r7; i3++) {
                            r8 = aa(cls, list.get(i3));
                            aa(arrayList, r8, 0, r8.length);
                        }
                    } else {
                        for (int i4 = 0; i4 < r7; i4++) {
                            bArr2 = aa(list.get(i4));
                            aa(arrayList, bArr2, 0, bArr2.length);
                        }
                    }
                }
            } else {
                aa2 = aa(aaVar.ab.get(obj));
                aa(arrayList, aa2, 0, aa2.length);
            }
        }
        return aa(arrayList);
    }
}
