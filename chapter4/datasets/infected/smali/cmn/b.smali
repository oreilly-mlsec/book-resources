.class final Lcmn/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences$Editor;

.field final synthetic b:Lcmn/a;


# direct methods
.method constructor <init>(Lcmn/a;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcmn/b;->b:Lcmn/a;

    iput-object p2, p0, Lcmn/b;->a:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcmn/b;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
