.class public final Lcom/google/ads/interactivemedia/v3/internal/bl;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/zt;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:I

.field private final g:J

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zt;

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zt;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x9c4

    const/4 v2, 0x0

    const-string v3, "bufferForPlaybackMs"

    const-string v4, "0"

    .line 2
    invoke-static {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/bl;->a(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1388

    const-string v6, "bufferForPlaybackAfterRebufferMs"

    .line 3
    invoke-static {v5, v2, v6, v4}, Lcom/google/ads/interactivemedia/v3/internal/bl;->a(IILjava/lang/String;Ljava/lang/String;)V

    const v7, 0xc350

    const-string v8, "minBufferMs"

    .line 4
    invoke-static {v7, v1, v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/bl;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v7, v5, v8, v6}, Lcom/google/ads/interactivemedia/v3/internal/bl;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    .line 6
    invoke-static {v7, v7, v1, v8}, Lcom/google/ads/interactivemedia/v3/internal/bl;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "backBufferDurationMs"

    .line 7
    invoke-static {v2, v2, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/bl;->a(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->a:Lcom/google/ads/interactivemedia/v3/internal/zt;

    const-wide/32 v0, 0xc350

    .line 8
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->b:J

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->c:J

    const-wide/16 v0, 0x9c4

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->d:J

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->e:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->f:I

    const/high16 v0, 0xc80000

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->h:I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->g:J

    return-void
.end method

.method private static a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x15

    add-int/2addr p1, v0

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be less than "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method private final a(Z)V
    .locals 1

    const/high16 v0, 0xc80000

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->i:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->a:Lcom/google/ads/interactivemedia/v3/internal/zt;

    .line 19
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zt;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;->a(Z)V

    return-void
.end method

.method public final a([Lcom/google/ads/interactivemedia/v3/internal/ed;Lcom/google/ads/interactivemedia/v3/internal/ys;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 13
    :goto_0
    array-length v3, p1

    const/4 v3, 0x2

    const/high16 v4, 0xc80000

    if-ge v1, v3, :cond_1

    .line 14
    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ys;->a(I)Lcom/google/ads/interactivemedia/v3/internal/yr;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 15
    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/internal/ed;->a()I

    move-result v3

    const/high16 v5, 0x20000

    packed-switch v3, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    const/4 v4, 0x0

    goto :goto_1

    :pswitch_1
    const/high16 v4, 0x20000

    goto :goto_1

    :pswitch_2
    const/high16 v4, 0x7d00000

    goto :goto_1

    :pswitch_3
    const/high16 v4, 0x89a0000

    :goto_1
    :pswitch_4
    add-int/2addr v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->h:I

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->a:Lcom/google/ads/interactivemedia/v3/internal/zt;

    .line 18
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zt;->a(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(JF)Z
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->a:Lcom/google/ads/interactivemedia/v3/internal/zt;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zt;->d()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->h:I

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->b:J

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p3, v4

    if-lez v4, :cond_0

    .line 20
    invoke-static {v2, v3, p3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(JF)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->c:J

    .line 21
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_0
    const-wide/32 v4, 0x7a120

    .line 22
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 p3, 0x0

    cmp-long v6, p1, v2

    if-gez v6, :cond_2

    if-ge v0, v1, :cond_1

    const/4 p3, 0x1

    :cond_1
    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->i:Z

    if-nez p3, :cond_4

    cmp-long p3, p1, v4

    if-gez p3, :cond_4

    const-string p1, "DefaultLoadControl"

    const-string p2, "Target buffer size reached with less than 500ms of buffered media data."

    .line 23
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->c:J

    cmp-long v4, p1, v2

    if-gez v4, :cond_3

    if-lt v0, v1, :cond_4

    :cond_3
    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->i:Z

    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->i:Z

    return p1
.end method

.method public final a(JFZ)Z
    .locals 3

    .line 24
    invoke-static {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JF)J

    move-result-wide p1

    if-eqz p4, :cond_0

    iget-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->e:J

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->d:J

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->a:Lcom/google/ads/interactivemedia/v3/internal/zt;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zt;->d()I

    move-result p1

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->h:I

    if-lt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;->a(Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;->a(Z)V

    return-void
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->g:J

    return-wide v0
.end method

.method public final e()Lcom/google/ads/interactivemedia/v3/internal/zt;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bl;->a:Lcom/google/ads/interactivemedia/v3/internal/zt;

    return-object v0
.end method
