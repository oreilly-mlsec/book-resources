package com.appbrain.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.SystemClock;
import android.util.StateSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import cmn.g;
import com.appbrain.AppBrain;
import com.appbrain.RemoteSettings;
import com.appbrain.a;
import org.json.JSONException;
import org.json.JSONObject;
import u.aly.bs;

public final class c extends a {
    private static g g = null;
    private static g h = null;
    private static final int[] m = new int[]{16842919};
    protected boolean a = false;
    protected RemoteSettings b;
    protected final Activity c;
    protected b d;
    protected boolean e;
    private long f;
    private final String i;
    private final String j;
    private final String k;
    private final String l;

    public c(Activity activity) {
        this.c = activity;
        String str = "Thank you for using our app!";
        String str2 = "Would you like more free apps?";
        String str3 = "Not now";
        String str4 = "Yes!";
        String language = activity.getResources().getConfiguration().locale.getLanguage();
        if ("de".equalsIgnoreCase(language)) {
            str = "Danke fürs Verwenden unserer App!";
            str2 = "Willst Du mehr kostenlose Apps?";
            str3 = "Nein";
            str4 = "Ja!";
        } else if ("nl".equalsIgnoreCase(language)) {
            str = "Dank je voor het gebruiken van onze app!";
            str2 = "Wil je meer gratis apps?";
            str3 = "Niet nu";
            str4 = "Ja!";
        } else if ("it".equalsIgnoreCase(language)) {
            str = "Grazie per aver utilizzato questa app!";
            str2 = "Vorresti altre app gratuite?";
            str3 = "Non ora";
            str4 = "Sì!";
        } else if ("es".equalsIgnoreCase(language)) {
            str = "¡Gracias por usar nuestra aplicación!";
            str2 = "¿Te gustaría descargar más aplicaciones gratis?";
            str3 = "Ahora no";
            str4 = "¡Sí!";
        } else if ("ja".equalsIgnoreCase(language)) {
            str = "当社のアプリをご使用頂きありがとうございます！";
            str2 = "他の無料アプリを試されますか？";
            str3 = "後で";
            str4 = "はい！";
        } else if ("ko".equalsIgnoreCase(language)) {
            str = "저희 앱을 이용해주셔서 감사합니다!";
            str2 = "더 많은 무료 앱을 원하십니까?";
            str3 = "다음에";
            str4 = "예!";
        } else if ("fr".equalsIgnoreCase(language)) {
            str = "Merci d'avoir utilisé notre application!";
            str2 = "Voulez-vous plus d'applis gratuites?";
            str3 = "Pas maintenant";
            str4 = "Oui!";
        } else if ("ru".equalsIgnoreCase(language)) {
            str = "Спасибо, что ты используешь нашу программу.";
            str2 = "Ты бы хотел получать другие бесплатные программы?";
            str3 = "Не сейчас";
            str4 = "Да!";
        }
        this.i = "{'text':" + JSONObject.quote(str) + ",'size':30,'color':'ffffff','weight':'bold','scolor':'7f0373c1','dx':-1,'dy':-1,'sradius':0.1}";
        this.j = "{'text':" + JSONObject.quote(str2) + ",'size':22,'color':'ffffff','scolor':'7f0373c1','dx':-1,'dy':-1,'sradius':0.1}";
        this.k = "{'text':" + JSONObject.quote(str3) + ",'size':16,'color':'ffffff', 'border-radius':3, 'border-color':'222222', 'button':{'normal':'888888,333333','pressed':'333333,888888'}}";
        this.l = "{'text':" + JSONObject.quote(str4) + ",'size':16,'weight':'bold','color':'ffffff', 'border-radius':3, 'border-color':'476517', 'button':{'normal':'ffb7d884,ff84aa49','pressed':'ff84aa49,ffb7d884'}}";
    }

    static /* synthetic */ Shader a(String str, int i) {
        String[] split = str.split(",");
        int[] iArr = new int[split.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = b(split[i2], -7829368);
        }
        return new LinearGradient(0.0f, 0.0f, 0.0f, (float) i, iArr, null, TileMode.CLAMP);
    }

    private Drawable a(Context context, String str, float f, int i) {
        float f2 = context.getResources().getDisplayMetrics().density;
        float f3 = f * f2;
        Drawable gVar = new g(new RectShape());
        gVar.setCornerRadius(f3);
        if (i != 0) {
            gVar.a().setStrokeWidth(f2 * 2.0f);
            gVar.a().setColor(i);
        } else {
            gVar.a().setStrokeWidth(0.0f);
        }
        gVar.setShaderFactory(new f(this, str));
        return gVar;
    }

