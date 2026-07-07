.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/bn;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ao$a;Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->a:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->b:Lcom/google/vr/sdk/widgets/video/deps/bn;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->a:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ap;->b:Lcom/google/vr/sdk/widgets/video/deps/bn;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->d(Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    return-void
.end method
