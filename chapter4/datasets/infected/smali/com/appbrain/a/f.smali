.class final Lcom/appbrain/a/f;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;


# instance fields
.field final synthetic a:Lcom/appbrain/a/c;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appbrain/a/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/f;->a:Lcom/appbrain/a/c;

    iput-object p2, p0, Lcom/appbrain/a/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final resize(II)Landroid/graphics/Shader;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/f;->b:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/appbrain/a/c;->a(Ljava/lang/String;I)Landroid/graphics/Shader;

    move-result-object v0

    return-object v0
.end method
