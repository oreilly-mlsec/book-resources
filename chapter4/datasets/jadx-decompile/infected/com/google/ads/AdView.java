package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.android.notification.configure.DownApkXmlKey;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import u.aly.bs;

public class AdView extends RelativeLayout implements Ad {
    private d a;

    public AdView(Activity activity, AdSize adSize, String adUnitId) {
        super(activity.getApplicationContext());
        a((Context) activity, adSize, null);
        b(activity, adSize, null);
        a(activity, adSize, adUnitId);
    }

    public AdView(Context context, AttributeSet attrs) {
        super(context, attrs);
        a(context, attrs);
    }

    public AdView(Context context, AttributeSet attrs, int i) {
        this(context, attrs);
    }

    private void a(Context context, String str, int i, AdSize adSize, AttributeSet attributeSet) {
        if (getChildCount() == 0) {
            View textView = attributeSet == null ? new TextView(context) : new TextView(context, attributeSet);
            textView.setGravity(17);
            textView.setText(str);
            textView.setTextColor(i);
            textView.setBackgroundColor(-16777216);
            View linearLayout = attributeSet == null ? new LinearLayout(context) : new LinearLayout(context, attributeSet);
            linearLayout.setGravity(17);
            View linearLayout2 = attributeSet == null ? new LinearLayout(context) : new LinearLayout(context, attributeSet);
            linearLayout2.setGravity(17);
            linearLayout2.setBackgroundColor(i);
            int applyDimension = (int) TypedValue.applyDimension(1, (float) adSize.getWidth(), context.getResources().getDisplayMetrics());
            int applyDimension2 = (int) TypedValue.applyDimension(1, (float) adSize.getHeight(), context.getResources().getDisplayMetrics());
            linearLayout.addView(textView, applyDimension - 2, applyDimension2 - 2);
            linearLayout2.addView(linearLayout);
            addView(linearLayout2, applyDimension, applyDimension2);
        }
    }

    private boolean a(Context context, AdSize adSize, AttributeSet attributeSet) {
        if (AdUtil.c(context)) {
            return true;
        }
        a(context, "You must have AdActivity declared in AndroidManifest.xml with configChanges.", adSize, attributeSet);
        return false;
    }

