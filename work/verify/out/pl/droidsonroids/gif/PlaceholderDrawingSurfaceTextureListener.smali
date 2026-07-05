.class Lpl/droidsonroids/gif/PlaceholderDrawingSurfaceTextureListener;
.super Ljava/lang/Object;
.source "PlaceholderDrawingSurfaceTextureListener.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private final mDrawer:Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpl/droidsonroids/gif/PlaceholderDrawingSurfaceTextureListener;->mDrawer:Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 1
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object p1

    .line 3
    iget-object p3, p0, Lpl/droidsonroids/gif/PlaceholderDrawingSurfaceTextureListener;->mDrawer:Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;

    invoke-interface {p3, p1}, Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;->onDrawPlaceholder(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 5
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method
