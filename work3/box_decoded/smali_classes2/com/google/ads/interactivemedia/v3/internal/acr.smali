.class final Lcom/google/ads/interactivemedia/v3/internal/acr;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/acs;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/acs;Landroid/media/MediaCodec;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acr;->a:Lcom/google/ads/interactivemedia/v3/internal/acs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acr;->b:Landroid/os/Handler;

    .line 2
    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method private final a(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acr;->a:Lcom/google/ads/interactivemedia/v3/internal/acs;

    .line 3
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->b:Lcom/google/ads/interactivemedia/v3/internal/acr;

    if-eq p0, v1, :cond_0

    return-void

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, p1, v1

    if-eqz v3, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/acs;->e(J)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/bo; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acr;->a:Lcom/google/ads/interactivemedia/v3/internal/acs;

    .line 5
    invoke-static {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Lcom/google/ads/interactivemedia/v3/internal/acs;Lcom/google/ads/interactivemedia/v3/internal/bo;)V

    return-void

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Lcom/google/ads/interactivemedia/v3/internal/acs;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 7
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/acr;->a(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 2

    .line 9
    sget p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 p4, 0x1e

    if-ge p1, p4, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acr;->b:Landroid/os/Handler;

    const/4 p4, 0x0

    const/16 p5, 0x20

    shr-long v0, p2, p5

    long-to-int p5, v0

    long-to-int p3, p2

    .line 10
    invoke-static {p1, p4, p5, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acr;->b:Landroid/os/Handler;

    .line 11
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void

    .line 12
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/acr;->a(J)V

    return-void
.end method
