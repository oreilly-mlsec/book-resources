package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.umeng.analytics.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: ViewPageTracker */
public class ad {
    private static final String a = "activities";
    private final Map<String, Long> b = new HashMap();
    private final ArrayList<ab> c = new ArrayList();

    public void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.b) {
                this.b.put(str, Long.valueOf(System.currentTimeMillis()));
            }
        }
    }

    public void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            Long l;
            synchronized (this.b) {
                l = (Long) this.b.remove(str);
            }
            if (l == null) {
                bt.e(a.e, String.format("please call 'onPageStart(%s)' before onPageEnd", new Object[]{str}));
                return;
            }
            long currentTimeMillis = System.currentTimeMillis() - l.longValue();
            synchronized (this.c) {
                this.c.add(new ab(str, currentTimeMillis));
            }
        }
    }

    public void a() {
        String str = null;
        long j = 0;
        synchronized (this.b) {
            for (Entry entry : this.b.entrySet()) {
                String str2;
                long longValue;
                if (((Long) entry.getValue()).longValue() > j) {
                    str2 = (String) entry.getKey();
                    longValue = ((Long) entry.getValue()).longValue();
                } else {
                    longValue = j;
                    str2 = str;
                }
                str = str2;
                j = longValue;
            }
        }
        if (str != null) {
            b(str);
        }
    }

    public void a(Context context) {
        SharedPreferences a = x.a(context);
        Editor edit = a.edit();
        if (this.c.size() > 0) {
            Object string = a.getString(a, bs.b);
            StringBuilder stringBuilder = new StringBuilder();
            if (!TextUtils.isEmpty(string)) {
                stringBuilder.append(string);
                stringBuilder.append(";");
            }
            synchronized (this.c) {
                Iterator it = this.c.iterator();
                while (it.hasNext()) {
                    ab abVar = (ab) it.next();
                    stringBuilder.append(String.format("[\"%s\",%d]", new Object[]{abVar.a, Long.valueOf(abVar.b)}));
                    stringBuilder.append(";");
                }
                this.c.clear();
            }
            stringBuilder.deleteCharAt(stringBuilder.length() - 1);
            edit.remove(a);
            edit.putString(a, stringBuilder.toString());
        }
        edit.commit();
    }

    public static List<bi> a(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString(a, bs.b);
        if (bs.b.equals(string)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            String[] split = string.split(";");
            for (String str : split) {
                if (!TextUtils.isEmpty(str)) {
                    arrayList.add(new ai(str));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }
}
