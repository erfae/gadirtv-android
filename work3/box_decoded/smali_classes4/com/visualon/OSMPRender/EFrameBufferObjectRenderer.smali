.class abstract Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;
.super Ljava/lang/Object;
.source "EFrameBufferObjectRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private framebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

.field private normalShader:Lcom/visualon/OSMPRender/filter/GlFilter;

.field private final runOnDraw:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->runOnDraw:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public abstract onDrawFrame(Lcom/visualon/OSMPRender/EFramebufferObject;)V
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .line 52
    iget-object p1, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->runOnDraw:Ljava/util/Queue;

    monitor-enter p1

    .line 53
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->runOnDraw:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->runOnDraw:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 56
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object p1, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->framebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    invoke-virtual {p1}, Lcom/visualon/OSMPRender/EFramebufferObject;->enable()V

    .line 58
    iget-object p1, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->framebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    invoke-virtual {p1}, Lcom/visualon/OSMPRender/EFramebufferObject;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->framebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/EFramebufferObject;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1, p1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 60
    iget-object p1, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->framebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    invoke-virtual {p0, p1}, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->onDrawFrame(Lcom/visualon/OSMPRender/EFramebufferObject;)V

    const p1, 0x8d40

    .line 62
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 63
    iget-object p1, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->framebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    invoke-virtual {p1}, Lcom/visualon/OSMPRender/EFramebufferObject;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->framebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/EFramebufferObject;->getHeight()I

    move-result v0

    invoke-static {v1, v1, p1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 p1, 0x4100

    .line 65
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 66
    iget-object p1, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->normalShader:Lcom/visualon/OSMPRender/filter/GlFilter;

    iget-object v0, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->framebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/EFramebufferObject;->getTexName()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/visualon/OSMPRender/filter/GlFilter;->draw(ILcom/visualon/OSMPRender/EFramebufferObject;)V

    return-void

    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract onSurfaceChanged(II)V
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->framebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    invoke-virtual {p1, p2, p3}, Lcom/visualon/OSMPRender/EFramebufferObject;->setup(II)V

    .line 46
    iget-object p1, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->normalShader:Lcom/visualon/OSMPRender/filter/GlFilter;

    invoke-virtual {p1, p2, p3}, Lcom/visualon/OSMPRender/filter/GlFilter;->setFrameSize(II)V

    .line 47
    invoke-virtual {p0, p2, p3}, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->onSurfaceChanged(II)V

    return-void
.end method

.method public abstract onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 37
    new-instance p1, Lcom/visualon/OSMPRender/EFramebufferObject;

    invoke-direct {p1}, Lcom/visualon/OSMPRender/EFramebufferObject;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->framebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    .line 38
    new-instance p1, Lcom/visualon/OSMPRender/filter/GlFilter;

    invoke-direct {p1}, Lcom/visualon/OSMPRender/filter/GlFilter;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->normalShader:Lcom/visualon/OSMPRender/filter/GlFilter;

    .line 39
    invoke-virtual {p1}, Lcom/visualon/OSMPRender/filter/GlFilter;->setup()V

    .line 40
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-void
.end method
