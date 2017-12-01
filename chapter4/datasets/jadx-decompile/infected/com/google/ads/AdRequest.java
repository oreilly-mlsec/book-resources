package com.google.ads;

import android.content.Context;
import android.location.Location;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class AdRequest {
    public static final String LOGTAG = "Ads";
    public static final String TEST_EMULATOR = AdUtil.a("emulator");
    public static final String VERSION = "4.3.1";
    private Gender a = null;
    private String b = null;
    private Set<String> c = null;
    private boolean d = false;
    private Map<String, Object> e = null;
    private Location f = null;
    private boolean g = false;
    private boolean h = false;
    private Set<String> i = null;

    public enum ErrorCode {
        INVALID_REQUEST("Invalid Google Ad request."),
        NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
        NETWORK_ERROR("A network error occurred."),
        INTERNAL_ERROR("There was an internal error.");
        
        private String a;

        private ErrorCode(String description) {
            this.a = description;
        }

        public final String toString() {
            return this.a;
        }
    }

    public enum Gender {
        UNKNOWN,
        MALE,
        FEMALE
    }

    public void setGender(Gender gender) {
        this.a = gender;
    }

    public void setBirthday(String birthday) {
        this.b = birthday;
    }

    public void setPlusOneOptOut(boolean plusOneOptOut) {
        this.d = plusOneOptOut;
    }

    public void setKeywords(Set<String> keywords) {
        this.c = keywords;
    }

    public void addKeyword(String keyword) {
        if (this.c == null) {
            this.c = new HashSet();
        }
        this.c.add(keyword);
    }

    public void setExtras(Map<String, Object> extras) {
        this.e = extras;
    }

    public void addExtra(String key, Object value) {
        if (this.e == null) {
            this.e = new HashMap();
        }
        this.e.put(key, value);
    }

    public void setLocation(Location location) {
        this.f = location;
    }

    public void setTesting(boolean testing) {
        this.g = testing;
    }

    public Map<String, Object> getRequestMap(Context context) {
        Map<String, Object> hashMap = new HashMap();
        if (this.c != null) {
            hashMap.put("kw", this.c);
        }
        if (this.a != null) {
            hashMap.put("cust_gender", Integer.valueOf(this.a.ordinal()));
        }
        if (this.b != null) {
            hashMap.put("cust_age", this.b);
        }
        if (this.f != null) {
            hashMap.put("uule", AdUtil.a(this.f));
        }
        if (this.g) {
            hashMap.put("testing", Integer.valueOf(1));
        }
        if (this.d) {
            hashMap.put("pto", Integer.valueOf(1));
        } else {
            hashMap.put("cipa", Integer.valueOf(aa.a(context) ? 1 : 0));
        }
        if (isTestDevice(context)) {
            hashMap.put("adtest", "on");
        } else if (!this.h) {
            String str;
            if (AdUtil.c()) {
                str = "AdRequest.TEST_EMULATOR";
            } else {
                str = "\"" + AdUtil.a(context) + "\"";
            }
            a.c("To get test ads on this device, call adRequest.addTestDevice(" + str + ");");
            this.h = true;
        }
        if (this.e != null) {
            hashMap.put("extras", this.e);
        }
        return hashMap;
    }

    public void addTestDevice(String testDevice) {
        if (this.i == null) {
            this.i = new HashSet();
        }
        this.i.add(testDevice);
    }

    public void setTestDevices(Set<String> testDevices) {
        this.i = testDevices;
    }

    public boolean isTestDevice(Context context) {
        if (this.i == null) {
            return false;
        }
        String a = AdUtil.a(context);
        if (a != null && this.i.contains(a)) {
            return true;
        }
        return false;
    }
}
