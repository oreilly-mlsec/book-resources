package com.umeng.analytics.social;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import org.json.JSONObject;
import u.aly.bs;

public abstract class UMSocialService {

    private static class a extends AsyncTask<Void, Void, d> {
        String a;
        String b;
        b c;
        UMPlatformData[] d;

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return a((Void[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            a((d) obj);
        }

        public a(String[] strArr, b bVar, UMPlatformData[] uMPlatformDataArr) {
            this.a = strArr[0];
            this.b = strArr[1];
            this.c = bVar;
            this.d = uMPlatformDataArr;
        }

        protected void onPreExecute() {
            if (this.c != null) {
                this.c.a();
            }
        }

        protected d a(Void... voidArr) {
            String a;
            if (TextUtils.isEmpty(this.b)) {
                a = c.a(this.a);
            } else {
                a = c.a(this.a, this.b);
            }
            try {
                JSONObject jSONObject = new JSONObject(a);
                int optInt = jSONObject.optInt("st");
                d dVar = new d(optInt == 0 ? e.t : optInt);
                String optString = jSONObject.optString("msg");
                if (!TextUtils.isEmpty(optString)) {
                    dVar.a(optString);
                }
                Object optString2 = jSONObject.optString("data");
                if (TextUtils.isEmpty(optString2)) {
                    return dVar;
                }
                dVar.b(optString2);
                return dVar;
            } catch (Exception e) {
                return new d(-99, e);
            }
        }

        protected void a(d dVar) {
            if (this.c != null) {
                this.c.a(dVar, this.d);
            }
        }
    }

    public interface b {
        void a();

        void a(d dVar, UMPlatformData... uMPlatformDataArr);
    }

    private static void a(Context context, b bVar, String str, UMPlatformData... uMPlatformDataArr) {
        int i = 0;
        if (uMPlatformDataArr != null) {
            try {
                int length = uMPlatformDataArr.length;
                while (i < length) {
                    if (uMPlatformDataArr[i].isValid()) {
                        i++;
                    } else {
                        throw new a("parameter is not valid.");
                    }
                }
            } catch (Throwable e) {
                Log.e(com.umeng.analytics.a.e, "unable send event.", e);
                return;
            } catch (Throwable e2) {
                Log.e(com.umeng.analytics.a.e, bs.b, e2);
                return;
            }
        }
        new a(f.a(context, str, uMPlatformDataArr), bVar, uMPlatformDataArr).execute(new Void[0]);
    }

    public static void share(Context context, String str, UMPlatformData... uMPlatformDataArr) {
        a(context, null, str, uMPlatformDataArr);
    }

    public static void share(Context context, UMPlatformData... uMPlatformDataArr) {
        a(context, null, null, uMPlatformDataArr);
    }
}
