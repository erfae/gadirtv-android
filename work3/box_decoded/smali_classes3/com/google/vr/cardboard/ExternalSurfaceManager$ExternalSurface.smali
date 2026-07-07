.class Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/ExternalSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalSurface"
.end annotation


# instance fields
.field private final callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

.field private final frameAvailableCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final glTextureId:[I

.field private final id:I

.field private volatile isAttached:Z

.field private volatile isShutdown:Z

.field private final onFrameAvailableShutdownLock:Ljava/lang/Object;

.field private final released:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile surface:Landroid/view/Surface;

.field private volatile surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final surfaceTextureFactory:Lcom/google/vr/cardboard/ExternalSurfaceManager$SurfaceTextureFactory;

.field private final surfaceTextureHeight:I

.field private final surfaceTextureWidth:I

.field private final transformMatrix:[F


# direct methods
.method constructor <init>(IIILcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;Lcom/google/vr/cardboard/ExternalSurfaceManager$SurfaceTextureFactory;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->frameAvailableCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 5
    iput-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    .line 6
    iput-boolean v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    .line 7
    iput-boolean v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isShutdown:Z

    .line 8
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->onFrameAvailableShutdownLock:Ljava/lang/Object;

    .line 9
    iput p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->id:I

    .line 10
    iput p2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTextureWidth:I

    .line 11
    iput p3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTextureHeight:I

    .line 12
    iput-object p4, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    .line 13
    iput-object p5, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTextureFactory:Lcom/google/vr/cardboard/ExternalSurfaceManager$SurfaceTextureFactory;

    .line 14
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->frameAvailableCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Ljava/lang/Object;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->onFrameAvailableShutdownLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isShutdown:Z

    return p0
.end method

.method static synthetic access$600(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    return-object p0
.end method


# virtual methods
.method getSurface()Landroid/view/Surface;
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method maybeAttachToCurrentGLContext()V
    .locals 3

    .line 16
    iget-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 18
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 19
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->maybeAttachToCurrentGLContext(I)V

    return-void
.end method

.method maybeAttachToCurrentGLContext(I)V
    .locals 3

    .line 21
    iget-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 24
    iget-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_2

    .line 25
    iget-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTextureFactory:Lcom/google/vr/cardboard/ExternalSurfaceManager$SurfaceTextureFactory;

    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$SurfaceTextureFactory;->createSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 26
    iget p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTextureWidth:I

    if-lez p1, :cond_1

    iget p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTextureHeight:I

    if-lez p1, :cond_1

    .line 27
    iget-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTextureWidth:I

    iget v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTextureHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)V

    new-instance v1, Landroid/os/Handler;

    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 31
    new-instance p1, Landroid/view/Surface;

    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surface:Landroid/view/Surface;

    goto :goto_0

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    :goto_0
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    .line 34
    iget-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    if-eqz p1, :cond_3

    .line 35
    invoke-interface {p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->onSurfaceAvailable()V

    :cond_3
    return-void
.end method

.method maybeDetachFromCurrentGLContext()V
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    if-eqz v0, :cond_1

    .line 40
    invoke-interface {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->cancelPosts()V

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    return-void
.end method

.method shutdown(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V
    .locals 8

    .line 66
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->onFrameAvailableShutdownLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 67
    :try_start_0
    iput-boolean v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isShutdown:Z

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->cancelPosts()V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 76
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 78
    :cond_2
    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surface:Landroid/view/Surface;

    .line 79
    :cond_3
    iget v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->id:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;->updateSurface(IIJ[F)V

    return-void

    :catchall_0
    move-exception p1

    .line 68
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updateSurfaceTexture(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V
    .locals 8

    .line 44
    iget-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->frameAvailableCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 49
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 50
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v5

    .line 51
    iget v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->id:I

    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    aget v4, v0, v1

    iget-object v7, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;->updateSurface(IIJ[F)V

    :cond_2
    return-void
.end method

.method updateSurfaceTextureSequentially(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V
    .locals 8

    .line 53
    iget-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->frameAvailableCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->frameAvailableCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 58
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 59
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 60
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v5

    .line 61
    iget v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->id:I

    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    aget v4, v0, v1

    iget-object v7, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;->updateSurface(IIJ[F)V

    :cond_2
    return-void
.end method
