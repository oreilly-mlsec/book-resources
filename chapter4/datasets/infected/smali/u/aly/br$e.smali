.class public final enum Lu/aly/br$e;
.super Ljava/lang/Enum;
.source "UMEnvelope.java"

# interfaces
.implements Lu/aly/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/br$e;",
        ">;",
        "Lu/aly/cq;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/br$e;

.field public static final enum b:Lu/aly/br$e;

.field public static final enum c:Lu/aly/br$e;

.field public static final enum d:Lu/aly/br$e;

.field public static final enum e:Lu/aly/br$e;

.field public static final enum f:Lu/aly/br$e;

.field public static final enum g:Lu/aly/br$e;

.field public static final enum h:Lu/aly/br$e;

.field public static final enum i:Lu/aly/br$e;

.field public static final enum j:Lu/aly/br$e;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/br$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic n:[Lu/aly/br$e;


# instance fields
.field private final l:S

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 64
    new-instance v0, Lu/aly/br$e;

    const-string v1, "VERSION"

    const/4 v2, 0x0

    const-string v3, "version"

    invoke-direct {v0, v1, v2, v5, v3}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->a:Lu/aly/br$e;

    .line 65
    new-instance v0, Lu/aly/br$e;

    const-string v1, "ADDRESS"

    const-string v2, "address"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->b:Lu/aly/br$e;

    .line 66
    new-instance v0, Lu/aly/br$e;

    const-string v1, "SIGNATURE"

    const-string v2, "signature"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->c:Lu/aly/br$e;

    .line 67
    new-instance v0, Lu/aly/br$e;

    const-string v1, "SERIAL_NUM"

    const-string v2, "serial_num"

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->d:Lu/aly/br$e;

    .line 68
    new-instance v0, Lu/aly/br$e;

    const-string v1, "TS_SECS"

    const-string v2, "ts_secs"

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->e:Lu/aly/br$e;

    .line 69
    new-instance v0, Lu/aly/br$e;

    const-string v1, "LENGTH"

    const/4 v2, 0x6

    const-string v3, "length"

    invoke-direct {v0, v1, v9, v2, v3}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->f:Lu/aly/br$e;

    .line 70
    new-instance v0, Lu/aly/br$e;

    const-string v1, "ENTITY"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "entity"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->g:Lu/aly/br$e;

    .line 71
    new-instance v0, Lu/aly/br$e;

    const-string v1, "GUID"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "guid"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->h:Lu/aly/br$e;

    .line 72
    new-instance v0, Lu/aly/br$e;

    const-string v1, "CHECKSUM"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "checksum"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->i:Lu/aly/br$e;

    .line 73
    new-instance v0, Lu/aly/br$e;

    const-string v1, "CODEX"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "codex"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/br$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/br$e;->j:Lu/aly/br$e;

    .line 63
    const/16 v0, 0xa

    new-array v0, v0, [Lu/aly/br$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/br$e;->a:Lu/aly/br$e;

    aput-object v2, v0, v1

    sget-object v1, Lu/aly/br$e;->b:Lu/aly/br$e;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/br$e;->c:Lu/aly/br$e;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/br$e;->d:Lu/aly/br$e;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/br$e;->e:Lu/aly/br$e;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/br$e;->f:Lu/aly/br$e;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lu/aly/br$e;->g:Lu/aly/br$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lu/aly/br$e;->h:Lu/aly/br$e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lu/aly/br$e;->i:Lu/aly/br$e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lu/aly/br$e;->j:Lu/aly/br$e;

    aput-object v2, v0, v1

    sput-object v0, Lu/aly/br$e;->n:[Lu/aly/br$e;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/br$e;->k:Ljava/util/Map;

    .line 78
    const-class v0, Lu/aly/br$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/br$e;

    .line 79
    sget-object v2, Lu/aly/br$e;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lu/aly/br$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput-short p3, p0, Lu/aly/br$e;->l:S

    .line 135
    iput-object p4, p0, Lu/aly/br$e;->m:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public static a(I)Lu/aly/br$e;
    .locals 1

    .prologue
    .line 87
    packed-switch p0, :pswitch_data_0

    .line 109
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 89
    :pswitch_0
    sget-object v0, Lu/aly/br$e;->a:Lu/aly/br$e;

    goto :goto_0

    .line 91
    :pswitch_1
    sget-object v0, Lu/aly/br$e;->b:Lu/aly/br$e;

    goto :goto_0

    .line 93
    :pswitch_2
    sget-object v0, Lu/aly/br$e;->c:Lu/aly/br$e;

    goto :goto_0

    .line 95
    :pswitch_3
    sget-object v0, Lu/aly/br$e;->d:Lu/aly/br$e;

    goto :goto_0

    .line 97
    :pswitch_4
    sget-object v0, Lu/aly/br$e;->e:Lu/aly/br$e;

    goto :goto_0

    .line 99
    :pswitch_5
    sget-object v0, Lu/aly/br$e;->f:Lu/aly/br$e;

    goto :goto_0

    .line 101
    :pswitch_6
    sget-object v0, Lu/aly/br$e;->g:Lu/aly/br$e;

    goto :goto_0

    .line 103
    :pswitch_7
    sget-object v0, Lu/aly/br$e;->h:Lu/aly/br$e;

    goto :goto_0

    .line 105
    :pswitch_8
    sget-object v0, Lu/aly/br$e;->i:Lu/aly/br$e;

    goto :goto_0

    .line 107
    :pswitch_9
    sget-object v0, Lu/aly/br$e;->j:Lu/aly/br$e;

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lu/aly/br$e;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lu/aly/br$e;->k:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/br$e;

    return-object v0
.end method

.method public static b(I)Lu/aly/br$e;
    .locals 3

    .prologue
    .line 118
    invoke-static {p0}, Lu/aly/br$e;->a(I)Lu/aly/br$e;

    move-result-object v0

    .line 119
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/br$e;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lu/aly/br$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/br$e;

    return-object v0
.end method

.method public static values()[Lu/aly/br$e;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lu/aly/br$e;->n:[Lu/aly/br$e;

    invoke-virtual {v0}, [Lu/aly/br$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/br$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .prologue
    .line 139
    iget-short v0, p0, Lu/aly/br$e;->l:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lu/aly/br$e;->m:Ljava/lang/String;

    return-object v0
.end method
