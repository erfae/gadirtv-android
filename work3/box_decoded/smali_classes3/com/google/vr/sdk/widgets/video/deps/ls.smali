.class public final Lcom/google/vr/sdk/widgets/video/deps/ls;
.super Lcom/google/vr/sdk/widgets/video/deps/a;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/lr;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/lo;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private i:Lcom/google/vr/sdk/widgets/video/deps/lm;

.field private j:Lcom/google/vr/sdk/widgets/video/deps/lp;

.field private k:Lcom/google/vr/sdk/widgets/video/deps/lq;

.field private l:Lcom/google/vr/sdk/widgets/video/deps/lq;

.field private m:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/lr;Landroid/os/Looper;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/lo;->a:Lcom/google/vr/sdk/widgets/video/deps/lo;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ls;-><init>(Lcom/google/vr/sdk/widgets/video/deps/lr;Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/lo;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/lr;Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/lo;)V
    .locals 1

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/a;-><init>(I)V

    .line 4
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/lr;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->b:Lcom/google/vr/sdk/widgets/video/deps/lr;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p2, p0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->a:Landroid/os/Handler;

    .line 7
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->c:Lcom/google/vr/sdk/widgets/video/deps/lo;

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->j:Lcom/google/vr/sdk/widgets/video/deps/lp;

    const/4 v1, -0x1

    .line 96
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->m:I

    .line 97
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->k:Lcom/google/vr/sdk/widgets/video/deps/lq;

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/lq;->e()V

    .line 99
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->k:Lcom/google/vr/sdk/widgets/video/deps/lq;

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->l:Lcom/google/vr/sdk/widgets/video/deps/lq;

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/lq;->e()V

    .line 102
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->l:Lcom/google/vr/sdk/widgets/video/deps/lq;

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/li;",
            ">;)V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ls;->b(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->a()V

    .line 105
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->i:Lcom/google/vr/sdk/widgets/video/deps/lm;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/lm;->d()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->i:Lcom/google/vr/sdk/widgets/video/deps/lm;

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->g:I

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/li;",
            ">;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->b:Lcom/google/vr/sdk/widgets/video/deps/lr;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/lr;->a(Ljava/util/List;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->b()V

    .line 110
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->c:Lcom/google/vr/sdk/widgets/video/deps/lo;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->h:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/lo;->b(Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/lm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->i:Lcom/google/vr/sdk/widgets/video/deps/lm;

    return-void
.end method

.method private d()J
    .locals 2

    .line 112
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->k:Lcom/google/vr/sdk/widgets/video/deps/lq;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/lq;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->k:Lcom/google/vr/sdk/widgets/video/deps/lq;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->m:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/lq;->a(I)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_1
    return-wide v0
.end method

.method private e()V
    .locals 1

    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 122
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ls;->b(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isEnded()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->f:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->h:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 90
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->e()V

    .line 91
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->b()V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->e()V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->e:Z

    .line 22
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->f:Z

    .line 23
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->g:I

    if-eqz p1, :cond_0

    .line 24
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->c()V

    goto :goto_0

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->a()V

    .line 26
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->i:Lcom/google/vr/sdk/widgets/video/deps/lm;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/lm;->c()V

    :goto_0
    return-void
.end method

.method protected onStreamChanged([Lcom/google/vr/sdk/widgets/video/deps/l;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    const/4 p2, 0x0

    .line 15
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->h:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 16
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->i:Lcom/google/vr/sdk/widgets/video/deps/lm;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 17
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->g:I

    goto :goto_0

    .line 18
    :cond_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->c:Lcom/google/vr/sdk/widgets/video/deps/lo;

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/lo;->b(Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/lm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->i:Lcom/google/vr/sdk/widgets/video/deps/lm;

    :goto_0
    return-void
.end method

.method public render(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 28
    iget-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->f:Z

    if-eqz p3, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->l:Lcom/google/vr/sdk/widgets/video/deps/lq;

    if-nez p3, :cond_1

    .line 31
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->i:Lcom/google/vr/sdk/widgets/video/deps/lm;

    invoke-interface {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lm;->a(J)V

    .line 32
    :try_start_0
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->i:Lcom/google/vr/sdk/widgets/video/deps/lm;

    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/lm;->b()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/vr/sdk/widgets/video/deps/lq;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->l:Lcom/google/vr/sdk/widgets/video/deps/lq;
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/ln; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object p1

    throw p1

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->getState()I

    move-result p3

    const/4 p4, 0x2

    if-eq p3, p4, :cond_2

    return-void

    .line 39
    :cond_2
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->k:Lcom/google/vr/sdk/widgets/video/deps/lq;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 40
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->d()J

    move-result-wide v2

    const/4 p3, 0x0

    :goto_1
    cmp-long v4, v2, p1

    if-gtz v4, :cond_4

    .line 42
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->m:I

    add-int/2addr p3, v1

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->m:I

    .line 43
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->d()J

    move-result-wide v2

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 45
    :cond_4
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->l:Lcom/google/vr/sdk/widgets/video/deps/lq;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 46
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/lq;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p3, :cond_8

    .line 47
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->d()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    .line 48
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->g:I

    if-ne v2, p4, :cond_5

    .line 49
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->c()V

    goto :goto_2

    .line 50
    :cond_5
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->a()V

    .line 51
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->f:Z

    goto :goto_2

    .line 52
    :cond_6
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->l:Lcom/google/vr/sdk/widgets/video/deps/lq;

    iget-wide v4, v2, Lcom/google/vr/sdk/widgets/video/deps/lq;->a:J

    cmp-long v2, v4, p1

    if-gtz v2, :cond_8

    .line 53
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->k:Lcom/google/vr/sdk/widgets/video/deps/lq;

    if-eqz p3, :cond_7

    .line 54
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/lq;->e()V

    .line 55
    :cond_7
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->l:Lcom/google/vr/sdk/widgets/video/deps/lq;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->k:Lcom/google/vr/sdk/widgets/video/deps/lq;

    .line 56
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->l:Lcom/google/vr/sdk/widgets/video/deps/lq;

    .line 57
    invoke-virtual {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lq;->a(J)I

    move-result p3

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->m:I

    const/4 p3, 0x1

    :cond_8
    :goto_2
    if-eqz p3, :cond_9

    .line 60
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->k:Lcom/google/vr/sdk/widgets/video/deps/lq;

    invoke-virtual {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lq;->b(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ls;->a(Ljava/util/List;)V

    .line 61
    :cond_9
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->g:I

    if-ne p1, p4, :cond_a

    return-void

    .line 63
    :cond_a
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->e:Z

    if-nez p1, :cond_f

    .line 64
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->j:Lcom/google/vr/sdk/widgets/video/deps/lp;

    if-nez p1, :cond_b

    .line 65
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->i:Lcom/google/vr/sdk/widgets/video/deps/lm;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/lm;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/lp;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->j:Lcom/google/vr/sdk/widgets/video/deps/lp;

    if-nez p1, :cond_b

    return-void

    .line 68
    :cond_b
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->g:I

    if-ne p1, v1, :cond_c

    .line 69
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->j:Lcom/google/vr/sdk/widgets/video/deps/lp;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lp;->a_(I)V

    .line 70
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->i:Lcom/google/vr/sdk/widgets/video/deps/lm;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->j:Lcom/google/vr/sdk/widgets/video/deps/lp;

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lm;->a(Ljava/lang/Object;)V

    .line 71
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->j:Lcom/google/vr/sdk/widgets/video/deps/lp;

    .line 72
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->g:I

    return-void

    .line 74
    :cond_c
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->j:Lcom/google/vr/sdk/widgets/video/deps/lp;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->readSource(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_e

    .line 76
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->j:Lcom/google/vr/sdk/widgets/video/deps/lp;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lp;->c()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 77
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->e:Z

    goto :goto_4

    .line 78
    :cond_d
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->j:Lcom/google/vr/sdk/widgets/video/deps/lp;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-wide p2, p2, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    iput-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/lp;->d:J

    .line 79
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->j:Lcom/google/vr/sdk/widgets/video/deps/lp;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lp;->h()V

    .line 80
    :goto_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->i:Lcom/google/vr/sdk/widgets/video/deps/lm;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->j:Lcom/google/vr/sdk/widgets/video/deps/lp;

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lm;->a(Ljava/lang/Object;)V

    .line 81
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->j:Lcom/google/vr/sdk/widgets/video/deps/lp;
    :try_end_1
    .catch Lcom/google/vr/sdk/widgets/video/deps/ln; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_e
    const/4 p2, -0x3

    if-ne p1, p2, :cond_a

    :cond_f
    return-void

    :catch_1
    move-exception p1

    .line 87
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ls;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object p1

    throw p1
.end method

.method public supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/l;)I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ls;->c:Lcom/google/vr/sdk/widgets/video/deps/lo;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/lo;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 11
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ls;->supportsFormatDrm(Lcom/google/vr/sdk/widgets/video/deps/cd;Lcom/google/vr/sdk/widgets/video/deps/cb;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    .line 12
    :cond_1
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/pb;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
