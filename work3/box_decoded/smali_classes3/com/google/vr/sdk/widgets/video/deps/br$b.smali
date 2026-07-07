.class Lcom/google/vr/sdk/widgets/video/deps/br$b;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/br;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/br;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br$b;->a:Lcom/google/vr/sdk/widgets/video/deps/br;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 5
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 7
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br$b;->a:Lcom/google/vr/sdk/widgets/video/deps/br;

    invoke-static {p1, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/br;->b(Lcom/google/vr/sdk/widgets/video/deps/br;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br$b;->a:Lcom/google/vr/sdk/widgets/video/deps/br;

    invoke-static {p1, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/br;->a(Lcom/google/vr/sdk/widgets/video/deps/br;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
