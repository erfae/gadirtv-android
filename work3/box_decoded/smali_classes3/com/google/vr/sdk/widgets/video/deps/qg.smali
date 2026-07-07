.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/qg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/qd$a;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/l;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/qd$a;Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/qg;->a:Lcom/google/vr/sdk/widgets/video/deps/qd$a;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/qg;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qg;->a:Lcom/google/vr/sdk/widgets/video/deps/qd$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/qg;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    return-void
.end method
