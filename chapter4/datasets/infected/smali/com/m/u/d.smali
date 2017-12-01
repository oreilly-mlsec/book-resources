.class public Lcom/m/u/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m/u/d$aa;
    }
.end annotation


# static fields
.field public static final aa:Ljava/lang/String;

.field public static final ab:Ljava/lang/String;

.field public static final ac:Ljava/lang/String;

.field public static final ad:Ljava/lang/String;

.field public static final ae:Ljava/lang/String;

.field public static final af:Ljava/lang/String;

.field public static final ag:Ljava/lang/String;

.field public static final ah:Ljava/lang/String;

.field private static ai:Lcom/m/u/d;


# instance fields
.field private aj:Landroid/database/sqlite/SQLiteDatabase;

.field private ak:Landroid/database/sqlite/SQLiteOpenHelper;

.field private al:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/m/u/d;->ai:Lcom/m/u/d;

    sget-object v0, Lcom/m/u/ac;->cv:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/d;->aa:Ljava/lang/String;

    sget-object v0, Lcom/m/u/ac;->cw:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/d;->ab:Ljava/lang/String;

    sget-object v0, Lcom/m/u/ac;->cx:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/d;->ac:Ljava/lang/String;

    sget-object v0, Lcom/m/u/ac;->cy:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/d;->ad:Ljava/lang/String;

    sget-object v0, Lcom/m/u/ac;->cz:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/d;->ae:Ljava/lang/String;

    sget-object v0, Lcom/m/u/ac;->da:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/d;->af:Ljava/lang/String;

    sget-object v0, Lcom/m/u/ac;->db:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/d;->ag:Ljava/lang/String;

    sget-object v0, Lcom/m/u/ac;->dc:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/d;->ah:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/m/u/d;->aj:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p1, p0, Lcom/m/u/d;->al:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized aa(Landroid/content/Context;)Lcom/m/u/d;
    .locals 2

    const-class v1, Lcom/m/u/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/m/u/d;->ai:Lcom/m/u/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/m/u/d;

    invoke-direct {v0, p0}, Lcom/m/u/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/m/u/d;->ai:Lcom/m/u/d;

    :cond_0
    sget-object v0, Lcom/m/u/d;->ai:Lcom/m/u/d;

    invoke-direct {v0}, Lcom/m/u/d;->ab()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/m/u/d;->ai:Lcom/m/u/d;

    invoke-virtual {v0}, Lcom/m/u/d;->aa()V

    :cond_1
    sget-object v0, Lcom/m/u/d;->ai:Lcom/m/u/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private aa(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drop table if exists "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/m/u/d;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic aa(Lcom/m/u/d;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m/u/d;->aa(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private ab()Z
    .locals 1

    iget-object v0, p0, Lcom/m/u/d;->ak:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m/u/d;->aj:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public aa(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v1, 0x1

    const/4 v5, 0x0

    const-string v10, ""

    iget-object v0, p0, Lcom/m/u/d;->aj:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-object v10

    :cond_0
    iget-object v0, p0, Lcom/m/u/d;->aj:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/m/u/d;->ab:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v6, Lcom/m/u/d;->ad:Ljava/lang/String;

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/m/u/d;->ac:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "=\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    sget-object v0, Lcom/m/u/d;->ad:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v10, v0

    goto :goto_0

    :cond_1
    move-object v0, v10

    goto :goto_1
.end method

.method public aa()V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/m/u/d$aa;

    iget-object v2, p0, Lcom/m/u/d;->al:Landroid/content/Context;

    sget-object v3, Lcom/m/u/d;->aa:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/m/u/d$aa;-><init>(Lcom/m/u/d;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/m/u/d;->ak:Landroid/database/sqlite/SQLiteOpenHelper;

    iget-object v0, p0, Lcom/m/u/d;->ak:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/m/u/d;->aj:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/m/u/d;->aj:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public aa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/m/u/d;->aj:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/m/u/d;->aa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/m/u/d;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/m/u/d;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m/u/d;->aj:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/m/u/d;->ab:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/m/u/d;->ab(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/m/u/d;->aj:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/m/u/d;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/m/u/d;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m/u/d;->aj:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/m/u/d;->ab:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/m/u/d;->ac:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
