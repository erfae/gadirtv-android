.class public Lcom/google/vr/ndk/base/SwapChain;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SwapChain"


# instance fields
.field private currentFrame:I

.field private final frames:[Lcom/google/vr/ndk/base/Frame;

.field private nativeSwapChain:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/vr/ndk/base/Frame;

    .line 3
    iput-object p1, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    .line 4
    new-instance p2, Lcom/google/vr/ndk/base/Frame;

    invoke-direct {p2}, Lcom/google/vr/ndk/base/Frame;-><init>()V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 5
    new-instance p2, Lcom/google/vr/ndk/base/Frame;

    invoke-direct {p2}, Lcom/google/vr/ndk/base/Frame;-><init>()V

    const/4 v1, 0x1

    aput-object p2, p1, v1

    .line 6
    iput v0, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    return-void
.end method


# virtual methods
.method public acquireFrame()Lcom/google/vr/ndk/base/Frame;
    .locals 6

    .line 14
    iget-object v0, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/Frame;->getNativeFrame()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/Frame;->getNativeFrame()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 16
    iget v0, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    .line 17
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainAcquireFrame(J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 20
    :cond_0
    iget-object v2, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    iget v3, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v1}, Lcom/google/vr/ndk/base/Frame;->setNativeFrame(J)V

    .line 21
    iget-object v0, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    iget v1, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    aget-object v0, v0, v1

    return-object v0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Previous frame not submitted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 8
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 9
    sget-object v0, Lcom/google/vr/ndk/base/SwapChain;->TAG:Ljava/lang/String;

    const-string v1, "SwapChain.shutdown() should be called to ensure resource cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/SwapChain;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 13
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBufferCount()I
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainGetBufferCount(J)I

    move-result v0

    return v0
.end method

.method public getBufferSize(ILandroid/graphics/Point;)V
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainGetBufferSize(JILandroid/graphics/Point;)V

    return-void
.end method

.method public resizeBuffer(ILandroid/graphics/Point;)V
    .locals 3

    .line 25
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1, p1, v2, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainResizeBuffer(JIII)V

    return-void
.end method

.method public shutdown()V
    .locals 5

    .line 27
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 28
    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainDestroy(J)V

    .line 29
    iput-wide v2, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    :cond_0
    return-void
.end method
