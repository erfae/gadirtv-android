.class public Lcom/visualon/OSMPUtils/voGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "voGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;
    }
.end annotation


# instance fields
.field public mRenderer:Lcom/visualon/OSMPRender/EPlayerRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voGLSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voGLSurfaceView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x2

    .line 38
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPUtils/voGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 39
    new-instance v0, Lcom/visualon/OSMPRender/EPlayerRenderer;

    invoke-direct {v0}, Lcom/visualon/OSMPRender/EPlayerRenderer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voGLSurfaceView;->mRenderer:Lcom/visualon/OSMPRender/EPlayerRenderer;

    .line 40
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPUtils/voGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voGLSurfaceView;->mRenderer:Lcom/visualon/OSMPRender/EPlayerRenderer;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/EPlayerRenderer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public setSurfaceCallBack(Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voGLSurfaceView;->mRenderer:Lcom/visualon/OSMPRender/EPlayerRenderer;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPRender/EPlayerRenderer;->setSurfaceCallBack(Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;)V

    return-void
.end method
