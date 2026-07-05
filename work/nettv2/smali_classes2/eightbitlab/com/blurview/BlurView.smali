.class public Leightbitlab/com/blurview/BlurView;
.super Landroid/widget/FrameLayout;
.source "BlurView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public blurController:Leightbitlab/com/blurview/BlurController;

.field private overlayColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Leightbitlab/com/blurview/BlurView;

    const-string v0, "BlurView"

    sput-object v0, Leightbitlab/com/blurview/BlurView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Leightbitlab/com/blurview/NoOpController;

    invoke-direct {p1}, Leightbitlab/com/blurview/NoOpController;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Leightbitlab/com/blurview/BlurView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Leightbitlab/com/blurview/NoOpController;

    invoke-direct {p1}, Leightbitlab/com/blurview/NoOpController;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p2, p1}, Leightbitlab/com/blurview/BlurView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Leightbitlab/com/blurview/NoOpController;

    invoke-direct {p1}, Leightbitlab/com/blurview/NoOpController;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 9
    invoke-direct {p0, p2, p3}, Leightbitlab/com/blurview/BlurView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Leightbitlab/com/blurview/R$styleable;->BlurView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget p2, Leightbitlab/com/blurview/R$styleable;->BlurView_blurOverlayColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Leightbitlab/com/blurview/BlurView;->TAG:Ljava/lang/String;

    const-string v1, "BlurView can\'t be used in not hardware-accelerated window!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iget-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {p1}, Leightbitlab/com/blurview/BlurController;->updateBlurViewSize()V

    return-void
.end method

.method public setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    .line 2
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurViewFacade;->setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setupWith(Landroid/view/ViewGroup;)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Leightbitlab/com/blurview/BlockingBlurController;

    iget v1, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    invoke-direct {v0, p0, p1, v1}, Leightbitlab/com/blurview/BlockingBlurController;-><init>(Landroid/view/View;Landroid/view/ViewGroup;I)V

    .line 2
    iget-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {p1}, Leightbitlab/com/blurview/BlurController;->destroy()V

    .line 3
    iput-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    return-object v0
.end method
