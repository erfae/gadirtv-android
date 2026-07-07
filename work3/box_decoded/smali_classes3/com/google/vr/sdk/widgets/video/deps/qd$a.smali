.class public final Lcom/google/vr/sdk/widgets/video/deps/qd$a;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/qd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/qd;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/qd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    return-void
.end method


# virtual methods
.method public a(IIIF)V
    .locals 8

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->a:Landroid/os/Handler;

    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/qi;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/qi;-><init>(Lcom/google/vr/sdk/widgets/video/deps/qd$a;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(IJ)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/qh;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/qh;-><init>(Lcom/google/vr/sdk/widgets/video/deps/qd$a;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/qj;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/qj;-><init>(Lcom/google/vr/sdk/widgets/video/deps/qd$a;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/qe;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/qe;-><init>(Lcom/google/vr/sdk/widgets/video/deps/qd$a;Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/qg;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/qg;-><init>(Lcom/google/vr/sdk/widgets/video/deps/qd$a;Lcom/google/vr/sdk/widgets/video/deps/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 9

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/qf;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/qf;-><init>(Lcom/google/vr/sdk/widgets/video/deps/qd$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic b(IIIF)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/qd;->a(IIIF)V

    return-void
.end method

.method final synthetic b(IJ)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/qd;->a(IJ)V

    return-void
.end method

.method final synthetic b(Landroid/view/Surface;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/qd;->a(Landroid/view/Surface;)V

    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/qk;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/qk;-><init>(Lcom/google/vr/sdk/widgets/video/deps/qd$a;Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic b(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/qd;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/String;JJ)V
    .locals 6

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/qd;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method final synthetic c(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a()V

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/qd;->b(Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    return-void
.end method

.method final synthetic d(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qd$a;->b:Lcom/google/vr/sdk/widgets/video/deps/qd;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/qd;->a(Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    return-void
.end method
