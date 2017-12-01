package com.m.u;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class h extends SQLiteOpenHelper {
    private static final String aa = ae.aa(ac.dd);
    private static final String ab = ae.aa(ac.de);
    private static final String ac = ae.aa(ac.df);
    private static final String ad = ae.aa(ac.dg);
    private static final String ae = ae.aa(ac.dh);

    public h(Context context) {
        super(context, aa, null, 1);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS " + ab + " (id integer primary key autoincrement, " + ac + " varchar(100), " + ad + " INTEGER, " + ae + " INTEGER)");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + ab);
        onCreate(sQLiteDatabase);
    }
}
