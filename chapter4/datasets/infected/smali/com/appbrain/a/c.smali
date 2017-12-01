.class public final Lcom/appbrain/a/c;
.super Lcom/appbrain/a;


# static fields
.field private static g:Lcmn/g;

.field private static h:Lcmn/g;

.field private static final m:[I


# instance fields
.field protected a:Z

.field protected b:Lcom/appbrain/RemoteSettings;

.field protected final c:Landroid/app/Activity;

.field protected d:Lcom/appbrain/a/b;

.field protected e:Z

.field private f:J

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/appbrain/a/c;->g:Lcmn/g;

    sput-object v0, Lcom/appbrain/a/c;->h:Lcmn/g;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lcom/appbrain/a/c;->m:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    invoke-direct {p0}, Lcom/appbrain/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appbrain/a/c;->a:Z

    iput-object p1, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    const-string v3, "Thank you for using our app!"

    const-string v2, "Would you like more free apps?"

    const-string v1, "Not now"

    const-string v0, "Yes!"

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "de"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "Danke f\u00fcrs Verwenden unserer App!"

    const-string v2, "Willst Du mehr kostenlose Apps?"

    const-string v1, "Nein"

    const-string v0, "Ja!"

    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\'text\':"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\'size\':30,\'color\':\'ffffff\',\'weight\':\'bold\',\'scolor\':\'7f0373c1\',\'dx\':-1,\'dy\':-1,\'sradius\':0.1}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/appbrain/a/c;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\'text\':"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\'size\':22,\'color\':\'ffffff\',\'scolor\':\'7f0373c1\',\'dx\':-1,\'dy\':-1,\'sradius\':0.1}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appbrain/a/c;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\'text\':"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\'size\':16,\'color\':\'ffffff\', \'border-radius\':3, \'border-color\':\'222222\', \'button\':{\'normal\':\'888888,333333\',\'pressed\':\'333333,888888\'}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appbrain/a/c;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\'text\':"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\'size\':16,\'weight\':\'bold\',\'color\':\'ffffff\', \'border-radius\':3, \'border-color\':\'476517\', \'button\':{\'normal\':\'ffb7d884,ff84aa49\',\'pressed\':\'ff84aa49,ffb7d884\'}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/c;->l:Ljava/lang/String;

    return-void

    :cond_1
    const-string v5, "nl"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "Dank je voor het gebruiken van onze app!"

    const-string v2, "Wil je meer gratis apps?"

    const-string v1, "Niet nu"

    const-string v0, "Ja!"

    goto :goto_0

    :cond_2
    const-string v5, "it"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "Grazie per aver utilizzato questa app!"

    const-string v2, "Vorresti altre app gratuite?"

    const-string v1, "Non ora"

    const-string v0, "S\u00ec!"

    goto/16 :goto_0

    :cond_3
    const-string v5, "es"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v3, "\u00a1Gracias por usar nuestra aplicaci\u00f3n!"

    const-string v2, "\u00bfTe gustar\u00eda descargar m\u00e1s aplicaciones gratis?"

    const-string v1, "Ahora no"

    const-string v0, "\u00a1S\u00ed!"

    goto/16 :goto_0

    :cond_4
    const-string v5, "ja"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v3, "\u5f53\u793e\u306e\u30a2\u30d7\u30ea\u3092\u3054\u4f7f\u7528\u9802\u304d\u3042\u308a\u304c\u3068\u3046\u3054\u3056\u3044\u307e\u3059\uff01"

    const-string v2, "\u4ed6\u306e\u7121\u6599\u30a2\u30d7\u30ea\u3092\u8a66\u3055\u308c\u307e\u3059\u304b\uff1f"

    const-string v1, "\u5f8c\u3067"

    const-string v0, "\u306f\u3044\uff01"

    goto/16 :goto_0

    :cond_5
    const-string v5, "ko"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v3, "\uc800\ud76c \uc571\uc744 \uc774\uc6a9\ud574\uc8fc\uc154\uc11c \uac10\uc0ac\ud569\ub2c8\ub2e4!"

    const-string v2, "\ub354 \ub9ce\uc740 \ubb34\ub8cc \uc571\uc744 \uc6d0\ud558\uc2ed\ub2c8\uae4c?"

    const-string v1, "\ub2e4\uc74c\uc5d0"

    const-string v0, "\uc608!"

    goto/16 :goto_0

    :cond_6
    const-string v5, "fr"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v3, "Merci d\'avoir utilis\u00e9 notre application!"

    const-string v2, "Voulez-vous plus d\'applis gratuites?"

    const-string v1, "Pas maintenant"

    const-string v0, "Oui!"

    goto/16 :goto_0

    :cond_7
    const-string v5, "ru"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "\u0421\u043f\u0430\u0441\u0438\u0431\u043e, \u0447\u0442\u043e \u0442\u044b \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u0448\u044c \u043d\u0430\u0448\u0443 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u0443."

    const-string v2, "\u0422\u044b \u0431\u044b \u0445\u043e\u0442\u0435\u043b \u043f\u043e\u043b\u0443\u0447\u0430\u0442\u044c \u0434\u0440\u0443\u0433\u0438\u0435 \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u044b\u0435 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u044b?"

    const-string v1, "\u041d\u0435 \u0441\u0435\u0439\u0447\u0430\u0441"

    const-string v0, "\u0414\u0430!"

    goto/16 :goto_0
.end method

.method static synthetic a(Ljava/lang/String;I)Landroid/graphics/Shader;
    .locals 8

    const/4 v1, 0x0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    new-array v5, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, v5

    if-lt v0, v3, :cond_0

    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, p1

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    :cond_0
    aget-object v3, v2, v0

    const v4, -0x777778

    invoke-static {v3, v4}, Lcom/appbrain/a/c;->b(Ljava/lang/String;I)I

    move-result v3

    aput v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;FI)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, p3, v0

    new-instance v2, Lcom/appbrain/a/g;

    new-instance v3, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v2, v3}, Lcom/appbrain/a/g;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v2, v1}, Lcom/appbrain/a/g;->setCornerRadius(F)V

    if-eqz p4, :cond_0

    invoke-virtual {v2}, Lcom/appbrain/a/g;->a()Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v2}, Lcom/appbrain/a/g;->a()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    new-instance v0, Lcom/appbrain/a/f;

    invoke-direct {v0, p0, p2}, Lcom/appbrain/a/f;-><init>(Lcom/appbrain/a/c;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/appbrain/a/g;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    return-object v2

    :cond_0
    invoke-virtual {v2}, Lcom/appbrain/a/g;->a()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    return-object v0

    :cond_0
    aget-object v3, v1, v0

    const v4, -0x777778

    invoke-static {v3, v4}, Lcom/appbrain/a/c;->b(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/appbrain/a/c;->b:Lcom/appbrain/RemoteSettings;

    invoke-interface {v0, p2, p3}, Lcom/appbrain/RemoteSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "text"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "color"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/appbrain/a/c;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    const-string v2, "size"

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v0, "weight"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bold"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    const-string v0, "scolor"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sradius"

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v0, v2

    const-string v2, "dx"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const-string v3, "dy"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    const-string v4, "scolor"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, -0x1000000

    invoke-static {v4, v5}, Lcom/appbrain/a/c;->b(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_1
    const-string v0, "button"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "button"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    const-string v3, "normal"

    const-string v4, "333333,999999"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pressed"

    const-string v5, "999999,333333"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "border-radius"

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    const-string v5, "border-color"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v5, -0xaaaaab

    invoke-static {v1, v5}, Lcom/appbrain/a/c;->b(Ljava/lang/String;I)I

    move-result v1

    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-direct {p0, v2, v0, v4, v1}, Lcom/appbrain/a/c;->a(Landroid/content/Context;Ljava/lang/String;FI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v6, Lcom/appbrain/a/c;->m:[I

    invoke-virtual {v5, v6, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/appbrain/a/c;->a(Landroid/content/Context;Ljava/lang/String;FI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v5, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;I)I
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#ff"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 13

    const/4 v9, 0x1

    const/4 v12, -0x1

    const/4 v11, 0x4

    const/4 v10, -0x2

    const/16 v8, 0xa

    iget-object v0, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setFormat(I)V

    iget-object v0, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    invoke-virtual {v0, v9}, Landroid/app/Activity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/appbrain/AppBrain;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "maybe"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/appbrain/a/c;->e:Z

    :cond_0
    invoke-static {v0}, Lcom/appbrain/a/b;->a(Landroid/content/Intent;)Lcom/appbrain/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/c;->d:Lcom/appbrain/a/b;

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->g()Lcom/appbrain/RemoteSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/c;->b:Lcom/appbrain/RemoteSettings;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/appbrain/a/c;->b:Lcom/appbrain/RemoteSettings;

    const-string v2, "i_bg"

    const-string v3, "444444,111111"

    invoke-interface {v1, v2, v3}, Lcom/appbrain/RemoteSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appbrain/a/c;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x14

    invoke-virtual {v2, v8, v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "i_title"

    iget-object v3, p0, Lcom/appbrain/a/c;->i:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/appbrain/a/c;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x6

    const/16 v5, 0x3c

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v4, 0x5

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v8, v5, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/appbrain/a/c;->b:Lcom/appbrain/RemoteSettings;

    const-string v5, "i_dbg"

    const-string v6, "6c9aac,344a53"

    invoke-interface {v4, v5, v6}, Lcom/appbrain/RemoteSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/appbrain/a/c;->a(Landroid/content/Context;Ljava/lang/String;FI)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "i_desc"

    iget-object v5, p0, Lcom/appbrain/a/c;->j:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/appbrain/a/c;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x6

    const/4 v7, 0x6

    const/4 v8, 0x6

    const/4 v9, 0x6

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/appbrain/a/d;

    invoke-direct {v6, p0}, Lcom/appbrain/a/d;-><init>(Lcom/appbrain/a/c;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v11, v11, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "i_ok"

    iget-object v7, p0, Lcom/appbrain/a/c;->l:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/appbrain/a/c;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/appbrain/a/c;->b:Lcom/appbrain/RemoteSettings;

    const-string v6, "i_hasneg"

    const-string v7, "1"

    invoke-interface {v5, v6, v7}, Lcom/appbrain/RemoteSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v6, "i_neg"

    iget-object v7, p0, Lcom/appbrain/a/c;->k:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/appbrain/a/c;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/appbrain/a/e;

    invoke-direct {v6, p0}, Lcom/appbrain/a/e;-><init>(Lcom/appbrain/a/c;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v11, v11, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    sget-object v0, Lcom/appbrain/a/c;->h:Lcmn/g;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appbrain/a/c;->h:Lcmn/g;

    iget-object v0, p0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/a/c;->f:J

    return-void
.end method

.method public final a(I)Z
    .locals 6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/appbrain/a/c;->f:J

    const-wide/16 v4, 0x5dc

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lcom/appbrain/a/c;->g:Lcmn/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appbrain/a/c;->g:Lcmn/g;

    iget-boolean v0, p0, Lcom/appbrain/a/c;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_0
    invoke-super {p0}, Lcom/appbrain/a;->b()V

    return-void
.end method
