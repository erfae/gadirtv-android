.class Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;
.super Lcom/google/vr/ndk/base/GvrSurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrLayoutImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncReprojectionSurfaceView"
.end annotation


# instance fields
.field private scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;)Lcom/google/vr/cardboard/ScanlineRacingRenderer;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    return-object p0
.end method


# virtual methods
.method public setRenderer(Lcom/google/vr/cardboard/ScanlineRacingRenderer;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    .line 4
    invoke-super {p0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->isDetachedFromWindow()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView$1;

    invoke-direct {p1, p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView$1;-><init>(Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;)V

    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->onSurfaceDestroyed(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->onSurfaceDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method
