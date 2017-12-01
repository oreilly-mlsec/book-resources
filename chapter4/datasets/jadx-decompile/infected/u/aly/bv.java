package u.aly;

import android.os.AsyncTask;

/* compiled from: ReportClient */
public class bv extends by {
    private static final String a = bv.class.getName();

    /* compiled from: ReportClient */
    public interface a {
        void a();

        void a(u.aly.bx.a aVar);
    }

    /* compiled from: ReportClient */
    private class b extends AsyncTask<Integer, Integer, u.aly.bx.a> {
        final /* synthetic */ bv a;
        private bw b;
        private a c;

        protected /* synthetic */ Object doInBackground(Object... objArr) {
            return a((Integer[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            a((u.aly.bx.a) obj);
        }

        public b(bv bvVar, bw bwVar, a aVar) {
            this.a = bvVar;
            this.b = bwVar;
            this.c = aVar;
        }

        protected void onPreExecute() {
            if (this.c != null) {
                this.c.a();
            }
        }

        protected void a(u.aly.bx.a aVar) {
            if (this.c != null) {
                this.c.a(aVar);
            }
        }

        protected u.aly.bx.a a(Integer... numArr) {
            return this.a.a(this.b);
        }
    }

    public u.aly.bx.a a(bw bwVar) {
        bx bxVar = (bx) a((bz) bwVar, bx.class);
        return bxVar == null ? u.aly.bx.a.FAIL : bxVar.a;
    }

    public void a(bw bwVar, a aVar) {
        try {
            new b(this, bwVar, aVar).execute(new Integer[0]);
        } catch (Exception e) {
            bt.b(a, bs.b, e);
            if (aVar != null) {
                aVar.a(u.aly.bx.a.FAIL);
            }
        }
    }
}
