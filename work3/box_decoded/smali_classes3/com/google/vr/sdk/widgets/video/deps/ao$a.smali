.class public final Lcom/google/vr/sdk/widgets/video/deps/ao$a;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/ao;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ao;)V
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
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/au;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ao$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(IJJ)V
    .locals 9

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/as;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/as;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ao$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ap;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ap;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ao$a;Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ar;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ar;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ao$a;Lcom/google/vr/sdk/widgets/video/deps/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 9

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/aq;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/aq;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ao$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic b(I)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ao;->a(I)V

    return-void
.end method

.method final synthetic b(IJJ)V
    .locals 6

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ao;->a(IJJ)V

    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/at;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/at;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ao$a;Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic b(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ao;->b(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/String;JJ)V
    .locals 6

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ao;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method final synthetic c(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a()V

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ao;->d(Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    return-void
.end method

.method final synthetic d(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ao;->c(Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    return-void
.end method
