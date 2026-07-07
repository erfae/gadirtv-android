.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/qj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/qd$a;

.field private final b:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/qd$a;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/qj;->a:Lcom/google/vr/sdk/widgets/video/deps/qd$a;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/qj;->b:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qj;->a:Lcom/google/vr/sdk/widgets/video/deps/qd$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/qj;->b:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b(Landroid/view/Surface;)V

    return-void
.end method
