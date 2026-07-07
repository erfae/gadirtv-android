.class Lcom/visualon/OSMPRender/ESurfaceTexture;
.super Ljava/lang/Object;
.source "ESurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/visualon/OSMPRender/ESurfaceTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 18
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method


# virtual methods
.method getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/visualon/OSMPRender/ESurfaceTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method getTextureTarget()I
    .locals 1

    const v0, 0x8d65

    return v0
.end method

.method getTransformMatrix([F)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/visualon/OSMPRender/ESurfaceTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/visualon/OSMPRender/ESurfaceTexture;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/visualon/OSMPRender/ESurfaceTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1, v0}, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/visualon/OSMPRender/ESurfaceTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    return-void
.end method

.method setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/visualon/OSMPRender/ESurfaceTexture;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-void
.end method

.method updateTexImage()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/visualon/OSMPRender/ESurfaceTexture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void
.end method
