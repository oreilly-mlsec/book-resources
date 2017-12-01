package com.m.u;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.util.Locale;
import u.aly.bs;

public class d {
    public static final String aa = ae.aa(ac.cv);
    public static final String ab = ae.aa(ac.cw);
    public static final String ac = ae.aa(ac.cx);
    public static final String ad = ae.aa(ac.cy);
    public static final String ae = ae.aa(ac.cz);
    public static final String af = ae.aa(ac.da);
    public static final String ag = ae.aa(ac.db);
    public static final String ah = ae.aa(ac.dc);
    private static d ai = null;
    private SQLiteDatabase aj = null;
    private SQLiteOpenHelper ak;
    private Context al;

    public class aa extends SQLiteOpenHelper {
        final /* synthetic */ d aa;

        public aa(d dVar, Context context, String str, CursorFactory cursorFactory, int i) {
            this.aa = dVar;
            super(context, str, cursorFactory, i);
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS " + d.ab + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, " + d.ac + " text, " + d.ad + " text)");
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i2 > i) {
                try {
                    this.aa.aa(sQLiteDatabase);
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            onCreate(sQLiteDatabase);
        }
    }

    public d(Context context) {
        this.al = context;
    }

    public static synchronized d aa(Context context) {
        d dVar;
        synchronized (d.class) {
            if (ai == null) {
                ai = new d(context);
            }
            if (!ai.ab()) {
                ai.aa();
            }
            dVar = ai;
        }
        return dVar;
    }

    private void aa(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("drop table if exists " + ab);
    }

    private boolean ab() {
        return (this.ak == null || this.aj == null) ? false : true;
    }

    public String aa(String str) {
        String str2 = bs.b;
        if (this.aj == null) {
            return str2;
        }
        String string;
        Cursor query = this.aj.query(true, ab, new String[]{ad}, ac + "='" + str + "'", null, null, null, null, null);
        if (query.getCount() > 0) {
            query.moveToFirst();
            string = query.getString(query.getColumnIndex(ad));
        } else {
            string = str2;
        }
        query.close();
        return string;
    }

    public void aa() {
        try {
            this.ak = new aa(this, this.al, aa, null, 1);
            this.aj = this.ak.getWritableDatabase();
            this.aj.setLocale(Locale.CHINESE);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void aa(String str, String str2) {
        if (this.aj != null) {
            CharSequence aa = aa(str);
            if (TextUtils.isEmpty(aa)) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(ac, str);
                contentValues.put(ad, str2);
                this.aj.insert(ab, null, contentValues);
            } else if (!str2.equals(aa)) {
                ab(str, str2);
            }
        }
    }

    public void ab(String str, String str2) {
        if (this.aj != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(ac, str);
            contentValues.put(ad, str2);
            this.aj.update(ab, contentValues, ac + "='" + str + "'", null);
        }
    }
}
