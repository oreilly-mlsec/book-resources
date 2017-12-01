package com.m.u;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class f {
    private static final String ab = ae.aa(ac.di);
    private static final String ac = ae.aa(ac.dj);
    private static final String ad = ae.aa(ac.dk);
    private static final String ae = ae.aa(ac.dl);
    private h aa;

    public f(Context context) {
        this.aa = new h(context);
    }

    public Map<Integer, Integer> aa(String str) {
        SQLiteDatabase readableDatabase = this.aa.getReadableDatabase();
        Cursor rawQuery = readableDatabase.rawQuery(ab, new String[]{str});
        Map<Integer, Integer> hashMap = new HashMap();
        while (rawQuery.moveToNext()) {
            hashMap.put(Integer.valueOf(rawQuery.getInt(0)), Integer.valueOf(rawQuery.getInt(1)));
        }
        rawQuery.close();
        readableDatabase.close();
        return hashMap;
    }

    public void aa(String str, int i, int i2) {
        SQLiteDatabase writableDatabase = this.aa.getWritableDatabase();
        writableDatabase.execSQL(ad, new Object[]{Integer.valueOf(i2), str, Integer.valueOf(i)});
        writableDatabase.close();
    }

    public void aa(String str, Map<Integer, Integer> map) {
        SQLiteDatabase writableDatabase = this.aa.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            for (Entry entry : map.entrySet()) {
                writableDatabase.execSQL(ac, new Object[]{str, entry.getKey(), entry.getValue()});
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.close();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void ab(String str) {
        SQLiteDatabase writableDatabase = this.aa.getWritableDatabase();
        writableDatabase.execSQL(ae, new Object[]{str});
        writableDatabase.close();
    }
}
