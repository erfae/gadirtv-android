.class public final Lcom/google/vr/sdk/widgets/video/deps/jx$c;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/jx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/jx;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/ir;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/gs;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/jx;Lcom/google/vr/sdk/widgets/video/deps/ir;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->a:Lcom/google/vr/sdk/widgets/video/deps/jx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->b:Lcom/google/vr/sdk/widgets/video/deps/ir;

    .line 3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gs;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/gs;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->d:Lcom/google/vr/sdk/widgets/video/deps/gs;

    return-void
.end method

.method private a(JJ)V
    .locals 1

    .line 47
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/jx$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/jx$a;-><init>(JJ)V

    .line 48
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->a:Lcom/google/vr/sdk/widgets/video/deps/jx;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/jx;->b(Lcom/google/vr/sdk/widgets/video/deps/jx;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->a:Lcom/google/vr/sdk/widgets/video/deps/jx;

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/jx;->b(Lcom/google/vr/sdk/widgets/video/deps/jx;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(JLcom/google/vr/sdk/widgets/video/deps/gv;)V
    .locals 5

    .line 38
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/jx;->a(Lcom/google/vr/sdk/widgets/video/deps/gv;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/jx;->b(Lcom/google/vr/sdk/widgets/video/deps/gv;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->d()V

    goto :goto_0

    .line 43
    :cond_1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->a(JJ)V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 5

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->b:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->c()Lcom/google/vr/sdk/widgets/video/deps/gs;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gs;->c:J

    .line 25
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->a:Lcom/google/vr/sdk/widgets/video/deps/jx;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/jx;->a(Lcom/google/vr/sdk/widgets/video/deps/jx;)Lcom/google/vr/sdk/widgets/video/deps/gw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/gw;->a(Lcom/google/vr/sdk/widgets/video/deps/gs;)Lcom/google/vr/sdk/widgets/video/deps/gp;

    move-result-object v0

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gp;->a(I)Lcom/google/vr/sdk/widgets/video/deps/gp$a;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/gv;

    .line 27
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/gv;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/jx;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-direct {p0, v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->a(JLcom/google/vr/sdk/widgets/video/deps/gv;)V

    goto :goto_0

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->b:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->l()V

    return-void
.end method

.method private c()Lcom/google/vr/sdk/widgets/video/deps/gs;
    .locals 8

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->d:Lcom/google/vr/sdk/widgets/video/deps/gs;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gs;->a()V

    .line 33
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->b:Lcom/google/vr/sdk/widgets/video/deps/ir;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->d:Lcom/google/vr/sdk/widgets/video/deps/gs;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;ZZJ)I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->d:Lcom/google/vr/sdk/widgets/video/deps/gs;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gs;->h()V

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->d:Lcom/google/vr/sdk/widgets/video/deps/gs;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private d()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->a:Lcom/google/vr/sdk/widgets/video/deps/jx;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/jx;->b(Lcom/google/vr/sdk/widgets/video/deps/jx;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->a:Lcom/google/vr/sdk/widgets/video/deps/jx;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/jx;->b(Lcom/google/vr/sdk/widgets/video/deps/jx;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->b:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;IZ)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->b:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a()V

    return-void
.end method

.method public a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V
    .locals 7

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->b:Lcom/google/vr/sdk/widgets/video/deps/ir;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    .line 12
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->b()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jc;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->a:Lcom/google/vr/sdk/widgets/video/deps/jx;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/jx;->b(Lcom/google/vr/sdk/widgets/video/deps/jc;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->b:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->b:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    return-void
.end method

.method public a(J)Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->a:Lcom/google/vr/sdk/widgets/video/deps/jx;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/jx;->a(J)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/jc;)Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->a:Lcom/google/vr/sdk/widgets/video/deps/jx;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/jx;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;)Z

    move-result p1

    return p1
.end method
