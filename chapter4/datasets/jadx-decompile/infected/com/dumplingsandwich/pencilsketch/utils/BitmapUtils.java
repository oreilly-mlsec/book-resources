package com.dumplingsandwich.pencilsketch.utils;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Array;

public class BitmapUtils {
    public static Bitmap decodeBitmap(String path, int w, int h) {
        Options o = new Options();
        o.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(path, o);
        int scale = 1;
        if (o.outWidth >= o.outHeight && o.outWidth > w) {
            scale = o.outWidth / w;
        }
        if (o.outHeight > o.outWidth && o.outHeight > h) {
            scale = (int) Math.pow(2.0d, (double) ((int) Math.round(Math.log(((double) h) / ((double) o.outHeight)) / Math.log(0.5d))));
        }
        Options o2 = new Options();
        o2.inSampleSize = scale;
        return BitmapFactory.decodeFile(path, o2);
    }

    public static Bitmap decodeResource(Resources res, int id, int w, int h) {
        Options o = new Options();
        o.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(res, id, o);
        int scale = 1;
        int dimension = Math.max(w, h);
        if (o.outHeight > h || o.outWidth > w) {
            scale = (int) Math.pow(2.0d, (double) ((int) Math.round(Math.log(((double) dimension) / ((double) Math.max(o.outHeight, o.outWidth))) / Math.log(0.5d))));
        }
        Options o2 = new Options();
        o2.inSampleSize = scale;
        return BitmapFactory.decodeResource(res, id, o2);
    }

    public static boolean saveImageOnPhone(Bitmap bm) {
        OutputStream outputStream;
        FileNotFoundException e;
        IOException e2;
        File imageFolder = new File(Environment.getExternalStorageDirectory().getAbsolutePath(), "Pencil_Sketch");
        imageFolder.mkdir();
        try {
            OutputStream outStream = new FileOutputStream(new File(imageFolder, "pencil_sketch_" + System.currentTimeMillis() + ".jpg"));
            try {
                bm.compress(CompressFormat.JPEG, 100, outStream);
                outStream.flush();
                outStream.close();
                outputStream = outStream;
                return true;
            } catch (FileNotFoundException e3) {
                e = e3;
                outputStream = outStream;
                e.printStackTrace();
                return false;
            } catch (IOException e4) {
                e2 = e4;
                outputStream = outStream;
                e2.printStackTrace();
                return false;
            }
        } catch (FileNotFoundException e5) {
            e = e5;
            e.printStackTrace();
            return false;
        } catch (IOException e6) {
            e2 = e6;
            e2.printStackTrace();
            return false;
        }
    }

    public static void emailImage(Context calling_context, Bitmap bitmap) {
        Uri imageUri = Uri.parse(Media.insertImage(calling_context.getContentResolver(), bitmap, "title", null));
        Intent emailIntent1 = new Intent("android.intent.action.SEND");
        emailIntent1.setFlags(268435456);
        emailIntent1.putExtra("android.intent.extra.STREAM", imageUri);
        emailIntent1.setType("image/png");
        calling_context.startActivity(Intent.createChooser(emailIntent1, "Send email using"));
    }

    public static int[][] getPixels_2D(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[][] pixels_2D = (int[][]) Array.newInstance(Integer.TYPE, new int[]{height, width});
        int[] pixels_1D = new int[(bitmap.getHeight() * bitmap.getWidth())];
        bitmap.getPixels(pixels_1D, 0, width, 0, 0, width, height);
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                pixels_2D[i][j] = pixels_1D[(i * width) + j];
            }
        }
        return pixels_2D;
    }

    public static int[] getPixels_1D(int[][] pixels_2D, int height, int width) {
        int[] pixels_1D = new int[(height * width)];
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                pixels_1D[(i * width) + j] = pixels_2D[i][j];
            }
        }
        return pixels_1D;
    }

    public static void shareImage(Context calling_context, Bitmap bitmap) {
        Uri imageUri = Uri.parse(Media.insertImage(calling_context.getContentResolver(), bitmap, "title", null));
        Intent share = new Intent("android.intent.action.SEND");
        share.setType("image/jpeg");
        share.putExtra("android.intent.extra.STREAM", imageUri);
        calling_context.startActivity(Intent.createChooser(share, "Share Image"));
    }
}
