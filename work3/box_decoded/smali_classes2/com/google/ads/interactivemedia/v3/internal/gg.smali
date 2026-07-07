.class final Lcom/google/ads/interactivemedia/v3/internal/gg;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Z

.field public final j:[Lcom/google/ads/interactivemedia/v3/internal/fj;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/cz;IIIIIIZZ[Lcom/google/ads/interactivemedia/v3/internal/fj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->b:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->c:I

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->d:I

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->e:I

    iput p6, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->f:I

    iput p7, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->g:I

    iput-boolean p9, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->i:Z

    iput-object p10, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->j:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    const-wide/32 p1, 0x3d090

    const/4 p8, 0x1

    if-eqz p3, :cond_1

    if-eq p3, p8, :cond_0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/gg;->c(J)I

    move-result p1

    goto :goto_1

    :cond_0
    const-wide/32 p1, 0x2faf080

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/gg;->c(J)I

    move-result p1

    goto :goto_1

    .line 1
    :cond_1
    invoke-static {p5, p6, p7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p3

    const/4 p5, -0x2

    if-eq p3, p5, :cond_2

    goto :goto_0

    :cond_2
    const/4 p8, 0x0

    .line 2
    :goto_0
    invoke-static {p8}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    mul-int/lit8 p5, p3, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/gg;->b(J)J

    move-result-wide p1

    long-to-int p2, p1

    mul-int p2, p2, p4

    const-wide/32 p6, 0xb71b0

    invoke-virtual {p0, p6, p7}, Lcom/google/ads/interactivemedia/v3/internal/gg;->b(J)J

    move-result-wide p6

    long-to-int p1, p6

    mul-int p1, p1, p4

    .line 3
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4
    invoke-static {p5, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(III)I

    move-result p1

    .line 5
    :goto_1
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->h:I

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fe;Z)Landroid/media/AudioAttributes;
    .locals 0

    if-eqz p1, :cond_0

    .line 28
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p1, 0x3

    .line 29
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    const/16 p1, 0x10

    .line 30
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method private final c(J)I
    .locals 3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->g:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_1
    const v1, 0x52080

    goto :goto_0

    :pswitch_2
    const v1, 0x3e800

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x1f40

    goto :goto_0

    :pswitch_4
    const v1, 0x2ebae4

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x1b58

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x3e80

    goto :goto_0

    :pswitch_7
    const v1, 0x186a0

    goto :goto_0

    :pswitch_8
    const v1, 0x9c40

    goto :goto_0

    :pswitch_9
    const v1, 0x225510

    goto :goto_0

    :pswitch_a
    const v1, 0x2ee00

    goto :goto_0

    :pswitch_b
    const v1, 0xbb800

    goto :goto_0

    :pswitch_c
    const v1, 0x13880

    :goto_0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    add-int/2addr v1, v1

    :cond_0
    int-to-long v0, v1

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    .line 0
    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public final a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->e:I

    int-to-long v0, v0

    .line 27
    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final a(ZLcom/google/ads/interactivemedia/v3/internal/fe;I)Landroid/media/AudioTrack;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/fu;
        }
    .end annotation

    const/4 v8, 0x0

    .line 7
    :try_start_0
    sget v2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v3, 0x1d

    const/4 v9, 0x1

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->e:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->f:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->g:I

    .line 8
    invoke-static {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(III)Landroid/media/AudioFormat;

    move-result-object v2

    .line 9
    invoke-static {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/gg;->a(Lcom/google/ads/interactivemedia/v3/internal/fe;Z)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 10
    new-instance v1, Landroid/media/AudioTrack$Builder;

    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 11
    invoke-virtual {v1, v0}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v2}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v9}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->h:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->c:I

    if-ne v1, v9, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v0

    goto :goto_1

    .line 26
    :cond_1
    sget v2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    new-instance v6, Landroid/media/AudioTrack;

    .line 21
    invoke-static {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/gg;->a(Lcom/google/ads/interactivemedia/v3/internal/fe;Z)Landroid/media/AudioAttributes;

    move-result-object v1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->e:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->f:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->g:I

    .line 22
    invoke-static {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(III)Landroid/media/AudioFormat;

    move-result-object v2

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->h:I

    const/4 v4, 0x1

    move-object v0, v6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    move-object v0, v6

    goto :goto_1

    .line 18
    :cond_2
    iget v0, p2, Lcom/google/ads/interactivemedia/v3/internal/fe;->c:I

    if-nez p3, :cond_3

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->e:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->f:I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->g:I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->h:I

    const/4 v7, 0x1

    move-object v1, v0

    .line 19
    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_1

    :cond_3
    new-instance v10, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->e:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->f:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->g:I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->h:I

    const/4 v6, 0x1

    move-object v0, v10

    move v7, p3

    .line 20
    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v10

    .line 24
    :goto_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-ne v1, v9, :cond_4

    return-object v0

    .line 25
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fu;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->e:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->f:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->h:I

    .line 26
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/fu;-><init>(IIII)V

    throw v0

    .line 20
    :catch_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fu;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->e:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->f:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->h:I

    .line 23
    invoke-direct {v0, v8, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/fu;-><init>(IIII)V

    throw v0
.end method

.method public final b(J)J
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gg;->e:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method
