.class public Lcom/google/ads/searchads/SearchAdRequest;
.super Lcom/google/ads/AdRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/searchads/SearchAdRequest$BorderType;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 21
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    const-string v0, "#%06x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xffffff

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRequestMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "q"

    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/searchads/SearchAdRequest;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    :cond_0
    iget v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->b:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    const-string v0, "bgcolor"

    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->b:I

    invoke-static {v1}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/searchads/SearchAdRequest;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:Landroid/util/Pair;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 217
    const-string v1, "gradientfrom"

    iget-object v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/searchads/SearchAdRequest;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    const-string v1, "gradientto"

    iget-object v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/searchads/SearchAdRequest;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    :cond_2
    iget v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->d:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    const-string v0, "hcolor"

    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->d:I

    invoke-static {v1}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/searchads/SearchAdRequest;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    :cond_3
    iget v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->e:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    const-string v0, "dcolor"

    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->e:I

    invoke-static {v1}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/searchads/SearchAdRequest;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    :cond_4
    iget v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->f:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 231
    const-string v0, "acolor"

    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->f:I

    invoke-static {v1}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/searchads/SearchAdRequest;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    :cond_5
    iget-object v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 235
    const-string v0, "font"

    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/searchads/SearchAdRequest;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    :cond_6
    const-string v0, "headersize"

    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/searchads/SearchAdRequest;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    iget v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->i:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_7

    .line 241
    const-string v0, "bcolor"

    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->i:I

    invoke-static {v1}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/searchads/SearchAdRequest;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->j:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    if-eqz v0, :cond_8

    .line 245
    const-string v0, "btype"

    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->j:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    invoke-virtual {v1}, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/searchads/SearchAdRequest;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    :cond_8
    const-string v0, "bthick"

    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/searchads/SearchAdRequest;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    invoke-super {p0, p1}, Lcom/google/ads/AdRequest;->getRequestMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setAnchorTextColor(I)V
    .locals 0
    .param p1, "anchorTextColor"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->f:I

    .line 155
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "backgroundColor"    # I

    .prologue
    .line 98
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 99
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->b:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:Landroid/util/Pair;

    .line 104
    :cond_0
    return-void
.end method

.method public setBackgroundGradient(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 116
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 117
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->b:I

    .line 118
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:Landroid/util/Pair;

    .line 122
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1, "borderColor"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->i:I

    .line 185
    return-void
.end method

.method public setBorderThickness(I)V
    .locals 0
    .param p1, "borderThickness"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->k:I

    .line 203
    return-void
.end method

.method public setBorderType(Lcom/google/ads/searchads/SearchAdRequest$BorderType;)V
    .locals 0
    .param p1, "borderType"    # Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->j:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    .line 193
    return-void
.end method

.method public setDescriptionTextColor(I)V
    .locals 0
    .param p1, "descriptionTextColor"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->e:I

    .line 144
    return-void
.end method

.method public setFontFace(Ljava/lang/String;)V
    .locals 0
    .param p1, "fontFace"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->g:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setHeaderTextColor(I)V
    .locals 0
    .param p1, "headerTextColor"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->d:I

    .line 133
    return-void
.end method

.method public setHeaderTextSize(I)V
    .locals 0
    .param p1, "headerTextSize"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->h:I

    .line 174
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->a:Ljava/lang/String;

    .line 89
    return-void
.end method
