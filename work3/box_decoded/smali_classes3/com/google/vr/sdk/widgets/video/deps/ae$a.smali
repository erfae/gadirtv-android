.class final Lcom/google/vr/sdk/widgets/video/deps/ae$a;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/vr/sdk/widgets/video/deps/al$b;
.implements Lcom/google/vr/sdk/widgets/video/deps/ao;
.implements Lcom/google/vr/sdk/widgets/video/deps/gt;
.implements Lcom/google/vr/sdk/widgets/video/deps/lr;
.implements Lcom/google/vr/sdk/widgets/video/deps/qd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/ae;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ae;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/ae$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ae;)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1600(Lcom/google/vr/sdk/widgets/video/deps/ae;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$800(Lcom/google/vr/sdk/widgets/video/deps/ae;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$802(Lcom/google/vr/sdk/widgets/video/deps/ae;I)I

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$900(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/am;

    .line 51
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$700(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/am;->a(I)V

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$700(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ao;

    .line 55
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ao;->a(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public a(IIIF)V
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$400(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/qc;

    .line 21
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$200(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/qc;->a(IIIF)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$200(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/qd;

    .line 25
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/qd;->a(IIIF)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(IJ)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$200(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/qd;

    .line 17
    invoke-interface {v1, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/qd;->a(IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(IJJ)V
    .locals 8

    .line 67
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$700(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ao;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 68
    invoke-interface/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/ao;->a(IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$500(Lcom/google/vr/sdk/widgets/video/deps/ae;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$400(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/qc;

    .line 30
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/qc;->c()V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$200(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/qd;

    .line 33
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/qd;->a(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$102(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/bn;)Lcom/google/vr/sdk/widgets/video/deps/bn;

    .line 3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$200(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/qd;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/qd;->a(Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gp;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1300(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/gt;

    .line 84
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/gt;->a(Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$302(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$200(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/qd;

    .line 13
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/qd;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 8

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$200(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/qd;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 8
    invoke-interface/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/qd;->a(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/li;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1102(Lcom/google/vr/sdk/widgets/video/deps/ae;Ljava/util/List;)Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1200(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/lr;

    .line 80
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/lr;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->getPlayWhenReady()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1700(Lcom/google/vr/sdk/widgets/video/deps/ae;ZI)V

    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$200(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/qd;

    .line 37
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/qd;->b(Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$302(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 40
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$102(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/bn;)Lcom/google/vr/sdk/widgets/video/deps/bn;

    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1002(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 63
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$700(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ao;

    .line 64
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ao;->b(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;JJ)V
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$700(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ao;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 59
    invoke-interface/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/ao;->b(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$602(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/bn;)Lcom/google/vr/sdk/widgets/video/deps/bn;

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$700(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ao;

    .line 44
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ao;->c(Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lcom/google/vr/sdk/widgets/video/deps/bn;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$700(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ao;

    .line 72
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ao;->d(Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1002(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 75
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$602(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/bn;)Lcom/google/vr/sdk/widgets/video/deps/bn;

    .line 76
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$802(Lcom/google/vr/sdk/widgets/video/deps/ae;I)I

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1400(Lcom/google/vr/sdk/widgets/video/deps/ae;Landroid/view/Surface;Z)V

    .line 95
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1500(Lcom/google/vr/sdk/widgets/video/deps/ae;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 99
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1400(Lcom/google/vr/sdk/widgets/video/deps/ae;Landroid/view/Surface;Z)V

    .line 100
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1500(Lcom/google/vr/sdk/widgets/video/deps/ae;II)V

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1500(Lcom/google/vr/sdk/widgets/video/deps/ae;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1500(Lcom/google/vr/sdk/widgets/video/deps/ae;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1400(Lcom/google/vr/sdk/widgets/video/deps/ae;Landroid/view/Surface;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 91
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1400(Lcom/google/vr/sdk/widgets/video/deps/ae;Landroid/view/Surface;Z)V

    .line 92
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-static {p1, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->access$1500(Lcom/google/vr/sdk/widgets/video/deps/ae;II)V

    return-void
.end method
