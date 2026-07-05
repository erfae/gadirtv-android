.class Landroidx/leanback/widget/ControlBar;
.super Landroid/widget/LinearLayout;
.source "ControlBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/ControlBar$OnChildFocusedListener;
    }
.end annotation


# instance fields
.field private mChildMarginFromCenter:I

.field public mDefaultFocusToMiddle:Z

.field public mLastFocusIndex:I

.field private mOnChildFocusedListener:Landroidx/leanback/widget/ControlBar$OnChildFocusedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroidx/leanback/widget/ControlBar;->mLastFocusIndex:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroidx/leanback/widget/ControlBar;->mLastFocusIndex:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    const/16 v0, 0x21

    if-eq p2, v0, :cond_1

    const/16 v0, 0x82

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_2

    .line 2
    :cond_1
    :goto_0
    iget p2, p0, Landroidx/leanback/widget/ControlBar;->mLastFocusIndex:I

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 3
    iget p2, p0, Landroidx/leanback/widget/ControlBar;->mLastFocusIndex:I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_4

    .line 5
    iget-boolean p2, p0, Landroidx/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 6
    :goto_1
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    iget p1, p0, Landroidx/leanback/widget/ControlBar;->mChildMarginFromCenter:I

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 7
    iget v0, p0, Landroidx/leanback/widget/ControlBar;->mChildMarginFromCenter:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    sub-int v3, v0, v3

    .line 10
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr p2, v3

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    iget v0, p0, Landroidx/leanback/widget/ControlBar;->mLastFocusIndex:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroidx/leanback/widget/ControlBar;->mLastFocusIndex:I

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ControlBar;->mLastFocusIndex:I

    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/ControlBar;->mOnChildFocusedListener:Landroidx/leanback/widget/ControlBar$OnChildFocusedListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Landroidx/leanback/widget/ControlBar$OnChildFocusedListener;->onChildFocusedListener(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setChildMarginFromCenter(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/ControlBar;->mChildMarginFromCenter:I

    return-void
.end method

.method public setOnChildFocusedListener(Landroidx/leanback/widget/ControlBar$OnChildFocusedListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/ControlBar;->mOnChildFocusedListener:Landroidx/leanback/widget/ControlBar$OnChildFocusedListener;

    return-void
.end method
