.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/ow;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/ov$a;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ov$a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ow;->a:Lcom/google/vr/sdk/widgets/video/deps/ov$a;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ow;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ow;->a:Lcom/google/vr/sdk/widgets/video/deps/ov$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ow;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ov;->a(Lcom/google/vr/sdk/widgets/video/deps/ov$a;Ljava/lang/Object;)V

    return-void
.end method
