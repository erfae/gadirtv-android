.class Landroidx/transition/GhostViewPort;
.super Landroid/view/ViewGroup;
.source "GhostViewPort.java"

# interfaces
.implements Landroidx/transition/GhostView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public mReferences:I

.field public mStartParent:Landroid/view/ViewGroup;

.field public mStartView:Landroid/view/View;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroidx/transition/GhostViewPort$1;

    invoke-direct {v0, p0}, Landroidx/transition/GhostViewPort$1;-><init>(Landroidx/transition/GhostViewPort;)V

    iput-object v0, p0, Landroidx/transition/GhostViewPort;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3
    iput-object p1, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewPort;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 2
    sget v0, Landroidx/transition/GhostViewHolder;->$r8$clinit:I

    .line 3
    sget v0, Landroidx/transition/R$id;->ghost_view_holder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/GhostViewHolder;

    .line 4
    sget v1, Landroidx/transition/R$id;->ghost_view:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/GhostViewPort;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroidx/transition/GhostViewHolder;

    if-eq v3, v0, :cond_0

    .line 6
    iget v2, v1, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 7
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    :cond_0
    if-nez v1, :cond_2

    .line 8
    new-instance v1, Landroidx/transition/GhostViewPort;

    invoke-direct {v1, p0}, Landroidx/transition/GhostViewPort;-><init>(Landroid/view/View;)V

    .line 9
    iput-object p2, v1, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Landroidx/transition/GhostViewHolder;

    invoke-direct {v0, p1}, Landroidx/transition/GhostViewHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroidx/transition/GhostViewHolder;->popToOverlayTop()V

    .line 12
    :goto_0
    invoke-static {p1, v0}, Landroidx/transition/GhostViewPort;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 13
    invoke-static {p1, v1}, Landroidx/transition/GhostViewPort;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 14
    invoke-virtual {v0, v1}, Landroidx/transition/GhostViewHolder;->addGhostView(Landroidx/transition/GhostViewPort;)V

    .line 15
    iput v2, v1, Landroidx/transition/GhostViewPort;->mReferences:I

    goto :goto_1

    .line 16
    :cond_2
    iput-object p2, v1, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    .line 17
    :goto_1
    iget p0, v1, Landroidx/transition/GhostViewPort;->mReferences:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Landroidx/transition/GhostViewPort;->mReferences:I

    return-object v1

    .line 18
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copySize(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v2

    .line 5
    invoke-static {p1, v0, v1, v3, p0}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    return-void
.end method

.method public static getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewPort;
    .locals 1

    sget v0, Landroidx/transition/R$id;->ghost_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/transition/GhostViewPort;

    return-object p0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    .line 3
    sget v1, Landroidx/transition/R$id;->ghost_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/GhostViewPort;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/GhostViewPort;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    .line 4
    sget v1, Landroidx/transition/R$id;->ghost_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 7
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Landroidx/transition/CanvasUtils;->enableZ(Landroid/graphics/Canvas;Z)V

    .line 2
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 3
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 7
    invoke-static {p1, v1}, Landroidx/transition/CanvasUtils;->enableZ(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/GhostViewPort;->mStartParent:Landroid/view/ViewGroup;

    .line 2
    iput-object p2, p0, Landroidx/transition/GhostViewPort;->mStartView:Landroid/view/View;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/transition/GhostViewPort;->getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewPort;

    move-result-object v0

    if-ne v0, p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
