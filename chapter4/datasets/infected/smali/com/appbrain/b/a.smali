.class public final Lcom/appbrain/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appbrain/b/a;->a:[B

    return-void
.end method

.method public static a(Lcom/appbrain/b/d;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/appbrain/b/d;->a()Lcom/appbrain/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/b/d;->b()Lcom/appbrain/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/b/c;->K()[B

    move-result-object v1

    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/b/d;->a(J)Lcom/appbrain/b/d;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/appbrain/b/e;->a:Lcom/appbrain/b/e;

    invoke-virtual {v0, v1}, Lcom/appbrain/b/d;->a(Lcom/appbrain/b/e;)Lcom/appbrain/b/d;

    invoke-virtual {v0}, Lcom/appbrain/b/d;->b()Lcom/appbrain/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/b/c;->K()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a([B)[B
    .locals 6

    invoke-static {p1}, Lcom/appbrain/b/c;->a([B)Lcom/appbrain/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/b/c;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/appbrain/b/c;->I()Lcom/appbrain/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/b/d;->c()Lcom/appbrain/b/d;

    invoke-virtual {v1}, Lcom/appbrain/b/d;->d()Lcom/appbrain/b/d;

    invoke-virtual {v1}, Lcom/appbrain/b/d;->b()Lcom/appbrain/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/b/c;->K()[B

    move-result-object v1

    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v0}, Lcom/appbrain/b/c;->k()Lcom/appbrain/b/e;

    move-result-object v3

    sget-object v4, Lcom/appbrain/b/e;->b:Lcom/appbrain/b/e;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/appbrain/b/a;->a:[B

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    :cond_0
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    invoke-virtual {v0}, Lcom/appbrain/b/c;->i()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Wrong checksum value. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appbrain/b/c;->i()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    invoke-virtual {v0}, Lcom/appbrain/b/c;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/appbrain/b/c;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/appbrain/b/c;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/appbrain/b/c;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/appbrain/b/c;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_2

    new-instance v1, Lcom/appbrain/d/b;

    invoke-virtual {v0}, Lcom/appbrain/b/c;->o()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/appbrain/d/b;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/appbrain/d/b;

    const-string v1, "There was an error contacting the server."

    invoke-direct {v0, v1}, Lcom/appbrain/d/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Lcom/appbrain/b/c;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/appbrain/b/c;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_4
    invoke-virtual {v0}, Lcom/appbrain/b/c;->e()Lcom/appbrain/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/c/c;->b()[B

    move-result-object v0

    goto :goto_0
.end method
