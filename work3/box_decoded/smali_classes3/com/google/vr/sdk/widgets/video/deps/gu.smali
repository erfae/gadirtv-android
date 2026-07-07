.class public final Lcom/google/vr/sdk/widgets/video/deps/gu;
.super Lcom/google/vr/sdk/widgets/video/deps/a;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/gr;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/gt;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/gs;

.field private final f:[Lcom/google/vr/sdk/widgets/video/deps/gp;

.field private final g:[J

.field private h:I

.field private i:I

.field private j:Lcom/google/vr/sdk/widgets/video/deps/gq;

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/gt;Landroid/os/Looper;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/gr;->a:Lcom/google/vr/sdk/widgets/video/deps/gr;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gu;-><init>(Lcom/google/vr/sdk/widgets/video/deps/gt;Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/gr;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/gt;Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/gr;)V
    .locals 1

    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/a;-><init>(I)V

    .line 4
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/gt;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->b:Lcom/google/vr/sdk/widgets/video/deps/gt;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p2, p0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->c:Landroid/os/Handler;

    .line 7
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/gr;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->a:Lcom/google/vr/sdk/widgets/video/deps/gr;

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gs;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/gs;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->e:Lcom/google/vr/sdk/widgets/video/deps/gs;

    const/4 p1, 0x5

    new-array p2, p1, [Lcom/google/vr/sdk/widgets/video/deps/gp;

    .line 10
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->f:[Lcom/google/vr/sdk/widgets/video/deps/gp;

    new-array p1, p1, [J

    .line 11
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->g:[J

    return-void
.end method

.method private a()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->f:[Lcom/google/vr/sdk/widgets/video/deps/gp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->h:I

    .line 51
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->i:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gp;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gu;->b(Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/gp;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->b:Lcom/google/vr/sdk/widgets/video/deps/gt;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gt;->a(Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/gp;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gu;->b(Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    const/4 p1, 0x1

    return p1

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isEnded()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->k:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gu;->a()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->j:Lcom/google/vr/sdk/widgets/video/deps/gq;

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gu;->a()V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->k:Z

    return-void
.end method

.method protected onStreamChanged([Lcom/google/vr/sdk/widgets/video/deps/l;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 16
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->a:Lcom/google/vr/sdk/widgets/video/deps/gr;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/gr;->b(Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/gq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->j:Lcom/google/vr/sdk/widgets/video/deps/gq;

    return-void
.end method

.method public render(JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 21
    iget-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->k:Z

    const/4 p4, 0x5

    const/4 v0, 0x1

    if-nez p3, :cond_2

    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->i:I

    if-ge p3, p4, :cond_2

    .line 22
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->e:Lcom/google/vr/sdk/widgets/video/deps/gs;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/gs;->a()V

    .line 23
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->e:Lcom/google/vr/sdk/widgets/video/deps/gs;

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gu;->readSource(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I

    move-result p3

    const/4 v1, -0x4

    if-ne p3, v1, :cond_2

    .line 25
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->e:Lcom/google/vr/sdk/widgets/video/deps/gs;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/gs;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 26
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->k:Z

    goto :goto_0

    .line 27
    :cond_0
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->e:Lcom/google/vr/sdk/widgets/video/deps/gs;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/gs;->b_()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->e:Lcom/google/vr/sdk/widgets/video/deps/gs;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    iput-wide v1, p3, Lcom/google/vr/sdk/widgets/video/deps/gs;->d:J

    .line 29
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->e:Lcom/google/vr/sdk/widgets/video/deps/gs;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/gs;->h()V

    .line 30
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->h:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->i:I

    add-int/2addr p3, v1

    rem-int/2addr p3, p4

    .line 31
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->f:[Lcom/google/vr/sdk/widgets/video/deps/gp;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->j:Lcom/google/vr/sdk/widgets/video/deps/gq;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->e:Lcom/google/vr/sdk/widgets/video/deps/gs;

    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gq;->a(Lcom/google/vr/sdk/widgets/video/deps/gs;)Lcom/google/vr/sdk/widgets/video/deps/gp;

    move-result-object v2

    aput-object v2, v1, p3

    .line 32
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->g:[J

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->e:Lcom/google/vr/sdk/widgets/video/deps/gs;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/gs;->c:J

    aput-wide v2, v1, p3

    .line 33
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->i:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->i:I

    .line 34
    :cond_2
    :goto_0
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->i:I

    if-lez p3, :cond_3

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->g:[J

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->h:I

    aget-wide v2, p3, v1

    cmp-long p3, v2, p1

    if-gtz p3, :cond_3

    .line 35
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->f:[Lcom/google/vr/sdk/widgets/video/deps/gp;

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gu;->a(Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    .line 36
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->f:[Lcom/google/vr/sdk/widgets/video/deps/gp;

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->h:I

    const/4 p3, 0x0

    aput-object p3, p1, p2

    add-int/2addr p2, v0

    .line 37
    rem-int/2addr p2, p4

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->h:I

    .line 38
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->i:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->i:I

    :cond_3
    return-void
.end method

.method public supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/l;)I
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gu;->a:Lcom/google/vr/sdk/widgets/video/deps/gr;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gr;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 14
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gu;->supportsFormatDrm(Lcom/google/vr/sdk/widgets/video/deps/cd;Lcom/google/vr/sdk/widgets/video/deps/cb;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
