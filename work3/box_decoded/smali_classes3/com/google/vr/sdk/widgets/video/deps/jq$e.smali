.class final Lcom/google/vr/sdk/widgets/video/deps/jq$e;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ok;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/jq;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/jq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$e;->a:Lcom/google/vr/sdk/widgets/video/deps/jq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$e;->a:Lcom/google/vr/sdk/widgets/video/deps/jq;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->b(Lcom/google/vr/sdk/widgets/video/deps/jq;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$e;->a:Lcom/google/vr/sdk/widgets/video/deps/jq;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->b(Lcom/google/vr/sdk/widgets/video/deps/jq;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$e;->a:Lcom/google/vr/sdk/widgets/video/deps/jq;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Lcom/google/vr/sdk/widgets/video/deps/jq;)Lcom/google/vr/sdk/widgets/video/deps/oj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a()V

    .line 3
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jq$e;->b()V

    return-void
.end method
