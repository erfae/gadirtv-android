.class Leightbitlab/com/blurview/NoOpController;
.super Ljava/lang/Object;
.source "NoOpController.java"

# interfaces
.implements Leightbitlab/com/blurview/BlurController;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public setBlurAlgorithm(Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/BlurViewFacade;
    .registers 2

    return-object p0
.end method

.method public setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .registers 2

    return-object p0
.end method

.method public setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .registers 2

    return-object p0
.end method

.method public setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;
    .registers 2

    return-object p0
.end method

.method public setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-object p0
.end method

.method public setHasFixedTransformationMatrix(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .registers 2

    return-object p0
.end method

.method public setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;
    .registers 2

    return-object p0
.end method

.method public updateBlurViewSize()V
    .registers 1

    return-void
.end method
