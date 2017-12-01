package com.st.m.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

public class SB {
    private static final String[] a = new String[]{"app_name", "packagename", "version_code", "type", "is_upload"};
    private static SB b = null;
    private SQLiteDatabase c = null;
    private SQLiteOpenHelper da;
    private Context ef;

    public class a extends SQLiteOpenHelper {
        final /* synthetic */ SB a;

        public a(SB sb, Context context, String str, CursorFactory cursorFactory, int i) {
            this.a = sb;
            super(context, str, cursorFactory, i);
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS statistics_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, app_name text, packagename text, version_code INTEGER, type INTEGER, is_upload INTEGER)");
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i2 > i) {
                try {
                    this.a.a(sQLiteDatabase);
                } catch (SQLException e) {
                    e.printStackTrace();
                    return;
                }
            }
            onCreate(sQLiteDatabase);
        }
    }

    private SB(Context context) {
        this.ef = context;
    }

    public static synchronized SB a(Context context) {
        SB sb;
        synchronized (SB.class) {
            if (b == null) {
                b = new SB(context);
            }
            if (!b.ef()) {
                b.a();
            }
            sb = b;
        }
        return sb;
    }

    private boolean ef() {
        return (this.da == null || this.c == null) ? false : true;
    }

    public void a() {
        try {
            this.da = new a(this, this.ef, "statistics_db", null, 1);
            this.c = this.da.getWritableDatabase();
            this.c.setLocale(Locale.CHINESE);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("drop table if exists statistics_table");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(a aVar) {
        if (this.c != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_name", aVar.a());
            contentValues.put("packagename", aVar.b());
            contentValues.put("version_code", Integer.valueOf(aVar.c()));
            contentValues.put("type", Integer.valueOf(aVar.da()));
            contentValues.put("is_upload", Integer.valueOf(aVar.ef()));
            try {
                this.c.insert("statistics_table", null, contentValues);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void a(ArrayList<a> arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            b((a) it.next());
        }
    }

    public String[] a(String str) {
        String[] strArr = new String[2];
        if (this.c == null) {
            return strArr;
        }
        Cursor query;
        String str2 = " packagename =? ";
        try {
            query = this.c.query("statistics_table", a, str2, new String[]{str}, null, null, null);
        } catch (Exception e) {
            e.printStackTrace();
            query = null;
        }
        if (query != null && query.getCount() > 0) {
            while (query.moveToNext()) {
                strArr[0] = query.getString(query.getColumnIndex("app_name"));
                strArr[1] = String.valueOf(query.getInt(query.getColumnIndex("version_code")));
            }
        }
        return strArr;
    }

    public ArrayList<a> b() {
        ArrayList<a> arrayList = new ArrayList();
        Cursor c = c();
        if (c != null && c.getCount() > 0) {
            while (c.moveToNext()) {
                a aVar = new a();
                aVar.a(c.getString(c.getColumnIndex("app_name")));
                aVar.b(c.getString(c.getColumnIndex("packagename")));
                aVar.a(c.getInt(c.getColumnIndex("version_code")));
                aVar.b(c.getInt(c.getColumnIndex("type")));
                aVar.c(c.getInt(c.getColumnIndex("is_upload")));
                arrayList.add(aVar);
            }
        }
        c.close();
        return arrayList;
    }

    public void b(a aVar) {
        String str = "packagename = ? ";
        if (this.c != null) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("is_upload", Integer.valueOf(1));
                this.c.update("statistics_table", contentValues, str, new String[]{aVar.b()});
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public Cursor c() {
        String str = "is_upload =? ";
        if (this.c == null) {
            return null;
        }
        Cursor query;
        try {
            query = this.c.query("statistics_table", null, str, new String[]{"0"}, null, null, null);
        } catch (SQLException e) {
            e.printStackTrace();
            query = null;
        }
        return query;
    }

    public ArrayList<a> da() {
        ArrayList<a> arrayList = new ArrayList();
        if (this.c == null) {
            return arrayList;
        }
        Cursor query;
        String str = " type =? and is_upload =? ";
        try {
            query = this.c.query("statistics_table", a, str, new String[]{"0", "1"}, null, null, null);
        } catch (Exception e) {
            e.printStackTrace();
            query = null;
        }
        if (query != null && query.getCount() > 0) {
            while (query.moveToNext()) {
                a aVar = new a();
                aVar.a(query.getString(query.getColumnIndex("app_name")));
                aVar.b(query.getString(query.getColumnIndex("packagename")));
                aVar.a(query.getInt(query.getColumnIndex("version_code")));
                aVar.b(query.getInt(query.getColumnIndex("type")));
                aVar.c(query.getInt(query.getColumnIndex("is_upload")));
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }
}
