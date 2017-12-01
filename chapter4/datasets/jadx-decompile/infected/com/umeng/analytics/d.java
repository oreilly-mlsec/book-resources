package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import u.aly.ad;
import u.aly.ag;
import u.aly.bs;
import u.aly.bt;
import u.aly.l;
import u.aly.n;
import u.aly.o;
import u.aly.v;
import u.aly.x;
import u.aly.z;

/* compiled from: InternalAgent */
public class d implements v {
    private Context a = null;
    private c b;
    private n c = new n();
    private ad d = new ad();
    private z e = new z();
    private o f;
    private l g;
    private boolean h = false;

    d() {
        this.c.a((v) this);
    }

    private void e(Context context) {
        if (!this.h) {
            this.a = context.getApplicationContext();
            this.f = new o(this.a);
            this.g = l.a(this.a);
            this.h = true;
        }
    }

    void a(String str) {
        if (!AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
            try {
                this.d.a(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    void b(String str) {
        if (!AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
            try {
                this.d.b(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void a(c cVar) {
        this.b = cVar;
    }

    public void a(int i) {
        AnalyticsConfig.mVerticalType = i;
    }

    public void a(String str, String str2) {
        AnalyticsConfig.mWrapperType = str;
        AnalyticsConfig.mWrapperVersion = str2;
    }

    void a(final Context context) {
        if (context == null) {
            bt.b(a.e, "unexpected null context in onResume");
            return;
        }
        if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
            this.d.a(context.getClass().getName());
        }
        try {
            if (!this.h) {
                e(context);
            }
            f.a(new g(this) {
                final /* synthetic */ d b;

                public void a() {
                    this.b.f(context.getApplicationContext());
                }
            });
        } catch (Exception e) {
            bt.b(a.e, "Exception occurred in Mobclick.onResume(). ", e);
        }
    }

    void b(final Context context) {
        if (context == null) {
            bt.b(a.e, "unexpected null context in onPause");
            return;
        }
        if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
            this.d.b(context.getClass().getName());
        }
        try {
            if (!this.h) {
                e(context);
            }
            f.a(new g(this) {
                final /* synthetic */ d b;

                public void a() {
                    this.b.g(context.getApplicationContext());
                }
            });
        } catch (Exception e) {
            bt.b(a.e, "Exception occurred in Mobclick.onRause(). ", e);
        }
    }

    public z a() {
        return this.e;
    }

    public void a(Context context, String str, HashMap<String, Object> hashMap) {
        try {
            if (!this.h) {
                e(context);
            }
            this.f.a(str, (Map) hashMap);
        } catch (Exception e) {
            bt.b(a.e, bs.b, e);
        }
    }

    void a(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            if (context == null) {
                bt.b(a.e, "unexpected null context in reportError");
                return;
            }
            try {
                if (!this.h) {
                    e(context);
                }
                this.g.a(new ag(str).a(false));
            } catch (Exception e) {
                bt.b(a.e, bs.b, e);
            }
        }
    }

    void a(Context context, Throwable th) {
        if (context != null && th != null) {
            try {
                if (!this.h) {
                    e(context);
                }
                this.g.a(new ag(th).a(false));
            } catch (Exception e) {
                bt.b(a.e, bs.b, e);
            }
        }
    }

    private void f(Context context) {
        this.e.c(context);
        if (this.b != null) {
            this.b.a();
        }
    }

    private void g(Context context) {
        this.e.d(context);
        this.d.a(context);
        if (this.b != null) {
            this.b.b();
        }
        this.g.b();
    }

    void c(Context context) {
        try {
            if (!this.h) {
                e(context);
            }
            this.g.a();
        } catch (Exception e) {
            bt.b(a.e, bs.b, e);
        }
    }

    public void a(Context context, String str, String str2, long j, int i) {
        try {
            if (!this.h) {
                e(context);
            }
            this.f.a(str, str2, j, i);
        } catch (Exception e) {
            bt.b(a.e, bs.b, e);
        }
    }

    void a(Context context, String str, Map<String, Object> map, long j) {
        try {
            if (!this.h) {
                e(context);
            }
            this.f.a(str, (Map) map, j);
        } catch (Exception e) {
            bt.b(a.e, bs.b, e);
        }
    }

    void a(Context context, final String str, final String str2) {
        try {
            if (!this.h) {
                e(context);
            }
            f.a(new g(this) {
                final /* synthetic */ d c;

                public void a() {
                    this.c.f.a(str, str2);
                }
            });
        } catch (Exception e) {
            bt.b(a.e, bs.b, e);
        }
    }

    void b(Context context, final String str, final String str2) {
        try {
            f.a(new g(this) {
                final /* synthetic */ d c;

                public void a() {
                    this.c.f.b(str, str2);
                }
            });
        } catch (Exception e) {
            bt.b(a.e, bs.b, e);
        }
    }

    void a(Context context, final String str, final HashMap<String, Object> hashMap, final String str2) {
        try {
            if (!this.h) {
                e(context);
            }
            f.a(new g(this) {
                final /* synthetic */ d d;

                public void a() {
                    this.d.f.a(str, hashMap, str2);
                }
            });
        } catch (Exception e) {
            bt.b(a.e, bs.b, e);
        }
    }

    void c(Context context, final String str, final String str2) {
        try {
            f.a(new g(this) {
                final /* synthetic */ d c;

                public void a() {
                    this.c.f.c(str, str2);
                }
            });
        } catch (Exception e) {
            bt.b(a.e, bs.b, e);
        }
    }

    void d(Context context) {
        try {
            this.d.a();
            g(context);
            x.a(context).edit().commit();
            f.a();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(Throwable th) {
        try {
            this.d.a();
            if (this.a != null) {
                if (!(th == null || this.g == null)) {
                    this.g.b(new ag(th));
                }
                g(this.a);
                x.a(this.a).edit().commit();
            }
            f.a();
        } catch (Exception e) {
            bt.b(a.e, "Exception in onAppCrash", e);
        }
    }

    void b(final String str, final String str2) {
        try {
            f.a(new g(this) {
                final /* synthetic */ d c;

                public void a() {
                    String[] a = e.a(this.c.a);
                    if (a == null || !str.equals(a[0]) || !str2.equals(a[1])) {
                        boolean e = this.c.a().e(this.c.a);
                        l.a(this.c.a).c();
                        if (e) {
                            this.c.a().f(this.c.a);
                        }
                        e.a(this.c.a, str, str2);
                    }
                }
            });
        } catch (Exception e) {
            bt.b(a.e, " Excepthon  in  onProfileSignIn", e);
        }
    }

    void b() {
        try {
            f.a(new g(this) {
                final /* synthetic */ d a;

                {
                    this.a = r1;
                }

                public void a() {
                    String[] a = e.a(this.a.a);
                    if (a != null && !TextUtils.isEmpty(a[0]) && !TextUtils.isEmpty(a[1])) {
                        boolean e = this.a.a().e(this.a.a);
                        l.a(this.a.a).c();
                        if (e) {
                            this.a.a().f(this.a.a);
                        }
                        e.b(this.a.a);
                    }
                }
            });
        } catch (Exception e) {
            bt.b(a.e, " Excepthon  in  onProfileSignOff", e);
        }
    }
}
