.class public final Lcom/google/vr/sdk/widgets/video/deps/ov;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ov$b;,
        Lcom/google/vr/sdk/widgets/video/deps/ov$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/ov$b<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ov;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static final synthetic a(Lcom/google/vr/sdk/widgets/video/deps/ov$a;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-interface {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ov$a;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ov;->a(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ov;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ov$b;

    invoke-direct {v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ov$b;-><init>(Landroid/os/Handler;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ov$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ov$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ov;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ov$b;

    .line 14
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ov$b;->b:Ljava/lang/Object;

    .line 15
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ov$b;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/ow;

    invoke-direct {v3, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ow;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ov$a;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ov;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ov$b;

    .line 9
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ov$b;->b:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 10
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ov;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
