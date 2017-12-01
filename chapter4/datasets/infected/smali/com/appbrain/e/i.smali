.class public final Lcom/appbrain/e/i;
.super Lcom/appbrain/c/i;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/lang/Object;

.field private J:I

.field private a:I

.field private b:I

.field private c:J

.field private d:J

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/Object;

.field private t:Ljava/lang/Object;

.field private u:Ljava/lang/Object;

.field private v:I

.field private w:Ljava/lang/Object;

.field private x:Ljava/lang/Object;

.field private y:I

.field private z:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/c/i;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->e:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->f:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->g:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->h:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->i:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->j:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->k:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->o:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->p:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->q:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->r:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->s:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->t:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->u:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->w:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->x:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/i;->I:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/appbrain/c/d;)Lcom/appbrain/e/i;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/appbrain/c/d;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/appbrain/c/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/e/i;->c:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/e/i;->d:J

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->e:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->f:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->g:Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->h:Ljava/lang/Object;

    goto :goto_0

    :sswitch_7
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->i:Ljava/lang/Object;

    goto :goto_0

    :sswitch_8
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->j:Ljava/lang/Object;

    goto :goto_0

    :sswitch_9
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->k:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_a
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->l:I

    goto/16 :goto_0

    :sswitch_b
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->m:I

    goto/16 :goto_0

    :sswitch_c
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->n:I

    goto/16 :goto_0

    :sswitch_d
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->o:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_e
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->p:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_f
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->q:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_10
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->r:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_11
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->s:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_12
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->t:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_13
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->u:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_14
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->v:I

    goto/16 :goto_0

    :sswitch_15
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->w:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_16
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->x:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_17
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->y:I

    goto/16 :goto_0

    :sswitch_18
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->z:I

    goto/16 :goto_0

    :sswitch_19
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->A:I

    goto/16 :goto_0

    :sswitch_1a
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->B:I

    goto/16 :goto_0

    :sswitch_1b
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->C:I

    goto/16 :goto_0

    :sswitch_1c
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->D:I

    goto/16 :goto_0

    :sswitch_1d
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->E:I

    goto/16 :goto_0

    :sswitch_1e
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->F:I

    goto/16 :goto_0

    :sswitch_1f
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->G:I

    goto/16 :goto_0

    :sswitch_20
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->H:I

    goto/16 :goto_0

    :sswitch_21
    iget v0, p0, Lcom/appbrain/e/i;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/i;->b:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/i;->I:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_22
    iget v0, p0, Lcom/appbrain/e/i;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/e/i;->b:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/i;->J:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0xa2 -> :sswitch_11
        0xaa -> :sswitch_12
        0xb2 -> :sswitch_13
        0xb8 -> :sswitch_14
        0xc2 -> :sswitch_15
        0xca -> :sswitch_16
        0xd0 -> :sswitch_17
        0xd8 -> :sswitch_18
        0xe0 -> :sswitch_19
        0xe8 -> :sswitch_1a
        0xf0 -> :sswitch_1b
        0xf8 -> :sswitch_1c
        0x100 -> :sswitch_1d
        0x108 -> :sswitch_1e
        0x110 -> :sswitch_1f
        0x118 -> :sswitch_20
        0x122 -> :sswitch_21
        0x128 -> :sswitch_22
    .end sparse-switch
.end method

.method static synthetic c()Lcom/appbrain/e/i;
    .locals 1

    new-instance v0, Lcom/appbrain/e/i;

    invoke-direct {v0}, Lcom/appbrain/e/i;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/appbrain/e/i;->a(Lcom/appbrain/c/d;)Lcom/appbrain/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/appbrain/e/h;
    .locals 2

    invoke-virtual {p0}, Lcom/appbrain/e/i;->b()Lcom/appbrain/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/h;->au()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/appbrain/c/q;

    invoke-direct {v0}, Lcom/appbrain/c/q;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(I)Lcom/appbrain/e/i;
    .locals 1

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput p1, p0, Lcom/appbrain/e/i;->l:I

    return-object p0
