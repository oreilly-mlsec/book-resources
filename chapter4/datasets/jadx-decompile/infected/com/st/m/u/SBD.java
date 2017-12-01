package com.st.m.u;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.util.Locale;
import u.aly.bs;

public class SBD {
    public static final String a = c.a(a.wvc);
    public static final String b = c.a(a.xzx);
    public static final String c = c.a(a.y);
    public static final String da = c.a(a.zf);
    public static final String ef = c.a(a.Av);
    private static SBD f = null;
    private SQLiteDatabase gt = null;
    private SQLiteOpenHelper hd;
    private Context if;

    public class a extends SQLiteOpenHelper {
        final /* synthetic */ SBD a;

        public a(SBD sbd, Context context, String str, CursorFactory cursorFactory, int i) {
            this.a = sbd;
            super(context, str, cursorFactory, i);
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS " + SBD.b + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, " + SBD.c + " text, " + SBD.da + " text)");
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i2 > i) {
                try {
                    this.a.a(sQLiteDatabase);
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            onCreate(sQLiteDatabase);
        }
    }

    public SBD(Context context) {
        this.if = context;
    }

    public static synchronized SBD a(Context context) {
        SBD sbd;
        synchronized (SBD.class) {
            if (f == null) {
                f = new SBD(context);
            }
            if (!f.b()) {
                f.a();
            }
            sbd = f;
        }
        return sbd;
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("drop table if exists " + b);
    }

    private boolean b() {
        return (this.hd == null || this.gt == null) ? false : true;
    }

    public String a(String str) {
        String str2 = bs.b;
        if (this.gt == null) {
            return str2;
        }
        String string;
        Cursor query = this.gt.query(true, b, new String[]{da}, c + "='" + str + "'", null, null, null, null, null);
        if (query.getCount() > 0) {
            query.moveToFirst();
            string = query.getString(query.getColumnIndex(da));
        } else {
            string = str2;
        }
        query.close();
        return string;
    }

    public void a() {
        try {
            this.hd = new a(this, this.if, a, null, 1);
            this.gt = this.hd.getWritableDatabase();
            this.gt.setLocale(Locale.CHINESE);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(String str, String str2) {
        if (this.gt != null) {
            CharSequence a = a(str);
            if (TextUtils.isEmpty(a)) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(c, str);
                contentValues.put(da, str2);
                this.gt.insert(b, null, contentValues);
            } else if (!str2.equals(a)) {
                b(str, str2);
            }
        }
    }

    public void b(String str, String str2) {
        if (this.gt != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(c, str);
            contentValues.put(da, str2);
            this.gt.update(b, contentValues, c + "='" + str + "'", null);
        }
    }
}
