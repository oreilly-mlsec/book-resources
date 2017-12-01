package u.aly;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: UEKV */
public class af extends ax implements q {
    public af(String str, Map<String, Object> map, long j, int i) {
        a(str);
        b(System.currentTimeMillis());
        if (map.size() > 0) {
            a(b(map));
        }
        if (i <= 0) {
            i = 1;
        }
        a(i);
        if (j > 0) {
            a(j);
        }
    }

    private HashMap<String, bj> b(Map<String, Object> map) {
        Iterator it = map.entrySet().iterator();
        HashMap<String, bj> hashMap = new HashMap();
        int i = 0;
        while (i < 10 && it.hasNext()) {
            Entry entry = (Entry) it.next();
            bj bjVar = new bj();
            Object value = entry.getValue();
            if (value instanceof String) {
                bjVar.b((String) value);
            } else if (value instanceof Long) {
                bjVar.b(((Long) value).longValue());
            } else if (value instanceof Integer) {
                bjVar.b(((Integer) value).longValue());
            } else if (value instanceof Float) {
                bjVar.b(((Float) value).longValue());
            } else if (value instanceof Double) {
                bjVar.b(((Double) value).longValue());
            }
            if (bjVar.k()) {
                hashMap.put(entry.getKey(), bjVar);
                i++;
            }
        }
        return hashMap;
    }

    public static ae a(String str, String str2, Map<String, Object> map) {
        ae aeVar = new ae();
        aeVar.b = str;
        aeVar.c = str2;
        aeVar.d = map;
        return aeVar;
    }

    public static String b(String str, String str2, Map<String, Object> map) {
        return str + str2;
    }

    public void a(bp bpVar, String str) {
        if (bpVar.s() > 0) {
            for (be beVar : bpVar.u()) {
                if (str.equals(beVar.c())) {
                    break;
                }
            }
        }
        be beVar2 = null;
        if (beVar2 == null) {
            beVar2 = new be();
            beVar2.a(str);
            bpVar.a(beVar2);
        }
        beVar2.a((ax) this);
    }
}