.end method

.method public final a(J)Lcom/appbrain/e/i;
    .locals 1

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-wide p1, p0, Lcom/appbrain/e/i;->c:J

    return-object p0
.end method

.method public final a(Lcom/appbrain/e/h;)Lcom/appbrain/e/i;
    .locals 2

    invoke-static {}, Lcom/appbrain/e/h;->a()Lcom/appbrain/e/h;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/appbrain/e/h;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/appbrain/e/h;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appbrain/e/i;->a(J)Lcom/appbrain/e/i;

    :cond_2
    invoke-virtual {p1}, Lcom/appbrain/e/h;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/appbrain/e/h;->e()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appbrain/e/i;->b(J)Lcom/appbrain/e/i;

    :cond_3
    invoke-virtual {p1}, Lcom/appbrain/e/h;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/appbrain/e/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->a(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_4
    invoke-virtual {p1}, Lcom/appbrain/e/h;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/appbrain/e/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->b(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_5
    invoke-virtual {p1}, Lcom/appbrain/e/h;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/appbrain/e/h;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->c(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_6
    invoke-virtual {p1}, Lcom/appbrain/e/h;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/appbrain/e/h;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->d(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_7
    invoke-virtual {p1}, Lcom/appbrain/e/h;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/appbrain/e/h;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->e(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_8
    invoke-virtual {p1}, Lcom/appbrain/e/h;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/appbrain/e/h;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->f(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_9
    invoke-virtual {p1}, Lcom/appbrain/e/h;->r()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/appbrain/e/h;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->g(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_a
    invoke-virtual {p1}, Lcom/appbrain/e/h;->t()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/appbrain/e/h;->u()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->a(I)Lcom/appbrain/e/i;

    :cond_b
    invoke-virtual {p1}, Lcom/appbrain/e/h;->v()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/appbrain/e/h;->w()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->b(I)Lcom/appbrain/e/i;

    :cond_c
    invoke-virtual {p1}, Lcom/appbrain/e/h;->x()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/appbrain/e/h;->y()I

    move-result v0

    iget v1, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/appbrain/e/i;->a:I

    iput v0, p0, Lcom/appbrain/e/i;->n:I

    :cond_d
    invoke-virtual {p1}, Lcom/appbrain/e/h;->z()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/appbrain/e/h;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->h(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_e
    invoke-virtual {p1}, Lcom/appbrain/e/h;->B()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/appbrain/e/h;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->i(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_f
    invoke-virtual {p1}, Lcom/appbrain/e/h;->D()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/appbrain/e/h;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->j(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_10
    invoke-virtual {p1}, Lcom/appbrain/e/h;->F()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/appbrain/e/h;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->k(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_11
    invoke-virtual {p1}, Lcom/appbrain/e/h;->I()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/appbrain/e/h;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->l(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_12
    invoke-virtual {p1}, Lcom/appbrain/e/h;->M()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/appbrain/e/h;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->m(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_13
    invoke-virtual {p1}, Lcom/appbrain/e/h;->O()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/appbrain/e/h;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->n(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_14
    invoke-virtual {p1}, Lcom/appbrain/e/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/appbrain/e/h;->R()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->c(I)Lcom/appbrain/e/i;

    :cond_15
    invoke-virtual {p1}, Lcom/appbrain/e/h;->S()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/appbrain/e/h;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->o(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_16
    invoke-virtual {p1}, Lcom/appbrain/e/h;->U()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/appbrain/e/h;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->p(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_17
    invoke-virtual {p1}, Lcom/appbrain/e/h;->W()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/appbrain/e/h;->X()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->d(I)Lcom/appbrain/e/i;

    :cond_18
    invoke-virtual {p1}, Lcom/appbrain/e/h;->Y()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/appbrain/e/h;->Z()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->e(I)Lcom/appbrain/e/i;

    :cond_19
    invoke-virtual {p1}, Lcom/appbrain/e/h;->aa()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/appbrain/e/h;->ab()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->f(I)Lcom/appbrain/e/i;

    :cond_1a
    invoke-virtual {p1}, Lcom/appbrain/e/h;->ac()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/appbrain/e/h;->ad()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->g(I)Lcom/appbrain/e/i;

    :cond_1b
    invoke-virtual {p1}, Lcom/appbrain/e/h;->ae()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/appbrain/e/h;->af()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->h(I)Lcom/appbrain/e/i;

    :cond_1c
    invoke-virtual {p1}, Lcom/appbrain/e/h;->ag()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/appbrain/e/h;->ah()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->i(I)Lcom/appbrain/e/i;

    :cond_1d
    invoke-virtual {p1}, Lcom/appbrain/e/h;->ai()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/appbrain/e/h;->aj()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->j(I)Lcom/appbrain/e/i;

    :cond_1e
    invoke-virtual {p1}, Lcom/appbrain/e/h;->ak()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/appbrain/e/h;->al()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->k(I)Lcom/appbrain/e/i;

    :cond_1f
    invoke-virtual {p1}, Lcom/appbrain/e/h;->am()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/appbrain/e/h;->an()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->l(I)Lcom/appbrain/e/i;

    :cond_20
    invoke-virtual {p1}, Lcom/appbrain/e/h;->ao()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/appbrain/e/h;->ap()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->m(I)Lcom/appbrain/e/i;

    :cond_21
    invoke-virtual {p1}, Lcom/appbrain/e/h;->aq()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/appbrain/e/h;->ar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->q(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_22
    invoke-virtual {p1}, Lcom/appbrain/e/h;->as()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appbrain/e/h;->at()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/i;->n(I)Lcom/appbrain/e/i;

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic b(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/p;
    .locals 1

    invoke-direct {p0, p1}, Lcom/appbrain/e/i;->a(Lcom/appbrain/c/d;)Lcom/appbrain/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/appbrain/e/h;
    .locals 11

    const/high16 v10, 0x10000

    const v9, 0x8000

    const/4 v2, 0x0

    const/high16 v8, -0x80000000

    const/4 v1, 0x1

    new-instance v3, Lcom/appbrain/e/h;

    invoke-direct {v3, v2}, Lcom/appbrain/e/h;-><init>(C)V

    iget v4, p0, Lcom/appbrain/e/i;->a:I

    iget v5, p0, Lcom/appbrain/e/i;->b:I

    and-int/lit8 v0, v4, 0x1

    if-ne v0, v1, :cond_21

    move v0, v1

    :goto_0
    iget-wide v6, p0, Lcom/appbrain/e/i;->c:J

    invoke-static {v3, v6, v7}, Lcom/appbrain/e/h;->a(Lcom/appbrain/e/h;J)V

    and-int/lit8 v6, v4, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v6, p0, Lcom/appbrain/e/i;->d:J

    invoke-static {v3, v6, v7}, Lcom/appbrain/e/h;->b(Lcom/appbrain/e/h;J)V

    and-int/lit8 v6, v4, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v6, p0, Lcom/appbrain/e/i;->e:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->a(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    and-int/lit8 v6, v4, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v6, p0, Lcom/appbrain/e/i;->f:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->b(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    and-int/lit8 v6, v4, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v6, p0, Lcom/appbrain/e/i;->g:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->c(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    and-int/lit8 v6, v4, 0x20

    const/16 v7, 0x20

    if-ne v6, v7, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v6, p0, Lcom/appbrain/e/i;->h:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->d(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    and-int/lit8 v6, v4, 0x40

    const/16 v7, 0x40

    if-ne v6, v7, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v6, p0, Lcom/appbrain/e/i;->i:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->e(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    and-int/lit16 v6, v4, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-object v6, p0, Lcom/appbrain/e/i;->j:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->f(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    and-int/lit16 v6, v4, 0x100

    const/16 v7, 0x100

    if-ne v6, v7, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-object v6, p0, Lcom/appbrain/e/i;->k:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->g(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    and-int/lit16 v6, v4, 0x200

    const/16 v7, 0x200

    if-ne v6, v7, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget v6, p0, Lcom/appbrain/e/i;->l:I

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->a(Lcom/appbrain/e/h;I)V

    and-int/lit16 v6, v4, 0x400

    const/16 v7, 0x400

    if-ne v6, v7, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    iget v6, p0, Lcom/appbrain/e/i;->m:I

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->b(Lcom/appbrain/e/h;I)V

    and-int/lit16 v6, v4, 0x800

    const/16 v7, 0x800

    if-ne v6, v7, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    iget v6, p0, Lcom/appbrain/e/i;->n:I

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->c(Lcom/appbrain/e/h;I)V

    and-int/lit16 v6, v4, 0x1000

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_b

    or-int/lit16 v0, v0, 0x1000

    :cond_b
    iget-object v6, p0, Lcom/appbrain/e/i;->o:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->h(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    and-int/lit16 v6, v4, 0x2000

    const/16 v7, 0x2000

    if-ne v6, v7, :cond_c

    or-int/lit16 v0, v0, 0x2000

    :cond_c
    iget-object v6, p0, Lcom/appbrain/e/i;->p:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->i(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    and-int/lit16 v6, v4, 0x4000

    const/16 v7, 0x4000

    if-ne v6, v7, :cond_d

    or-int/lit16 v0, v0, 0x4000

    :cond_d
    iget-object v6, p0, Lcom/appbrain/e/i;->q:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->j(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    and-int v6, v4, v9

    if-ne v6, v9, :cond_e

    or-int/2addr v0, v9

    :cond_e
    iget-object v6, p0, Lcom/appbrain/e/i;->r:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->k(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    and-int v6, v4, v10

    if-ne v6, v10, :cond_f

    or-int/2addr v0, v10

    :cond_f
    iget-object v6, p0, Lcom/appbrain/e/i;->s:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->l(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    const/high16 v6, 0x20000

    and-int/2addr v6, v4

    const/high16 v7, 0x20000

    if-ne v6, v7, :cond_10

    const/high16 v6, 0x20000

    or-int/2addr v0, v6

    :cond_10
    iget-object v6, p0, Lcom/appbrain/e/i;->t:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->m(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    const/high16 v6, 0x40000

    and-int/2addr v6, v4

    const/high16 v7, 0x40000

    if-ne v6, v7, :cond_11

    const/high16 v6, 0x40000

    or-int/2addr v0, v6

    :cond_11
    iget-object v6, p0, Lcom/appbrain/e/i;->u:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->n(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    const/high16 v6, 0x80000

    and-int/2addr v6, v4

    const/high16 v7, 0x80000

    if-ne v6, v7, :cond_12

    const/high16 v6, 0x80000

    or-int/2addr v0, v6

    :cond_12
    iget v6, p0, Lcom/appbrain/e/i;->v:I

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->d(Lcom/appbrain/e/h;I)V

    const/high16 v6, 0x100000

    and-int/2addr v6, v4

    const/high16 v7, 0x100000

    if-ne v6, v7, :cond_13

    const/high16 v6, 0x100000

    or-int/2addr v0, v6

    :cond_13
    iget-object v6, p0, Lcom/appbrain/e/i;->w:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->o(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    const/high16 v6, 0x200000

    and-int/2addr v6, v4

    const/high16 v7, 0x200000

    if-ne v6, v7, :cond_14

    const/high16 v6, 0x200000

    or-int/2addr v0, v6

    :cond_14
    iget-object v6, p0, Lcom/appbrain/e/i;->x:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->p(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    const/high16 v6, 0x400000

    and-int/2addr v6, v4

    const/high16 v7, 0x400000

    if-ne v6, v7, :cond_15

    const/high16 v6, 0x400000

    or-int/2addr v0, v6

    :cond_15
    iget v6, p0, Lcom/appbrain/e/i;->y:I

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->e(Lcom/appbrain/e/h;I)V

    const/high16 v6, 0x800000

    and-int/2addr v6, v4

    const/high16 v7, 0x800000

    if-ne v6, v7, :cond_16

    const/high16 v6, 0x800000

    or-int/2addr v0, v6

    :cond_16
    iget v6, p0, Lcom/appbrain/e/i;->z:I

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->f(Lcom/appbrain/e/h;I)V

    const/high16 v6, 0x1000000

    and-int/2addr v6, v4

    const/high16 v7, 0x1000000

    if-ne v6, v7, :cond_17

    const/high16 v6, 0x1000000

    or-int/2addr v0, v6

    :cond_17
    iget v6, p0, Lcom/appbrain/e/i;->A:I

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->g(Lcom/appbrain/e/h;I)V

    const/high16 v6, 0x2000000

    and-int/2addr v6, v4

    const/high16 v7, 0x2000000

    if-ne v6, v7, :cond_18

    const/high16 v6, 0x2000000

    or-int/2addr v0, v6

    :cond_18
    iget v6, p0, Lcom/appbrain/e/i;->B:I

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->h(Lcom/appbrain/e/h;I)V

    const/high16 v6, 0x4000000

    and-int/2addr v6, v4

    const/high16 v7, 0x4000000

    if-ne v6, v7, :cond_19

    const/high16 v6, 0x4000000

    or-int/2addr v0, v6

    :cond_19
    iget v6, p0, Lcom/appbrain/e/i;->C:I

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->i(Lcom/appbrain/e/h;I)V

    const/high16 v6, 0x8000000

    and-int/2addr v6, v4

    const/high16 v7, 0x8000000

    if-ne v6, v7, :cond_1a

    const/high16 v6, 0x8000000

    or-int/2addr v0, v6

    :cond_1a
    iget v6, p0, Lcom/appbrain/e/i;->D:I

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->j(Lcom/appbrain/e/h;I)V

    const/high16 v6, 0x10000000

    and-int/2addr v6, v4

    const/high16 v7, 0x10000000

    if-ne v6, v7, :cond_1b

    const/high16 v6, 0x10000000

    or-int/2addr v0, v6

    :cond_1b
    iget v6, p0, Lcom/appbrain/e/i;->E:I

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->k(Lcom/appbrain/e/h;I)V

    const/high16 v6, 0x20000000

    and-int/2addr v6, v4

    const/high16 v7, 0x20000000

    if-ne v6, v7, :cond_1c

    const/high16 v6, 0x20000000

    or-int/2addr v0, v6

    :cond_1c
    iget v6, p0, Lcom/appbrain/e/i;->F:I

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->l(Lcom/appbrain/e/h;I)V

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v6, v7, :cond_1d

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v0, v6

    :cond_1d
    iget v6, p0, Lcom/appbrain/e/i;->G:I

    invoke-static {v3, v6}, Lcom/appbrain/e/h;->m(Lcom/appbrain/e/h;I)V

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_1e

    or-int/2addr v0, v8

    :cond_1e
    iget v4, p0, Lcom/appbrain/e/i;->H:I

    invoke-static {v3, v4}, Lcom/appbrain/e/h;->n(Lcom/appbrain/e/h;I)V

    and-int/lit8 v4, v5, 0x1

    if-ne v4, v1, :cond_20

    :goto_1
    iget-object v2, p0, Lcom/appbrain/e/i;->I:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/appbrain/e/h;->q(Lcom/appbrain/e/h;Ljava/lang/Object;)V

    and-int/lit8 v2, v5, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1f

    or-int/lit8 v1, v1, 0x2

    :cond_1f
    iget v2, p0, Lcom/appbrain/e/i;->J:I

    invoke-static {v3, v2}, Lcom/appbrain/e/h;->o(Lcom/appbrain/e/h;I)V

    invoke-static {v3, v0}, Lcom/appbrain/e/h;->p(Lcom/appbrain/e/h;I)V

    invoke-static {v3, v1}, Lcom/appbrain/e/h;->q(Lcom/appbrain/e/h;I)V

    return-object v3

    :cond_20
    move v1, v2

    goto :goto_1

    :cond_21
    move v0, v2

    goto/16 :goto_0
.end method

.method public final b(I)Lcom/appbrain/e/i;
    .locals 1

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput p1, p0, Lcom/appbrain/e/i;->m:I

    return-object p0
.end method

.method public final b(J)Lcom/appbrain/e/i;
    .locals 1

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-wide p1, p0, Lcom/appbrain/e/i;->d:J

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(I)Lcom/appbrain/e/i;
    .locals 2

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput p1, p0, Lcom/appbrain/e/i;->v:I

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public final d(I)Lcom/appbrain/e/i;
    .locals 2

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput p1, p0, Lcom/appbrain/e/i;->y:I

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic e()Lcom/appbrain/c/i;
    .locals 2

    new-instance v0, Lcom/appbrain/e/i;

    invoke-direct {v0}, Lcom/appbrain/e/i;-><init>()V

    invoke-virtual {p0}, Lcom/appbrain/e/i;->b()Lcom/appbrain/e/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/e/i;->a(Lcom/appbrain/e/h;)Lcom/appbrain/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)Lcom/appbrain/e/i;
    .locals 2

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput p1, p0, Lcom/appbrain/e/i;->z:I

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public final f(I)Lcom/appbrain/e/i;
    .locals 2

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput p1, p0, Lcom/appbrain/e/i;->A:I

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic g()Lcom/appbrain/c/o;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/e/i;->a()Lcom/appbrain/e/h;

    move-result-object v0

    return-object v0
.end method

.method public final g(I)Lcom/appbrain/e/i;
    .locals 2

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput p1, p0, Lcom/appbrain/e/i;->B:I

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public final h(I)Lcom/appbrain/e/i;
    .locals 2

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput p1, p0, Lcom/appbrain/e/i;->C:I

    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->o:Ljava/lang/Object;

    return-object p0
.end method

.method public final i(I)Lcom/appbrain/e/i;
    .locals 2

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput p1, p0, Lcom/appbrain/e/i;->D:I

    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->p:Ljava/lang/Object;

    return-object p0
.end method

.method public final j(I)Lcom/appbrain/e/i;
    .locals 2

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput p1, p0, Lcom/appbrain/e/i;->E:I

    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->q:Ljava/lang/Object;

    return-object p0
.end method

.method public final k(I)Lcom/appbrain/e/i;
    .locals 2

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput p1, p0, Lcom/appbrain/e/i;->F:I

    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->r:Ljava/lang/Object;

    return-object p0
.end method

.method public final l(I)Lcom/appbrain/e/i;
    .locals 2

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput p1, p0, Lcom/appbrain/e/i;->G:I

    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->s:Ljava/lang/Object;

    return-object p0
.end method

.method public final m(I)Lcom/appbrain/e/i;
    .locals 2

    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput p1, p0, Lcom/appbrain/e/i;->H:I

    return-object p0
.end method

.method public final m(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->t:Ljava/lang/Object;

    return-object p0
.end method

.method public final n(I)Lcom/appbrain/e/i;
    .locals 1

    iget v0, p0, Lcom/appbrain/e/i;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/e/i;->b:I

    iput p1, p0, Lcom/appbrain/e/i;->J:I

    return-object p0
.end method

.method public final n(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->u:Ljava/lang/Object;

    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->w:Ljava/lang/Object;

    return-object p0
.end method

.method public final p(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->a:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/e/i;->a:I

    iput-object p1, p0, Lcom/appbrain/e/i;->x:Ljava/lang/Object;

    return-object p0
.end method

.method public final q(Ljava/lang/String;)Lcom/appbrain/e/i;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/i;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/i;->b:I

    iput-object p1, p0, Lcom/appbrain/e/i;->I:Ljava/lang/Object;

    return-object p0
.end method
