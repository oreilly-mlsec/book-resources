.class public Lcom/st/m/b/SB$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/st/m/b/SB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/st/m/b/SB;


# direct methods
.method public constructor <init>(Lcom/st/m/b/SB;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    iput-object p1, p0, Lcom/st/m/b/SB$a;->a:Lcom/st/m/b/SB;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS statistics_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, app_name text, packagename text, version_code INTEGER, type INTEGER, is_upload INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    if-le p3, p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/st/m/b/SB$a;->a:Lcom/st/m/b/SB;

    invoke-virtual {v0, p1}, Lcom/st/m/b/SB;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/st/m/b/SB$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0
.end method