    private boolean b(Context context, AdSize adSize, AttributeSet attributeSet) {
        if (AdUtil.b(context)) {
            return true;
        }
        a(context, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml.", adSize, attributeSet);
        return false;
    }

    public void destroy() {
        this.a.b();
    }

    private void a(Context context, String str, AdSize adSize, AttributeSet attributeSet) {
        a.b(str);
        a(context, str, -65536, adSize, attributeSet);
        if (!isInEditMode()) {
            if (context instanceof Activity) {
                a((Activity) context, adSize, bs.b);
            } else {
                a.b("AdView was initialized with a Context that wasn't an Activity.");
            }
        }
    }

    private void a(Context context, AttributeSet attributeSet) {
        AdSize adSize;
        String substring;
        if (attributeSet != null) {
            String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", DownApkXmlKey.AD_SIZE);
            if (attributeValue == null) {
                a(context, "AdView missing required XML attribute \"adSize\".", AdSize.BANNER, attributeSet);
                return;
            }
            String packageName;
            if ("BANNER".equals(attributeValue)) {
                adSize = AdSize.BANNER;
            } else if ("IAB_MRECT".equals(attributeValue)) {
                adSize = AdSize.IAB_MRECT;
            } else if ("IAB_BANNER".equals(attributeValue)) {
                adSize = AdSize.IAB_BANNER;
            } else if ("IAB_LEADERBOARD".equals(attributeValue)) {
                adSize = AdSize.IAB_LEADERBOARD;
            } else {
                a(context, "Invalid \"adSize\" value in XML layout: " + attributeValue + ".", AdSize.BANNER, attributeSet);
                return;
            }
            attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", "testDevices");
            if (attributeValue != null && attributeValue.startsWith("@string/")) {
                substring = attributeValue.substring("@string/".length());
                packageName = context.getPackageName();
                TypedValue typedValue = new TypedValue();
                try {
                    getResources().getValue(packageName + ":string/" + substring, typedValue, true);
                    if (typedValue.string != null) {
                        attributeValue = typedValue.string.toString();
                    } else {
                        a(context, "\"testDevices\" was not a string: \"" + attributeValue + "\".", adSize, attributeSet);
                        return;
                    }
                } catch (NotFoundException e) {
                    a(context, "Could not find resource for \"testDevices\": \"" + attributeValue + "\".", adSize, attributeSet);
                    return;
                }
            }
            substring = attributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", "adUnitId");
            if (substring == null) {
                a(context, "AdView missing required XML attribute \"adUnitId\".", adSize, attributeSet);
            } else if (isInEditMode()) {
                a(context, "Ads by Google", -1, adSize, attributeSet);
            } else {
                String packageName2;
                if (substring.startsWith("@string/")) {
                    packageName = substring.substring("@string/".length());
                    packageName2 = context.getPackageName();
                    TypedValue typedValue2 = new TypedValue();
                    try {
                        getResources().getValue(packageName2 + ":string/" + packageName, typedValue2, true);
                        if (typedValue2.string != null) {
                            substring = typedValue2.string.toString();
                        } else {
                            a(context, "\"adUnitId\" was not a string: \"" + substring + "\".", adSize, attributeSet);
                            return;
                        }
                    } catch (NotFoundException e2) {
                        a(context, "Could not find resource for \"adUnitId\": \"" + substring + "\".", adSize, attributeSet);
                        return;
                    }
                }
                boolean attributeBooleanValue = attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/lib/com.google.ads", "loadAdOnCreate", false);
                if (context instanceof Activity) {
                    Activity activity = (Activity) context;
                    a((Context) activity, adSize, attributeSet);
                    b(activity, adSize, attributeSet);
                    a(activity, adSize, substring);
                    if (attributeBooleanValue) {
                        AdRequest adRequest = new AdRequest();
                        if (attributeValue != null) {
                            for (String packageName22 : attributeValue.split(",")) {
                                packageName22 = packageName22.trim();
                                if (packageName22.length() != 0) {
                                    if (packageName22.equals("TEST_EMULATOR")) {
                                        adRequest.addTestDevice(AdRequest.TEST_EMULATOR);
                                    } else {
                                        adRequest.addTestDevice(packageName22);
                                    }
                                }
                            }
                        }
                        attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", "keywords");
                        if (attributeValue != null) {
                            for (String trim : attributeValue.split(",")) {
                                String trim2 = trim2.trim();
                                if (trim2.length() != 0) {
                                    adRequest.addKeyword(trim2);
                                }
                            }
                        }
                        loadAd(adRequest);
                        return;
                    }
                    return;
                }
                a.b("AdView was initialized with a Context that wasn't an Activity.");
            }
        }
    }

    private void a(Activity activity, AdSize adSize, String str) {
        this.a = new d(activity, this, adSize, str, false);
        setGravity(17);
        setLayoutParams(new LayoutParams(-2, -2));
        addView(this.a.i(), (int) TypedValue.applyDimension(1, (float) adSize.getWidth(), activity.getResources().getDisplayMetrics()), (int) TypedValue.applyDimension(1, (float) adSize.getHeight(), activity.getResources().getDisplayMetrics()));
    }

    public boolean isReady() {
        if (this.a == null) {
            return false;
        }
        return this.a.o();
    }

    public boolean isRefreshing() {
        return this.a.p();
    }

    public void loadAd(AdRequest adRequest) {
        if (isRefreshing()) {
            this.a.c();
        }
        this.a.a(adRequest);
    }

    public void setAdListener(AdListener adListener) {
        this.a.a(adListener);
    }

    public void stopLoading() {
        this.a.z();
    }
}
