.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/kw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/kv;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/kv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kw;->a:Lcom/google/vr/sdk/widgets/video/deps/kv;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kw;->a:Lcom/google/vr/sdk/widgets/video/deps/kv;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->j()V

    return-void
.end method