    private static Drawable a(String str) {
        String[] split = str.split(",");
        int[] iArr = new int[split.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = b(split[i], -7829368);
        }
        return new GradientDrawable(Orientation.TOP_BOTTOM, iArr);
    }

    private void a(TextView textView, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(this.b.get(str, str2));
            textView.setText(jSONObject.optString("text", bs.b));
            textView.setTextColor(b(jSONObject.optString("color"), -1));
            textView.setTextSize(1, (float) jSONObject.optDouble("size", 16.0d));
            if (jSONObject.optString("weight", bs.b).equals("bold")) {
                textView.setTypeface(textView.getTypeface(), 1);
            }
            if (jSONObject.has("scolor")) {
                textView.setShadowLayer((float) jSONObject.optDouble("sradius", 0.1d), (float) jSONObject.optInt("dx", -1), (float) jSONObject.optInt("dy", 0), b(jSONObject.optString("scolor", bs.b), -16777216));
            }
            if (jSONObject.has("button")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("button");
                Context context = this.c;
                String optString = jSONObject2.optString("normal", "333333,999999");
                String optString2 = jSONObject2.optString("pressed", "999999,333333");
                float optDouble = (float) jSONObject.optDouble("border-radius", 3.0d);
                int b = b(jSONObject.optString("border-color", bs.b), -11184811);
                Drawable stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(m, a(context, optString2, optDouble, b));
                stateListDrawable.addState(StateSet.WILD_CARD, a(context, optString, optDouble, b));
                textView.setBackgroundDrawable(stateListDrawable);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private static int b(String str, int i) {
        if (str == null) {
            return i;
        }
        try {
            return str.length() == 0 ? i : str.length() == 6 ? Color.parseColor("#ff" + str) : Color.parseColor("#" + str);
        } catch (IllegalArgumentException e) {
            return i;
        }
    }

    public final void a() {
        this.c.getWindow().setFormat(1);
        this.c.requestWindowFeature(1);
        AppBrain.init(this.c);
        Intent intent = this.c.getIntent();
        if (intent != null) {
            this.e = intent.getBooleanExtra("maybe", false);
        }
        this.d = b.a(intent);
        this.b = v.a().g();
        View linearLayout = new LinearLayout(this.c);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LayoutParams(-1, -1));
        linearLayout.setBackgroundDrawable(a(this.b.get("i_bg", "444444,111111")));
        View textView = new TextView(this.c);
        LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(10, 20, 10, 10);
        textView.setGravity(1);
        textView.setLayoutParams(layoutParams);
        a(textView, "i_title", this.i);
        View linearLayout2 = new LinearLayout(this.c);
        linearLayout2.setOrientation(1);
        LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(6, 60, 6, 0);
        linearLayout2.setPadding(5, 10, 5, 10);
        linearLayout2.setLayoutParams(layoutParams2);
        linearLayout2.setBackgroundDrawable(a(this.c, this.b.get("i_dbg", "6c9aac,344a53"), 5.0f, 0));
        View textView2 = new TextView(this.c);
        a(textView2, "i_desc", this.j);
        LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        textView2.setGravity(1);
        layoutParams3.setMargins(10, 10, 10, 10);
        textView2.setLayoutParams(layoutParams3);
        View linearLayout3 = new LinearLayout(this.c);
        linearLayout3.setOrientation(0);
        LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams4.setMargins(6, 6, 6, 6);
        linearLayout3.setLayoutParams(layoutParams4);
        View button = new Button(this.c);
        button.setOnClickListener(new d(this));
        LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams5.weight = 1.0f;
        layoutParams5.setMargins(4, 4, 4, 4);
        button.setLayoutParams(layoutParams5);
        a(button, "i_ok", this.l);
        linearLayout3.addView(button);
        if (this.b.get("i_hasneg", "1").equals("1")) {
            button = new Button(this.c);
            a(button, "i_neg", this.k);
            button.setOnClickListener(new e(this));
            layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams5.weight = 1.0f;
            layoutParams5.setMargins(4, 4, 4, 4);
            button.setLayoutParams(layoutParams5);
            linearLayout3.addView(button);
        }
        linearLayout2.addView(textView2);
        linearLayout2.addView(linearLayout3);
        linearLayout.addView(textView);
        linearLayout.addView(linearLayout2);
        this.c.setContentView(linearLayout);
        linearLayout.invalidate();
        if (h != null) {
            g gVar = h;
            Activity activity = this.c;
        }
        this.f = SystemClock.elapsedRealtime();
    }

    public final boolean a(int i) {
        return i == 4 && SystemClock.elapsedRealtime() < this.f + 1500;
    }

    public final void b() {
        if (g != null) {
            g gVar = g;
            Boolean.valueOf(this.a);
        }
        super.b();
    }
}
