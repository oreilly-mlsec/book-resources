.class public Lcmn/d;
.super Lcmn/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcmn/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 4

    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
