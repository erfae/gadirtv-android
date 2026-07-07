.class public Lcom/google/vr/ndk/base/Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Frame"


# instance fields
.field private nativeFrame:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/google/vr/ndk/base/Frame;->nativeFrame:J

    return-void
.end method

.method private checkAccess()V
    .locals 5

    .line 27
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Frame;->nativeFrame:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Frame was reused after submission"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindBuffer(I)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lcom/google/vr/ndk/base/Frame;->checkAccess()V

    .line 10
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Frame;->nativeFrame:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeFrameBindBuffer(JI)V

    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Frame;->nativeFrame:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 5
    sget-object v0, Lcom/google/vr/ndk/base/Frame;->TAG:Ljava/lang/String;

    const-string v1, "Frame finalized before it was submitted"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBufferSize(ILandroid/graphics/Point;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/google/vr/ndk/base/Frame;->checkAccess()V

    .line 18
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Frame;->nativeFrame:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeFrameGetBufferSize(JILandroid/graphics/Point;)V

    return-void
.end method

.method public getFramebufferObject(I)I
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/google/vr/ndk/base/Frame;->checkAccess()V

    .line 16
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Frame;->nativeFrame:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeFrameGetFramebufferObject(JI)I

    move-result p1

    return p1
.end method

.method getNativeFrame()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Frame;->nativeFrame:J

    return-wide v0
.end method

.method setNativeFrame(J)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/google/vr/ndk/base/Frame;->nativeFrame:J

    return-void
.end method

.method public submit(Lcom/google/vr/ndk/base/BufferViewportList;[F)V
    .locals 4

    .line 20
    invoke-direct {p0}, Lcom/google/vr/ndk/base/Frame;->checkAccess()V

    .line 21
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Frame;->nativeFrame:J

    iget-wide v2, p1, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    invoke-static {v0, v1, v2, v3, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeFrameSubmit(JJ[F)V

    const-wide/16 p1, 0x0

    .line 22
    iput-wide p1, p0, Lcom/google/vr/ndk/base/Frame;->nativeFrame:J

    return-void
.end method

.method public unbind()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/google/vr/ndk/base/Frame;->checkAccess()V

    .line 13
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Frame;->nativeFrame:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeFrameUnbind(J)V

    return-void
.end method
