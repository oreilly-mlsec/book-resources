package com.dumplingsandwich.pencilsketch.utils;

import android.app.ProgressDialog;
import android.content.Context;

public class UIUtils {
    public static ProgressDialog getLoadingIndicator(Context calling_context, String message, boolean cancelable) {
        ProgressDialog loadingIndicator = new ProgressDialog(calling_context);
        loadingIndicator.setProgressStyle(1);
        loadingIndicator.setMessage(message);
        loadingIndicator.setCancelable(cancelable);
        return loadingIndicator;
    }
}
