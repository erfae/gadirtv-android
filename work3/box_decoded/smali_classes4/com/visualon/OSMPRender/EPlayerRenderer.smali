.class public Lcom/visualon/OSMPRender/EPlayerRenderer;
.super Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;
.source "EPlayerRenderer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EPlayerRenderer"


# instance fields
.field private MMatrix:[F

.field private MVPMatrix:[F

.field private ProjMatrix:[F

.field private STMatrix:[F

.field private VMatrix:[F

.field private aspectRatio:F

.field private filterFramebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

.field private glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

.field private final mainHandler:Landroid/os/Handler;

.field private needSetup:Z

.field private previewFilter:Lcom/visualon/OSMPRender/filter/GlPreviewFilter;

.field private previewTexture:Lcom/visualon/OSMPRender/ESurfaceTexture;

.field private surfaceCallBack:Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;

.field private texName:I

.field private updateSurface:Z

.field private vidHeight:I

.field private vidWidth:I

.field private videoEnhancementEnabled:Z

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 68
    invoke-direct {p0}, Lcom/visualon/OSMPRender/EFrameBufferObjectRenderer;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->updateSurface:Z

    .line 35
    iput v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidWidth:I

    iput v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidHeight:I

    .line 36
    iput v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewWidth:I

    iput v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewHeight:I

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 47
    iput-object v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->MVPMatrix:[F

    new-array v2, v1, [F

    .line 48
    iput-object v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->ProjMatrix:[F

    new-array v2, v1, [F

    .line 49
    iput-object v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->MMatrix:[F

    new-array v2, v1, [F

    .line 50
    iput-object v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->VMatrix:[F

    new-array v1, v1, [F

    .line 51
    iput-object v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->STMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 63
    iput v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->aspectRatio:F

    .line 69
    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const-string v1, "Create filter"

    .line 71
    invoke-static {v1}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->mainHandler:Landroid/os/Handler;

    .line 73
    new-instance v1, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;

    invoke-direct {v1}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    .line 74
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->videoEnhancementEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPRender/EPlayerRenderer;)Lcom/visualon/OSMPRender/filter/GlFilter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    return-object p0
.end method

.method static synthetic access$002(Lcom/visualon/OSMPRender/EPlayerRenderer;Lcom/visualon/OSMPRender/filter/GlFilter;)Lcom/visualon/OSMPRender/filter/GlFilter;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/visualon/OSMPRender/EPlayerRenderer;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->needSetup:Z

    return p1
.end method

.method private declared-synchronized surfaceChanged()V
    .locals 10

    monitor-enter p0

    .line 168
    :try_start_0
    sget-object v0, Lcom/visualon/OSMPRender/EPlayerRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/visualon/OSMPRender/EPlayerRenderer;->useVideoSize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->filterFramebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    iget v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewWidth:I

    iget v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPRender/EFramebufferObject;->setup(II)V

    .line 171
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->previewFilter:Lcom/visualon/OSMPRender/filter/GlPreviewFilter;

    iget v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewWidth:I

    iget v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->setFrameSize(II)V

    .line 172
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    if-eqz v0, :cond_1

    .line 173
    iget v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewWidth:I

    iget v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPRender/filter/GlFilter;->setFrameSize(II)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->filterFramebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    iget v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidWidth:I

    iget v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPRender/EFramebufferObject;->setup(II)V

    .line 177
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->previewFilter:Lcom/visualon/OSMPRender/filter/GlPreviewFilter;

    iget v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidWidth:I

    iget v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->setFrameSize(II)V

    .line 178
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    if-eqz v0, :cond_1

    .line 179
    iget v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidWidth:I

    iget v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPRender/filter/GlFilter;->setFrameSize(II)V

    .line 183
    :cond_1
    :goto_0
    iget v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewHeight:I

    int-to-float v1, v1

    div-float v5, v0, v1

    iput v5, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->aspectRatio:F

    .line 184
    iget-object v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->ProjMatrix:[F

    const/4 v3, 0x0

    neg-float v4, v5

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 185
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->MMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->needSetup:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private useVideoSize()Z
    .locals 3

    .line 267
    iget v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidWidth:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidHeight:I

    if-eqz v1, :cond_0

    mul-int v0, v0, v1

    iget v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewWidth:I

    iget v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewHeight:I

    mul-int v1, v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getGlFilter()Lcom/visualon/OSMPRender/filter/GlFilter;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->previewTexture:Lcom/visualon/OSMPRender/ESurfaceTexture;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/ESurfaceTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public onDrawFrame(Lcom/visualon/OSMPRender/EFramebufferObject;)V
    .locals 14

    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->updateSurface:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->previewTexture:Lcom/visualon/OSMPRender/ESurfaceTexture;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/ESurfaceTexture;->updateTexImage()V

    .line 196
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->previewTexture:Lcom/visualon/OSMPRender/ESurfaceTexture;

    iget-object v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->STMatrix:[F

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPRender/ESurfaceTexture;->getTransformMatrix([F)V

    .line 197
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->updateSurface:Z

    .line 199
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->needSetup:Z

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    if-eqz v0, :cond_2

    .line 203
    invoke-direct {p0}, Lcom/visualon/OSMPRender/EPlayerRenderer;->useVideoSize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    iget v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidWidth:I

    iget v3, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPRender/filter/GlFilter;->setFrameSize(II)V

    .line 205
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/filter/GlFilter;->setup()V

    .line 206
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    iget v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidWidth:I

    iget v3, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPRender/filter/GlFilter;->setFrameSize(II)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    invoke-virtual {p1}, Lcom/visualon/OSMPRender/EFramebufferObject;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/visualon/OSMPRender/EFramebufferObject;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPRender/filter/GlFilter;->setFrameSize(II)V

    .line 209
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/filter/GlFilter;->setup()V

    .line 210
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    invoke-virtual {p1}, Lcom/visualon/OSMPRender/EFramebufferObject;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/visualon/OSMPRender/EFramebufferObject;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPRender/filter/GlFilter;->setFrameSize(II)V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/filter/GlFilter;->setupSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/filter/GlFilter;->release()V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    .line 217
    :cond_2
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->needSetup:Z

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->videoEnhancementEnabled:Z

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->filterFramebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/EFramebufferObject;->enable()V

    .line 222
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->filterFramebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/EFramebufferObject;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->filterFramebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    invoke-virtual {v2}, Lcom/visualon/OSMPRender/EFramebufferObject;->getHeight()I

    move-result v2

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :cond_4
    const/16 v0, 0x4000

    .line 225
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 227
    iget-object v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->MVPMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->VMatrix:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->MMatrix:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 228
    iget-object v12, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->MVPMatrix:[F

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->ProjMatrix:[F

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v12

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 230
    iget-object v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->previewFilter:Lcom/visualon/OSMPRender/filter/GlPreviewFilter;

    iget v3, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->texName:I

    iget-object v4, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->MVPMatrix:[F

    iget-object v5, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->STMatrix:[F

    iget v6, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->aspectRatio:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->draw(I[F[FF)V

    .line 232
    iget-object v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->videoEnhancementEnabled:Z

    if-eqz v2, :cond_5

    .line 233
    invoke-virtual {p1}, Lcom/visualon/OSMPRender/EFramebufferObject;->enable()V

    .line 238
    iget v2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewWidth:I

    iget v3, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewHeight:I

    invoke-static {v1, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 239
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 240
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    iget-object v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->filterFramebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    invoke-virtual {v1}, Lcom/visualon/OSMPRender/EFramebufferObject;->getTexName()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPRender/filter/GlFilter;->draw(ILcom/visualon/OSMPRender/EFramebufferObject;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 199
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    .line 246
    :try_start_0
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->updateSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSurfaceChanged(II)V
    .locals 3

    .line 149
    sget-object v0, Lcom/visualon/OSMPRender/EPlayerRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput p1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewWidth:I

    .line 151
    iput p2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->viewHeight:I

    .line 152
    invoke-direct {p0}, Lcom/visualon/OSMPRender/EPlayerRenderer;->surfaceChanged()V

    .line 154
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->surfaceCallBack:Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0, p1, p2}, Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;->onSurfaceChanged(II)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 105
    invoke-static {v0, v0, v0, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 109
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 110
    aget v4, v2, v3

    iput v4, v1, Lcom/visualon/OSMPRender/EPlayerRenderer;->texName:I

    .line 112
    new-instance v5, Lcom/visualon/OSMPRender/ESurfaceTexture;

    invoke-direct {v5, v4}, Lcom/visualon/OSMPRender/ESurfaceTexture;-><init>(I)V

    iput-object v5, v1, Lcom/visualon/OSMPRender/EPlayerRenderer;->previewTexture:Lcom/visualon/OSMPRender/ESurfaceTexture;

    .line 113
    invoke-virtual {v5, v1}, Lcom/visualon/OSMPRender/ESurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 116
    iget-object v4, v1, Lcom/visualon/OSMPRender/EPlayerRenderer;->previewTexture:Lcom/visualon/OSMPRender/ESurfaceTexture;

    invoke-virtual {v4}, Lcom/visualon/OSMPRender/ESurfaceTexture;->getTextureTarget()I

    move-result v4

    iget v5, v1, Lcom/visualon/OSMPRender/EPlayerRenderer;->texName:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 118
    iget-object v4, v1, Lcom/visualon/OSMPRender/EPlayerRenderer;->previewTexture:Lcom/visualon/OSMPRender/ESurfaceTexture;

    invoke-virtual {v4}, Lcom/visualon/OSMPRender/ESurfaceTexture;->getTextureTarget()I

    move-result v4

    const/16 v5, 0x2601

    const/16 v6, 0x2600

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPRender/EglUtil;->setupSampler(III)V

    const/16 v4, 0xde1

    .line 119
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 121
    new-instance v4, Lcom/visualon/OSMPRender/EFramebufferObject;

    invoke-direct {v4}, Lcom/visualon/OSMPRender/EFramebufferObject;-><init>()V

    iput-object v4, v1, Lcom/visualon/OSMPRender/EPlayerRenderer;->filterFramebufferObject:Lcom/visualon/OSMPRender/EFramebufferObject;

    .line 123
    new-instance v4, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;

    iget-object v5, v1, Lcom/visualon/OSMPRender/EPlayerRenderer;->previewTexture:Lcom/visualon/OSMPRender/ESurfaceTexture;

    invoke-virtual {v5}, Lcom/visualon/OSMPRender/ESurfaceTexture;->getTextureTarget()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;-><init>(I)V

    iput-object v4, v1, Lcom/visualon/OSMPRender/EPlayerRenderer;->previewFilter:Lcom/visualon/OSMPRender/filter/GlPreviewFilter;

    .line 124
    invoke-virtual {v4}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->setup()V

    .line 126
    iget-object v6, v1, Lcom/visualon/OSMPRender/EPlayerRenderer;->VMatrix:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x40a00000    # 5.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iput-boolean v3, v1, Lcom/visualon/OSMPRender/EPlayerRenderer;->updateSurface:Z

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v4, v1, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    if-eqz v4, :cond_0

    .line 137
    iput-boolean v0, v1, Lcom/visualon/OSMPRender/EPlayerRenderer;->needSetup:Z

    :cond_0
    const/16 v0, 0xd33

    .line 140
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 142
    iget-object v0, v1, Lcom/visualon/OSMPRender/EPlayerRenderer;->surfaceCallBack:Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;->onSurfaceCreated()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 134
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method release()V
    .locals 2

    .line 257
    sget-object v0, Lcom/visualon/OSMPRender/EPlayerRenderer;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/filter/GlFilter;->release()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->previewTexture:Lcom/visualon/OSMPRender/ESurfaceTexture;

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/ESurfaceTexture;->release()V

    :cond_1
    return-void
.end method

.method public setEnhancementLevel(F)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->glFilter:Lcom/visualon/OSMPRender/filter/GlFilter;

    instance-of v1, v0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPRender/filter/GlFilter;->setEnhancementLevel(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 95
    :goto_0
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->videoEnhancementEnabled:Z

    :cond_1
    return-void
.end method

.method setGlFilter(Lcom/visualon/OSMPRender/filter/GlFilter;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/visualon/OSMPRender/EPlayerRenderer$1;

    invoke-direct {v1, p0, p1}, Lcom/visualon/OSMPRender/EPlayerRenderer$1;-><init>(Lcom/visualon/OSMPRender/EPlayerRenderer;Lcom/visualon/OSMPRender/filter/GlFilter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSurfaceCallBack(Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->surfaceCallBack:Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;

    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    .line 39
    iget v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidHeight:I

    if-eq v0, p2, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 40
    iput p2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidHeight:I

    .line 41
    iput p1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer;->vidWidth:I

    :cond_1
    return-void
.end method
