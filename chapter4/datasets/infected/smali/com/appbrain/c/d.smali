.class public final Lcom/appbrain/c/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private d:I

.field private final e:Ljava/io/InputStream;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/appbrain/c/d;->h:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/appbrain/c/d;->j:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/appbrain/c/d;->k:I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/appbrain/c/d;->a:[B

    iput v1, p0, Lcom/appbrain/c/d;->b:I

    iput v1, p0, Lcom/appbrain/c/d;->d:I

    iput v1, p0, Lcom/appbrain/c/d;->g:I

    iput-object p1, p0, Lcom/appbrain/c/d;->e:Ljava/io/InputStream;

    return-void
.end method

.method private constructor <init>([BI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/appbrain/c/d;->h:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/appbrain/c/d;->j:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/appbrain/c/d;->k:I

    iput-object p1, p0, Lcom/appbrain/c/d;->a:[B

    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lcom/appbrain/c/d;->b:I

    iput v1, p0, Lcom/appbrain/c/d;->d:I

    iput v1, p0, Lcom/appbrain/c/d;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appbrain/c/d;->e:Ljava/io/InputStream;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/appbrain/c/d;
    .locals 1

    new-instance v0, Lcom/appbrain/c/d;

    invoke-direct {v0, p0}, Lcom/appbrain/c/d;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static a([BI)Lcom/appbrain/c/d;
    .locals 2

    new-instance v0, Lcom/appbrain/c/d;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/c/d;-><init>([BI)V

    :try_start_0
    invoke-direct {v0, p1}, Lcom/appbrain/c/d;->c(I)I
    :try_end_0
    .catch Lcom/appbrain/c/l; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Z)Z
    .locals 4

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/appbrain/c/d;->d:I

    iget v3, p0, Lcom/appbrain/c/d;->b:I

    if-ge v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/c/d;->g:I

    iget v3, p0, Lcom/appbrain/c/d;->b:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/appbrain/c/d;->h:I

    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/appbrain/c/l;->a()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    iget v0, p0, Lcom/appbrain/c/d;->g:I

    iget v3, p0, Lcom/appbrain/c/d;->b:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/appbrain/c/d;->g:I

    iput v2, p0, Lcom/appbrain/c/d;->d:I

    iget-object v0, p0, Lcom/appbrain/c/d;->e:Ljava/io/InputStream;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/appbrain/c/d;->b:I

    iget v0, p0, Lcom/appbrain/c/d;->b:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/appbrain/c/d;->b:I

    if-ge v0, v1, :cond_5

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/appbrain/c/d;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/appbrain/c/d;->e:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/appbrain/c/d;->a:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/appbrain/c/d;->b:I

    if-ne v0, v1, :cond_7

    iput v2, p0, Lcom/appbrain/c/d;->b:I

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/appbrain/c/l;->a()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/appbrain/c/d;->j()V

    iget v0, p0, Lcom/appbrain/c/d;->g:I

    iget v1, p0, Lcom/appbrain/c/d;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/appbrain/c/d;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/appbrain/c/d;->k:I

    if-gt v0, v1, :cond_8

    if-gez v0, :cond_9

    :cond_8
    invoke-static {}, Lcom/appbrain/c/l;->h()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(I)I
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lcom/appbrain/c/l;->b()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/c/d;->g:I

    iget v1, p0, Lcom/appbrain/c/d;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/appbrain/c/d;->h:I

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/appbrain/c/l;->a()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lcom/appbrain/c/d;->h:I

    invoke-direct {p0}, Lcom/appbrain/c/d;->j()V

    return v1
.end method

.method private d(I)V
    .locals 4

    const/4 v3, 0x1

    if-gez p1, :cond_0

    invoke-static {}, Lcom/appbrain/c/l;->b()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/c/d;->g:I

    iget v1, p0, Lcom/appbrain/c/d;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/appbrain/c/d;->h:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/appbrain/c/d;->h:I

    iget v1, p0, Lcom/appbrain/c/d;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/appbrain/c/d;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/appbrain/c/d;->d(I)V

    invoke-static {}, Lcom/appbrain/c/l;->a()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/appbrain/c/d;->b:I

    iget v1, p0, Lcom/appbrain/c/d;->d:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/appbrain/c/d;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/appbrain/c/d;->d:I

    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/appbrain/c/d;->b:I

    iget v1, p0, Lcom/appbrain/c/d;->d:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/appbrain/c/d;->b:I

    iput v1, p0, Lcom/appbrain/c/d;->d:I

    invoke-direct {p0, v3}, Lcom/appbrain/c/d;->a(Z)Z

    :goto_1
    sub-int v1, p1, v0

    iget v2, p0, Lcom/appbrain/c/d;->b:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/appbrain/c/d;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/appbrain/c/d;->b:I

    iput v1, p0, Lcom/appbrain/c/d;->d:I

    invoke-direct {p0, v3}, Lcom/appbrain/c/d;->a(Z)Z

    goto :goto_1

    :cond_3
    sub-int v0, p1, v0

    iput v0, p0, Lcom/appbrain/c/d;->d:I

    goto :goto_0
.end method

.method private j()V
    .locals 2

    iget v0, p0, Lcom/appbrain/c/d;->b:I

    iget v1, p0, Lcom/appbrain/c/d;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/c/d;->b:I

    iget v0, p0, Lcom/appbrain/c/d;->g:I

    iget v1, p0, Lcom/appbrain/c/d;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/appbrain/c/d;->h:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/appbrain/c/d;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/c/d;->c:I

    iget v0, p0, Lcom/appbrain/c/d;->b:I

    iget v1, p0, Lcom/appbrain/c/d;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/c/d;->b:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/appbrain/c/d;->c:I

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/appbrain/c/d;->d:I

    iget v2, p0, Lcom/appbrain/c/d;->b:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/appbrain/c/d;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    iput v0, p0, Lcom/appbrain/c/d;->f:I

    :goto_1
    return v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/appbrain/c/d;->g()I

    move-result v0

    iput v0, p0, Lcom/appbrain/c/d;->f:I

    iget v0, p0, Lcom/appbrain/c/d;->f:I

    invoke-static {v0}, Lcom/appbrain/c/u;->b(I)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/appbrain/c/l;->d()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :cond_2
    iget v0, p0, Lcom/appbrain/c/d;->f:I

    goto :goto_1
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/c/d;->f:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/appbrain/c/l;->e()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public final a(Lcom/appbrain/c/p;Lcom/appbrain/c/g;)V
    .locals 3

    invoke-virtual {p0}, Lcom/appbrain/c/d;->g()I

    move-result v0

    iget v1, p0, Lcom/appbrain/c/d;->i:I

    iget v2, p0, Lcom/appbrain/c/d;->j:I

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/appbrain/c/l;->g()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/appbrain/c/d;->c(I)I

    move-result v0

    iget v1, p0, Lcom/appbrain/c/d;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/appbrain/c/d;->i:I

    invoke-interface {p1, p0, p2}, Lcom/appbrain/c/p;->b(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/p;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/appbrain/c/d;->a(I)V

    iget v1, p0, Lcom/appbrain/c/d;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/appbrain/c/d;->i:I

    iput v0, p0, Lcom/appbrain/c/d;->h:I

    invoke-direct {p0}, Lcom/appbrain/c/d;->j()V

    return-void
.end method

.method public final b()J
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/appbrain/c/l;->c()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0
.end method

.method public final b(I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/appbrain/c/u;->a(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/appbrain/c/l;->f()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/appbrain/c/d;->g()I

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/appbrain/c/d;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/appbrain/c/d;->d(I)V

    goto :goto_0

    :cond_0
    :pswitch_3
    invoke-virtual {p0}, Lcom/appbrain/c/d;->a()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/appbrain/c/d;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    invoke-static {p1}, Lcom/appbrain/c/u;->b(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/appbrain/c/u;->a(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/appbrain/c/d;->a(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/appbrain/c/d;->h()I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final c()I
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/c/d;->g()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/c/d;->g()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/appbrain/c/c;
    .locals 12

    const/16 v11, 0x1000

    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/appbrain/c/d;->g()I

    move-result v5

    if-nez v5, :cond_0

    sget-object v0, Lcom/appbrain/c/c;->a:Lcom/appbrain/c/c;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/appbrain/c/d;->b:I

    iget v2, p0, Lcom/appbrain/c/d;->d:I

    sub-int/2addr v0, v2

    if-gt v5, v0, :cond_1

    if-lez v5, :cond_1

    iget-object v0, p0, Lcom/appbrain/c/d;->a:[B

    iget v1, p0, Lcom/appbrain/c/d;->d:I

    invoke-static {v0, v1, v5}, Lcom/appbrain/c/c;->a([BII)Lcom/appbrain/c/c;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/c/d;->d:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/appbrain/c/d;->d:I

    goto :goto_0

    :cond_1
    if-gez v5, :cond_2

    invoke-static {}, Lcom/appbrain/c/l;->b()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :cond_2
    iget v0, p0, Lcom/appbrain/c/d;->g:I

    iget v2, p0, Lcom/appbrain/c/d;->d:I

    add-int/2addr v0, v2

    add-int/2addr v0, v5

    iget v2, p0, Lcom/appbrain/c/d;->h:I

    if-le v0, v2, :cond_3

    iget v0, p0, Lcom/appbrain/c/d;->h:I

    iget v1, p0, Lcom/appbrain/c/d;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/appbrain/c/d;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/appbrain/c/d;->d(I)V

    invoke-static {}, Lcom/appbrain/c/l;->a()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :cond_3
    iget v0, p0, Lcom/appbrain/c/d;->b:I

    iget v2, p0, Lcom/appbrain/c/d;->d:I

    sub-int/2addr v0, v2

    if-gt v5, v0, :cond_4

    new-array v0, v5, [B

    iget-object v2, p0, Lcom/appbrain/c/d;->a:[B

    iget v3, p0, Lcom/appbrain/c/d;->d:I

    invoke-static {v2, v3, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/appbrain/c/d;->d:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/appbrain/c/d;->d:I

    :goto_1
    invoke-static {v0}, Lcom/appbrain/c/c;->a([B)Lcom/appbrain/c/c;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-ge v5, v11, :cond_6

    new-array v2, v5, [B

    iget v0, p0, Lcom/appbrain/c/d;->b:I

    iget v3, p0, Lcom/appbrain/c/d;->d:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/appbrain/c/d;->a:[B

    iget v4, p0, Lcom/appbrain/c/d;->d:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/appbrain/c/d;->b:I

    iput v3, p0, Lcom/appbrain/c/d;->d:I

    invoke-direct {p0, v6}, Lcom/appbrain/c/d;->a(Z)Z

    :goto_2
    sub-int v3, v5, v0

    iget v4, p0, Lcom/appbrain/c/d;->b:I

    if-le v3, v4, :cond_5

    iget-object v3, p0, Lcom/appbrain/c/d;->a:[B

    iget v4, p0, Lcom/appbrain/c/d;->b:I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/appbrain/c/d;->b:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/appbrain/c/d;->b:I

    iput v3, p0, Lcom/appbrain/c/d;->d:I

    invoke-direct {p0, v6}, Lcom/appbrain/c/d;->a(Z)Z

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/appbrain/c/d;->a:[B

    sub-int v4, v5, v0

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v0, v5, v0

    iput v0, p0, Lcom/appbrain/c/d;->d:I

    move-object v0, v2

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/appbrain/c/d;->d:I

    iget v7, p0, Lcom/appbrain/c/d;->b:I

    iget v0, p0, Lcom/appbrain/c/d;->g:I

    iget v2, p0, Lcom/appbrain/c/d;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/appbrain/c/d;->g:I

    iput v1, p0, Lcom/appbrain/c/d;->d:I

    iput v1, p0, Lcom/appbrain/c/d;->b:I

    sub-int v0, v7, v6

    sub-int v0, v5, v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    :goto_3
    if-lez v4, :cond_a

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v9, v0, [B

    move v0, v1

    :goto_4
    array-length v2, v9

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/appbrain/c/d;->e:Ljava/io/InputStream;

    if-nez v2, :cond_7

    move v2, v3

    :goto_5
    if-ne v2, v3, :cond_8

    invoke-static {}, Lcom/appbrain/c/l;->a()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v2, p0, Lcom/appbrain/c/d;->e:Ljava/io/InputStream;

    array-length v10, v9

    sub-int/2addr v10, v0

    invoke-virtual {v2, v9, v0, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_5

    :cond_8
    iget v10, p0, Lcom/appbrain/c/d;->g:I

    add-int/2addr v10, v2

    iput v10, p0, Lcom/appbrain/c/d;->g:I

    add-int/2addr v0, v2

    goto :goto_4

    :cond_9
    array-length v0, v9

    sub-int v0, v4, v0

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    goto :goto_3

    :cond_a
    new-array v3, v5, [B

    sub-int v0, v7, v6

    iget-object v2, p0, Lcom/appbrain/c/d;->a:[B

    invoke-static {v2, v6, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v0, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_6

    :cond_b
    move-object v0, v3

    goto/16 :goto_1
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/c/d;->g()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 3

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    move-result v1

    if-ltz v1, :cond_4

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/appbrain/c/l;->c()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0
.end method

.method public final h()I
    .locals 4

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    move-result v0

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    move-result v1

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    move-result v2

    invoke-virtual {p0}, Lcom/appbrain/c/d;->i()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final i()B
    .locals 3

    iget v0, p0, Lcom/appbrain/c/d;->d:I

    iget v1, p0, Lcom/appbrain/c/d;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/appbrain/c/d;->a(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/appbrain/c/d;->a:[B

    iget v1, p0, Lcom/appbrain/c/d;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/appbrain/c/d;->d:I

    aget-byte v0, v0, v1

    return v0
.end method
