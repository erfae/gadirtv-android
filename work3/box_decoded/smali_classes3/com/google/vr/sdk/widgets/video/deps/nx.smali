.class public final Lcom/google/vr/sdk/widgets/video/deps/nx;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/nn;
.implements Lcom/google/vr/sdk/widgets/video/deps/oo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/nx$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/ov;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ov<",
            "Lcom/google/vr/sdk/widgets/video/deps/nn$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/pi;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/oq;

.field private d:I

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/oq;->a:Lcom/google/vr/sdk/widgets/video/deps/oq;

    const-wide/32 v1, 0xf4240

    const/16 v3, 0x7d0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/nx;-><init>(JILcom/google/vr/sdk/widgets/video/deps/oq;)V

    return-void
.end method

.method private constructor <init>(JILcom/google/vr/sdk/widgets/video/deps/oq;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ov;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/ov;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->a:Lcom/google/vr/sdk/widgets/video/deps/ov;

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pi;

    invoke-direct {v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/pi;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->b:Lcom/google/vr/sdk/widgets/video/deps/pi;

    .line 6
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->c:Lcom/google/vr/sdk/widgets/video/deps/oq;

    .line 7
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->i:J

    return-void
.end method

.method synthetic constructor <init>(JILcom/google/vr/sdk/widgets/video/deps/oq;Lcom/google/vr/sdk/widgets/video/deps/nx$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/nx;-><init>(JILcom/google/vr/sdk/widgets/video/deps/oq;)V

    return-void
.end method

.method private a(IJJ)V
    .locals 8

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->a:Lcom/google/vr/sdk/widgets/video/deps/ov;

    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/ny;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ny;-><init>(IJJ)V

    invoke-virtual {v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/ov;->a(Lcom/google/vr/sdk/widgets/video/deps/ov$a;)V

    return-void
.end method

.method static final synthetic a(IJJLcom/google/vr/sdk/widgets/video/deps/nn$a;)V
    .locals 6

    move-object v0, p5

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 45
    invoke-interface/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/nn$a;->b(IJJ)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()J
    .locals 2

    monitor-enter p0

    .line 9
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/nn$a;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->a:Lcom/google/vr/sdk/widgets/video/deps/ov;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ov;->a(Landroid/os/Handler;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/nn$a;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->a:Lcom/google/vr/sdk/widgets/video/deps/ov;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ov;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Z)V
    .locals 0

    return-void
.end method

.method public declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;ZI)V
    .locals 0

    monitor-enter p0

    if-nez p3, :cond_0

    .line 23
    monitor-exit p0

    return-void

    .line 24
    :cond_0
    :try_start_0
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->f:J

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/oo;
    .locals 0

    return-object p0
.end method

.method public declared-synchronized b(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Z)V
    .locals 0

    monitor-enter p0

    if-nez p3, :cond_0

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_0
    :try_start_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->d:I

    if-nez p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->c:Lcom/google/vr/sdk/widgets/video/deps/oq;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/oq;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->e:J

    .line 20
    :cond_1
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Z)V
    .locals 10

    monitor-enter p0

    if-nez p3, :cond_0

    .line 27
    monitor-exit p0

    return-void

    .line 28
    :cond_0
    :try_start_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->d:I

    const/4 p2, 0x1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 29
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->c:Lcom/google/vr/sdk/widgets/video/deps/oq;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/oq;->a()J

    move-result-wide v0

    .line 30
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->e:J

    sub-long v2, v0, v2

    long-to-int v5, v2

    .line 31
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->g:J

    int-to-long v6, v5

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->g:J

    .line 32
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->h:J

    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->f:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->h:J

    if-lez v5, :cond_3

    const-wide/16 v2, 0x1f40

    mul-long v2, v2, v8

    .line 34
    div-long/2addr v2, v6

    long-to-float p1, v2

    .line 35
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->b:Lcom/google/vr/sdk/widgets/video/deps/pi;

    long-to-double v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p3, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/pi;->a(IF)V

    .line 36
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->g:J

    const-wide/16 v6, 0x7d0

    cmp-long p1, v2, v6

    if-gez p1, :cond_2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->h:J

    const-wide/32 v6, 0x80000

    cmp-long p1, v2, v6

    if-ltz p1, :cond_3

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->b:Lcom/google/vr/sdk/widgets/video/deps/pi;

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-virtual {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/pi;->a(F)F

    move-result p1

    float-to-long v2, p1

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->i:J

    .line 38
    :cond_3
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->f:J

    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->i:J

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/nx;->a(IJJ)V

    .line 39
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->d:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->d:I

    if-lez p1, :cond_4

    .line 40
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->e:J

    :cond_4
    const-wide/16 p1, 0x0

    .line 41
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nx;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
