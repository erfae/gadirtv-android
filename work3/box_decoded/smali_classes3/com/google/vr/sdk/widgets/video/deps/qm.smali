.class public Lcom/google/vr/sdk/widgets/video/deps/qm;
.super Lcom/google/vr/sdk/widgets/video/deps/a;
.source "CameraMotionRenderer.java"


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/bo;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private d:J

.field private e:Lcom/google/vr/sdk/widgets/video/deps/ql;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/a;-><init>(I)V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bo;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->b:Lcom/google/vr/sdk/widgets/video/deps/bo;

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    return-void
.end method

.method private a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->f:J

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->e:Lcom/google/vr/sdk/widgets/video/deps/ql;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ql;->a()V

    :cond_0
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)[F
    .locals 3

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    const/4 p1, 0x3

    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 41
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 11
    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/ql;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->e:Lcom/google/vr/sdk/widgets/video/deps/ql;

    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/a;->handleMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/qm;->hasReadStreamToEnd()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/qm;->a()V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/qm;->a()V

    return-void
.end method

.method protected onStreamChanged([Lcom/google/vr/sdk/widgets/video/deps/l;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 14
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->d:J

    return-void
.end method

.method public render(JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 20
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/qm;->hasReadStreamToEnd()Z

    move-result p3

    if-nez p3, :cond_2

    iget-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->f:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long v2, p3, v0

    if-gez v2, :cond_2

    .line 21
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->b:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a()V

    .line 22
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->b:Lcom/google/vr/sdk/widgets/video/deps/bo;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/google/vr/sdk/widgets/video/deps/qm;->readSource(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_2

    .line 23
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->b:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/bo;->c()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 25
    :cond_1
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->b:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/bo;->h()V

    .line 26
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->b:Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget-wide p3, p3, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:J

    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->f:J

    .line 27
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->e:Lcom/google/vr/sdk/widgets/video/deps/ql;

    if-eqz p3, :cond_0

    .line 28
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->b:Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget-object p3, p3, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/qm;->a(Ljava/nio/ByteBuffer;)[F

    move-result-object p3

    if-eqz p3, :cond_0

    .line 30
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->e:Lcom/google/vr/sdk/widgets/video/deps/ql;

    invoke-static {p4}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/vr/sdk/widgets/video/deps/ql;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->f:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/qm;->d:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lcom/google/vr/sdk/widgets/video/deps/ql;->a(J[F)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/l;)I
    .locals 1

    .line 6
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    const-string v0, "application/x-camera-motion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
