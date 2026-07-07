.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/js;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/jq;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/jq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/js;->a:Lcom/google/vr/sdk/widgets/video/deps/jq;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/js;->a:Lcom/google/vr/sdk/widgets/video/deps/jq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->e()V

    return-void
.end method
