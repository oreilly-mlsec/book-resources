package com.umeng.analytics.social;

import android.text.TextUtils;
import com.umeng.analytics.a;
import java.util.Locale;
import u.aly.bs;

public class UMPlatformData {
    private UMedia a;
    private String b = bs.b;
    private String c = bs.b;
    private String d;
    private GENDER e;

    public enum GENDER {
        MALE(0) {
            public String toString() {
                return String.format(Locale.US, "Male:%d", new Object[]{Integer.valueOf(this.value)});
            }
        },
        FEMALE(1) {
            public String toString() {
                return String.format(Locale.US, "Female:%d", new Object[]{Integer.valueOf(this.value)});
            }
        };
        
        public int value;

        private GENDER(int i) {
            this.value = i;
        }
    }

    public enum UMedia {
        SINA_WEIBO {
            public String toString() {
                return "sina";
            }
        },
        TENCENT_WEIBO {
            public String toString() {
                return "tencent";
            }
        },
        TENCENT_QZONE {
            public String toString() {
                return "qzone";
            }
        },
        TENCENT_QQ {
            public String toString() {
                return "qq";
            }
        },
        WEIXIN_FRIENDS {
            public String toString() {
                return "wxsesion";
            }
        },
        WEIXIN_CIRCLE {
            public String toString() {
                return "wxtimeline";
            }
        },
        RENREN {
            public String toString() {
                return "renren";
            }
        },
        DOUBAN {
            public String toString() {
                return "douban";
            }
        }
    }

    public UMPlatformData(UMedia uMedia, String str) {
        if (uMedia == null || TextUtils.isEmpty(str)) {
            b.b(a.e, "parameter is not valid");
            return;
        }
        this.a = uMedia;
        this.b = str;
    }

    public String getWeiboId() {
        return this.c;
    }

    public void setWeiboId(String str) {
        this.c = str;
    }

    public UMedia getMeida() {
        return this.a;
    }

    public String getUsid() {
        return this.b;
    }

    public String getName() {
        return this.d;
    }

    public void setName(String str) {
        this.d = str;
    }

    public GENDER getGender() {
        return this.e;
    }

    public void setGender(GENDER gender) {
        this.e = gender;
    }

    public boolean isValid() {
        if (this.a == null || TextUtils.isEmpty(this.b)) {
            return false;
        }
        return true;
    }

    public String toString() {
        return "UMPlatformData [meida=" + this.a + ", usid=" + this.b + ", weiboId=" + this.c + ", name=" + this.d + ", gender=" + this.e + "]";
    }
}
