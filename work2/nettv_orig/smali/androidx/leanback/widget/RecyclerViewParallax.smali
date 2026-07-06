.class public Landroidx/leanback/widget/RecyclerViewParallax;
.super Landroidx/leanback/widget/Parallax;
.source "RecyclerViewParallax.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/leanback/widget/Parallax<",
        "Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;",
        ">;"
    }
.end annotation


# instance fields
.field public mIsVertical:Z

.field public mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field public mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field public mRecylerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/Parallax;-><init>()V

    .line 2
    new-instance v0, Landroidx/leanback/widget/RecyclerViewParallax$1;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/RecyclerViewParallax$1;-><init>(Landroidx/leanback/widget/RecyclerViewParallax;)V

    iput-object v0, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 3
    new-instance v0, Landroidx/leanback/widget/RecyclerViewParallax$2;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/RecyclerViewParallax$2;-><init>(Landroidx/leanback/widget/RecyclerViewParallax;)V

    iput-object v0, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic createProperty(Ljava/lang/String;I)Landroid/util/Property;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/RecyclerViewParallax;->createProperty(Ljava/lang/String;I)Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    move-result-object p1

    return-object p1
.end method

.method public createProperty(Ljava/lang/String;I)Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    .locals 1

    .line 2
    new-instance v0, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    invoke-direct {v0, p1, p2}, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getMaxValue()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v1, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mIsVertical:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    return v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4
    :cond_1
    iput-object p1, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p1, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 7
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mIsVertical:Z

    .line 8
    iget-object p1, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 9
    iget-object p1, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    return-void
.end method

.method public updateValues()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/Parallax;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Property;

    .line 2
    check-cast v1, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 4
    :cond_0
    iget v3, v1, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mAdapterPosition:I

    .line 5
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    :goto_1
    const/4 v4, 0x0

    if-nez v3, :cond_4

    const v3, 0x7fffffff

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 8
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 10
    iget v4, v1, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mAdapterPosition:I

    if-ge v2, v4, :cond_2

    .line 11
    invoke-virtual {v1}, Landroidx/leanback/widget/Parallax$IntProperty;->getIndex()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Landroidx/leanback/widget/Parallax;->setIntPropertyValue(II)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v1}, Landroidx/leanback/widget/Parallax$IntProperty;->getIndex()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-virtual {p0, v1, v2}, Landroidx/leanback/widget/Parallax;->setIntPropertyValue(II)V

    goto :goto_0

    .line 13
    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroidx/leanback/widget/Parallax$IntProperty;->getIndex()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Landroidx/leanback/widget/Parallax;->setIntPropertyValue(II)V

    goto :goto_0

    .line 14
    :cond_4
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v5, v1, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mViewId:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 15
    :cond_5
    new-instance v5, Landroid/graphics/Rect;

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v5, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 17
    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_3
    if-eq v3, v2, :cond_8

    if-eqz v3, :cond_8

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-ne v7, v2, :cond_6

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v7

    if-nez v7, :cond_7

    .line 19
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v7

    add-float/2addr v7, v4

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v4, v6

    move v6, v4

    move v4, v7

    .line 21
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_3

    :cond_8
    float-to-int v2, v4

    float-to-int v3, v6

    .line 22
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 23
    iget-boolean v2, p0, Landroidx/leanback/widget/RecyclerViewParallax;->mIsVertical:Z

    if-eqz v2, :cond_9

    .line 24
    invoke-virtual {v1}, Landroidx/leanback/widget/Parallax$IntProperty;->getIndex()I

    move-result v2

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mOffset:I

    add-int/2addr v3, v4

    iget v1, v1, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mFraction:F

    .line 25
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v3, v1

    .line 26
    invoke-virtual {p0, v2, v3}, Landroidx/leanback/widget/Parallax;->setIntPropertyValue(II)V

    goto/16 :goto_0

    .line 27
    :cond_9
    invoke-virtual {v1}, Landroidx/leanback/widget/Parallax$IntProperty;->getIndex()I

    move-result v2

    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mOffset:I

    add-int/2addr v3, v4

    iget v1, v1, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mFraction:F

    .line 28
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v3, v1

    .line 29
    invoke-virtual {p0, v2, v3}, Landroidx/leanback/widget/Parallax;->setIntPropertyValue(II)V

    goto/16 :goto_0

    .line 30
    :cond_a
    invoke-super {p0}, Landroidx/leanback/widget/Parallax;->updateValues()V

    return-void
.end method
