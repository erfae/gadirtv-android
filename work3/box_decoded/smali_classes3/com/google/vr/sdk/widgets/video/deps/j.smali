.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/i;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/x;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/i;Lcom/google/vr/sdk/widgets/video/deps/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->a:Lcom/google/vr/sdk/widgets/video/deps/i;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->b:Lcom/google/vr/sdk/widgets/video/deps/x;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->a:Lcom/google/vr/sdk/widgets/video/deps/i;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->b:Lcom/google/vr/sdk/widgets/video/deps/x;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(Lcom/google/vr/sdk/widgets/video/deps/x;)V

    return-void
.end method
