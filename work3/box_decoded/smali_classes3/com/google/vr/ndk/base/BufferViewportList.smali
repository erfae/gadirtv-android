.class public Lcom/google/vr/ndk/base/BufferViewportList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BufferViewportList"


# instance fields
.field nativeBufferViewportList:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 5
    sget-object v0, Lcom/google/vr/ndk/base/BufferViewportList;->TAG:Ljava/lang/String;

    const-string v1, "BufferViewportList.shutdown() should be called to ensure resource cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/BufferViewportList;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public get(ILcom/google/vr/ndk/base/BufferViewport;)V
    .locals 4

    .line 14
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    iget-wide v2, p2, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportListGetItem(JIJ)V

    return-void
.end method

.method public set(ILcom/google/vr/ndk/base/BufferViewport;)V
    .locals 4

    .line 16
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    iget-wide v2, p2, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportListSetItem(JIJ)V

    return-void
.end method

.method public shutdown()V
    .locals 5

    .line 10
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 11
    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportListDestroy(J)V

    .line 12
    iput-wide v2, p0, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    :cond_0
    return-void
.end method

.method public size()I
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportListGetSize(J)I

    move-result v0

    return v0
.end method
