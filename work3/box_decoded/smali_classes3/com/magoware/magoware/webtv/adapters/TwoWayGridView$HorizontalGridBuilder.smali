.class Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;
.super Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;
.source "TwoWayGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalGridBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 2083
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$1;)V
    .locals 0

    .line 2083
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)V

    return-void
.end method

.method private adjustForLeftFadingEdge(Landroid/view/View;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "childInSelectedRow",
            "leftSelectionPixel",
            "rightSelectionPixel"
        }
    .end annotation

    .line 3039
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 3042
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr p2, v0

    .line 3046
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    sub-int/2addr p3, p1

    .line 3047
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3050
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    :cond_0
    return-void
.end method

.method private adjustForRightFadingEdge(Landroid/view/View;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "childInSelectedRow",
            "leftSelectionPixel",
            "rightSelectionPixel"
        }
    .end annotation

    .line 3011
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 3015
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p2

    .line 3019
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    sub-int/2addr p1, p3

    .line 3020
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3023
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    neg-int p1, p1

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    :cond_0
    return-void
.end method

.method private adjustViewsLeftOrRight()V
    .locals 5

    .line 3060
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 3066
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 3069
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3070
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 3071
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-eqz v1, :cond_0

    .line 3074
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    .line 3082
    :cond_2
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3083
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 3085
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-ge v3, v0, :cond_3

    .line 3088
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 3098
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    neg-int v1, v2

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    :cond_5
    return-void
.end method

.method private correctTooLeft(III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "numRows",
            "horizontalSpacing",
            "childCount"
        }
    .end annotation

    .line 2419
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2420
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_3

    if-lez p3, :cond_3

    .line 2422
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    sub-int/2addr p3, v1

    invoke-virtual {v0, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 2425
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    .line 2427
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getRight()I

    move-result v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, p3

    .line 2433
    iget-object p3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 2434
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lez v0, :cond_3

    .line 2438
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_3

    .line 2439
    :cond_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-nez v3, :cond_1

    .line 2441
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2445
    :cond_1
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    .line 2446
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-lez v0, :cond_3

    .line 2449
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    :cond_2
    sub-int/2addr v0, p1

    .line 2450
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p1, p2

    .line 2449
    invoke-direct {p0, v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    .line 2452
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    :cond_3
    return-void
.end method

.method private correctTooRight(III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "numRows",
            "horizontalSpacing",
            "childCount"
        }
    .end annotation

    .line 2459
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p3, :cond_3

    .line 2461
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2464
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2467
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2470
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v1

    .line 2475
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2476
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2477
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v4, p3

    const/4 p3, 0x1

    sub-int/2addr v4, p3

    if-lez v0, :cond_3

    .line 2481
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v5, p3

    if-lt v4, v5, :cond_0

    if-le v3, v2, :cond_3

    .line 2482
    :cond_0
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v5, p3

    if-ne v4, v5, :cond_1

    sub-int/2addr v3, v2

    .line 2484
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2488
    :cond_1
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    neg-int v0, v0

    invoke-virtual {v2, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    .line 2489
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v0, p3

    if-ge v4, v0, :cond_3

    .line 2492
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    const/4 p1, 0x1

    :cond_2
    add-int/2addr v4, p1

    .line 2493
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result p1

    add-int/2addr p1, p2

    .line 2492
    invoke-direct {p0, v4, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    .line 2495
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    :cond_3
    return-void
.end method

.method private determineRows(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "availableSpace"
        }
    .end annotation

    .line 2833
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1200(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v0

    .line 2834
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$800(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    .line 2835
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    .line 2836
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$702(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    .line 2838
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2600(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    if-lez v2, :cond_0

    .line 2841
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1200(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v5

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 2842
    invoke-static {v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1200(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v6

    add-int/2addr v6, v2

    div-int/2addr v5, v6

    .line 2841
    invoke-static {v3, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2002(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    goto :goto_0

    .line 2845
    :cond_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2002(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    goto :goto_0

    .line 2849
    :cond_1
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2600(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2002(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    .line 2852
    :goto_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    const/4 v5, 0x1

    if-gtz v3, :cond_2

    .line 2853
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2002(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    :cond_2
    if-eqz v1, :cond_8

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    goto/16 :goto_1

    .line 2889
    :cond_3
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    mul-int v1, v1, v2

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 2890
    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    add-int/2addr v1, v5

    mul-int v1, v1, v0

    sub-int/2addr p1, v1

    .line 2891
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2102(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    .line 2892
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    if-le v1, v5, :cond_4

    .line 2893
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    add-int/2addr v2, v5

    div-int/2addr p1, v2

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$402(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    goto/16 :goto_1

    .line 2895
    :cond_4
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    div-int/2addr v0, v4

    invoke-static {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$402(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    goto :goto_1

    .line 2867
    :cond_5
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    mul-int v1, v1, v2

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 2868
    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    sub-int/2addr v1, v5

    mul-int v1, v1, v0

    sub-int/2addr p1, v1

    .line 2870
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    div-int/2addr p1, v3

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2102(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    .line 2871
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$402(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    goto :goto_1

    .line 2875
    :cond_6
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    mul-int v1, v1, v2

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 2876
    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    sub-int/2addr v1, v5

    mul-int v1, v1, v0

    sub-int/2addr p1, v1

    .line 2878
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2102(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    .line 2879
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    if-le v1, v5, :cond_7

    .line 2880
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 2881
    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    sub-int/2addr v2, v5

    div-int/2addr p1, v2

    add-int/2addr v0, p1

    .line 2880
    invoke-static {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$402(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    goto :goto_1

    .line 2883
    :cond_7
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$402(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    goto :goto_1

    .line 2859
    :cond_8
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2102(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    .line 2860
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1200(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$402(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    :goto_1
    return-void
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lastPosition",
            "nextRight"
        }
    .end annotation

    .line 2290
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2291
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2293
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 2294
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 2296
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "selectedLeft",
            "childrenLeft",
            "childrenRight"
        }
    .end annotation

    .line 2915
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 2916
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    .line 2917
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    .line 2918
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    .line 2923
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 2924
    rem-int v4, v1, v2

    sub-int/2addr v1, v4

    const/4 v4, -0x1

    goto :goto_0

    .line 2926
    :cond_0
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    .line 2928
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v1, v5

    rem-int v6, v4, v2

    sub-int/2addr v4, v6

    sub-int v4, v1, v4

    const/4 v1, 0x0

    sub-int v6, v4, v2

    add-int/2addr v6, v5

    .line 2929
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2935
    :goto_0
    invoke-direct {p0, p2, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->getLeftSelectionPixel(III)I

    move-result p2

    .line 2936
    invoke-direct {p0, p3, v0, v2, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->getRightSelectionPixel(IIII)I

    move-result p3

    .line 2939
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v0, p1, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object p1

    .line 2941
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 2943
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object v0

    .line 2944
    invoke-direct {p0, v0, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustForLeftFadingEdge(Landroid/view/View;II)V

    .line 2945
    invoke-direct {p0, v0, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustForRightFadingEdge(Landroid/view/View;II)V

    .line 2947
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean p2, p2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez p2, :cond_2

    sub-int p2, v1, v2

    .line 2948
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-direct {p0, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    .line 2949
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    add-int/2addr v1, v2

    .line 2950
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    goto :goto_2

    :cond_2
    add-int/2addr v4, v2

    .line 2952
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v4, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    .line 2953
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    sub-int/2addr v1, v5

    .line 2954
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    :goto_2
    return-object p1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextLeft"
        }
    .end annotation

    .line 2280
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 2281
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 2282
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 2283
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 2285
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 2286
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private fillLeft(II)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "nextRight"
        }
    .end annotation

    .line 2249
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-le p2, v0, :cond_1

    if-ltz p1, :cond_1

    .line 2253
    invoke-direct {p0, p1, p2, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object v1, p2

    .line 2258
    :cond_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    sub-int/2addr p2, v2

    .line 2260
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput p1, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 2262
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    sub-int/2addr p1, v2

    goto :goto_0

    .line 2265
    :cond_1
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean p2, p2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz p2, :cond_2

    .line 2266
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    :cond_2
    return-object v1
.end method

.method private fillRight(II)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "nextLeft"
        }
    .end annotation

    .line 2166
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge p2, v0, :cond_1

    .line 2168
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-ge p1, v2, :cond_1

    const/4 v2, 0x1

    .line 2169
    invoke-direct {p0, p1, p2, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object v1, p2

    .line 2176
    :cond_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    add-int/2addr p2, v2

    .line 2178
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    add-int/2addr p1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "childrenLeft",
            "childrenRight"
        }
    .end annotation

    .line 2300
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->reconcileSelectedPosition()I

    move-result v0

    .line 2301
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    .line 2302
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    .line 2307
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 2308
    rem-int v3, v0, v1

    sub-int/2addr v0, v3

    const/4 v3, -0x1

    goto :goto_0

    .line 2310
    :cond_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    .line 2312
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v0, v4

    rem-int v5, v3, v1

    sub-int/2addr v3, v5

    sub-int v3, v0, v3

    const/4 v0, 0x0

    sub-int v5, v3, v1

    add-int/2addr v5, v4

    .line 2313
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2316
    :goto_0
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getHorizontalFadingEdgeLength()I

    move-result v5

    .line 2317
    invoke-direct {p0, p1, v5, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->getLeftSelectionPixel(III)I

    move-result v6

    .line 2319
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v7, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    invoke-direct {p0, v7, v6, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v6

    .line 2320
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v0, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 2322
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v7}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object v7

    .line 2324
    iget-object v8, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v8, v8, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    add-int p1, v0, v1

    .line 2325
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {p0, p1, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    .line 2326
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->pinToRight(I)V

    sub-int/2addr v0, v1

    .line 2327
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    .line 2328
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    goto :goto_2

    .line 2330
    :cond_2
    invoke-direct {p0, p2, v5, v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->getRightSelectionPixel(IIII)I

    move-result p2

    .line 2332
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr p2, v5

    .line 2333
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v5, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    sub-int/2addr v0, v4

    .line 2334
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-direct {p0, v0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    .line 2335
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->pinToLeft(I)V

    add-int/2addr v3, v1

    .line 2336
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {p0, v3, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    .line 2337
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    :goto_2
    return-object v6
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "left"
        }
    .end annotation

    .line 2355
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v0

    .line 2360
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2362
    rem-int v1, p1, v0

    sub-int/2addr p1, v1

    const/4 v1, -0x1

    goto :goto_0

    .line 2365
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    .line 2367
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr p1, v2

    rem-int v3, v1, v0

    sub-int/2addr v1, v3

    sub-int v1, p1, v1

    const/4 p1, 0x0

    sub-int v3, v1, v0

    add-int/2addr v3, v2

    .line 2368
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2371
    :goto_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    invoke-direct {p0, v3, p2, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object p2

    .line 2374
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput p1, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 2376
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 2382
    :cond_2
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v4

    .line 2387
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez v5, :cond_3

    sub-int v1, p1, v0

    .line 2388
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {p0, v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    move-result-object v1

    .line 2389
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    add-int/2addr p1, v0

    .line 2390
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v4

    invoke-direct {p0, p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    move-result-object p1

    .line 2392
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 2394
    invoke-direct {p0, v0, v4, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->correctTooLeft(III)V

    goto :goto_2

    :cond_3
    add-int/2addr v1, v0

    .line 2397
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {p0, v1, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    move-result-object v1

    .line 2398
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    sub-int/2addr p1, v2

    .line 2399
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {p0, p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    move-result-object p1

    .line 2401
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 2403
    invoke-direct {p0, v0, v4, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->correctTooRight(III)V

    :cond_4
    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    return-object p2

    :cond_6
    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    return-object p1
.end method

.method private getLeftSelectionPixel(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "childrenLeft",
            "fadingEdgeLength",
            "rowStart"
        }
    .end annotation

    if-lez p3, :cond_0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private getRightSelectionPixel(IIII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "childrenRight",
            "fadingEdgeLength",
            "numColumns",
            "rowStart"
        }
    .end annotation

    add-int/2addr p4, p3

    add-int/lit8 p4, p4, -0x1

    .line 2974
    iget-object p3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget p3, p3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 p3, p3, -0x1

    if-ge p4, p3, :cond_0

    sub-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private makeColumn(IIZ)Landroid/view/View;
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPos",
            "x",
            "flow"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 2185
    iget-object v0, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2100(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v8

    .line 2186
    iget-object v0, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v9

    .line 2189
    iget-object v0, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 2190
    iget-object v1, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$800(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    const/4 v10, 0x0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 2192
    iget-object v1, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v11, 0x1

    if-nez v1, :cond_1

    .line 2193
    iget-object v1, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    add-int v1, p1, v1

    iget-object v2, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v12, p1

    move v13, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p1, 0x1

    .line 2196
    iget-object v2, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    sub-int v2, p1, v2

    add-int/2addr v2, v11

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v3, v1, v2

    .line 2198
    iget-object v4, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2199
    iget-object v4, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v4

    sub-int/2addr v4, v3

    add-int v3, v8, v9

    mul-int v4, v4, v3

    add-int/2addr v0, v4

    :cond_2
    move v13, v1

    move v12, v2

    .line 2205
    :goto_1
    iget-object v1, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->shouldShowSelector()Z

    move-result v14

    .line 2206
    iget-object v1, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->touchModeDrawsInPressedState()Z

    move-result v15

    .line 2207
    iget-object v1, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v6, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    const/4 v1, 0x0

    move/from16 v16, v0

    move-object/from16 v17, v1

    move v5, v12

    :goto_2
    if-ge v5, v13, :cond_8

    if-ne v5, v6, :cond_3

    const/16 v18, 0x1

    goto :goto_3

    :cond_3
    const/16 v18, 0x0

    :goto_3
    if-eqz p3, :cond_4

    const/4 v0, -0x1

    const/16 v19, -0x1

    goto :goto_4

    :cond_4
    sub-int v0, v5, v12

    move/from16 v19, v0

    :goto_4
    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v16

    move v10, v5

    move/from16 v5, v18

    move/from16 v20, v6

    move/from16 v6, v19

    .line 2216
    invoke-virtual/range {v0 .. v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v1

    add-int v16, v16, v8

    add-int/lit8 v0, v13, -0x1

    if-ge v10, v0, :cond_5

    add-int v16, v16, v9

    :cond_5
    if-eqz v18, :cond_7

    if-nez v14, :cond_6

    if-eqz v15, :cond_7

    :cond_6
    move-object/from16 v17, v1

    :cond_7
    add-int/lit8 v5, v10, 0x1

    move/from16 v6, v20

    const/4 v10, 0x0

    goto :goto_2

    .line 2228
    :cond_8
    iget-object v0, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$502(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;)Landroid/view/View;

    if-eqz v17, :cond_9

    .line 2231
    iget-object v0, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$902(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;)Landroid/view/View;

    :cond_9
    return-object v17
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "delta",
            "childrenLeft",
            "childrenRight"
        }
    .end annotation

    .line 2516
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 2517
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    .line 2518
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    .line 2519
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    .line 2525
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    sub-int p1, v1, p1

    .line 2526
    rem-int v4, p1, v2

    sub-int/2addr p1, v4

    .line 2528
    rem-int v4, v1, v2

    sub-int/2addr v1, v4

    const/4 v4, -0x1

    goto :goto_0

    .line 2530
    :cond_0
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, v1

    .line 2532
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v7, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v7, v6

    rem-int v8, v4, v2

    sub-int/2addr v4, v8

    sub-int v4, v7, v4

    sub-int v7, v4, v2

    add-int/2addr v7, v6

    .line 2533
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2535
    iget-object v8, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v8, v8, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v8, v6

    sub-int/2addr v1, p1

    sub-int/2addr v8, v1

    .line 2536
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr p1, v6

    rem-int v1, v8, v2

    sub-int/2addr v8, v1

    sub-int/2addr p1, v8

    sub-int/2addr p1, v2

    add-int/2addr p1, v6

    .line 2537
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v1, v7

    :goto_0
    sub-int p1, v1, p1

    .line 2542
    invoke-direct {p0, p2, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->getLeftSelectionPixel(III)I

    move-result p2

    .line 2543
    invoke-direct {p0, p3, v0, v2, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->getRightSelectionPixel(IIII)I

    move-result p3

    .line 2547
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-lez p1, :cond_3

    .line 2557
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 2558
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    .line 2560
    :goto_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    add-int/2addr v5, v3

    invoke-direct {p0, v4, v5, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object p1

    .line 2561
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object v0

    .line 2563
    invoke-direct {p0, v0, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustForRightFadingEdge(Landroid/view/View;II)V

    goto :goto_7

    :cond_3
    if-gez p1, :cond_6

    .line 2568
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_3

    .line 2569
    :cond_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 2571
    :goto_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    sub-int/2addr p1, v3

    invoke-direct {p0, v4, p1, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object p1

    .line 2572
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object v0

    .line 2574
    invoke-direct {p0, v0, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustForLeftFadingEdge(Landroid/view/View;II)V

    goto :goto_7

    .line 2579
    :cond_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5

    .line 2580
    :cond_7
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 2582
    :goto_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    move v4, v1

    :goto_6
    invoke-direct {p0, v4, v5, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object p1

    .line 2583
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object v0

    .line 2586
    :goto_7
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean p2, p2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez p2, :cond_9

    sub-int p2, v1, v2

    .line 2587
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-direct {p0, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    .line 2588
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    add-int/2addr v1, v2

    .line 2589
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    goto :goto_8

    :cond_9
    add-int/2addr v2, v1

    .line 2591
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v2, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    .line 2592
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    sub-int/2addr v1, v6

    .line 2593
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    :goto_8
    return-object p1
.end method

.method private pinToLeft(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childrenLeft"
        }
    .end annotation

    .line 3205
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-nez v0, :cond_0

    .line 3206
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_0

    .line 3209
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    :cond_0
    return-void
.end method

.method private pinToRight(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childrenRight"
        }
    .end annotation

    .line 3215
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v0

    .line 3216
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-ne v1, v2, :cond_0

    .line 3217
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_0

    .line 3220
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "position",
            "x",
            "flow",
            "childrenTop",
            "selected",
            "recycled",
            "where"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p6, :cond_0

    .line 3122
    iget-object v6, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->shouldShowSelector()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 3123
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eq v6, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 3124
    :goto_1
    iget-object v8, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v8, v8, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mTouchMode:I

    if-lez v8, :cond_2

    const/4 v9, 0x3

    if-ge v8, v9, :cond_2

    .line 3125
    iget-object v8, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v8, v8, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mMotionPosition:I

    if-ne v8, v2, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 3127
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v9

    if-eq v8, v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-eqz p7, :cond_5

    if-nez v7, :cond_5

    .line 3129
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v10, 0x1

    .line 3133
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    if-nez v11, :cond_6

    .line 3135
    new-instance v11, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;-><init>(III)V

    .line 3138
    :cond_6
    iget-object v12, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v12, v12, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v11, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->viewType:I

    if-eqz p7, :cond_7

    .line 3140
    iget-boolean v2, v11, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    if-nez v2, :cond_7

    .line 3141
    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2, p1, v3, v11}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 3143
    :cond_7
    iput-boolean v5, v11, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    .line 3144
    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2, p1, v3, v11, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2800(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    :goto_6
    if-eqz v7, :cond_8

    .line 3148
    invoke-virtual {p1, v6}, Landroid/view/View;->setSelected(Z)V

    if-eqz v6, :cond_8

    .line 3150
    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->requestFocus()Z

    :cond_8
    if-eqz v9, :cond_9

    .line 3155
    invoke-virtual {p1, v8}, Landroid/view/View;->setPressed(Z)V

    :cond_9
    if-eqz v10, :cond_a

    .line 3160
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v11, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->width:I

    .line 3159
    invoke-static {v2, v5, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 3162
    iget-object v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 3163
    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2100(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v6, v11, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->height:I

    .line 3162
    invoke-static {v3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    .line 3164
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 3166
    :cond_a
    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;)V

    .line 3169
    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 3170
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eqz p4, :cond_b

    move/from16 v5, p3

    goto :goto_8

    :cond_b
    sub-int v5, p3, v2

    .line 3175
    :goto_8
    iget-object v6, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v6

    and-int/lit8 v6, v6, 0x70

    if-eq v6, v4, :cond_d

    const/4 v7, 0x5

    if-eq v6, v7, :cond_c

    move/from16 v6, p5

    goto :goto_9

    .line 3183
    :cond_c
    iget-object v6, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2100(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v6

    add-int v6, p5, v6

    sub-int/2addr v6, v3

    goto :goto_9

    .line 3180
    :cond_d
    iget-object v6, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2100(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v6

    sub-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    add-int v6, p5, v6

    :goto_9
    if-eqz v10, :cond_e

    add-int/2addr v2, v5

    add-int/2addr v3, v6

    .line 3193
    invoke-virtual {p1, v5, v6, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_a

    .line 3195
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v5, v2

    invoke-virtual {p1, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3196
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v6, v2

    invoke-virtual {p1, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3199
    :goto_a
    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mCachingStarted:Z

    if-eqz v2, :cond_f

    .line 3200
    invoke-virtual {p1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_f
    return-void
.end method


# virtual methods
.method protected arrowScroll(I)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 3260
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    .line 3261
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    .line 3268
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 3269
    div-int v2, v0, v1

    mul-int v2, v2, v1

    add-int v5, v2, v1

    sub-int/2addr v5, v4

    .line 3270
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v6, v6, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    .line 3272
    :cond_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    .line 3273
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v5, v4

    div-int/2addr v2, v1

    mul-int v2, v2, v1

    sub-int/2addr v5, v2

    sub-int v2, v5, v1

    add-int/2addr v2, v4

    .line 3274
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    const/16 v6, 0x11

    const/4 v7, 0x6

    if-eq p1, v6, :cond_4

    const/16 v6, 0x21

    if-eq p1, v6, :cond_3

    const/16 v6, 0x42

    if-eq p1, v6, :cond_2

    const/16 v1, 0x82

    if-eq p1, v1, :cond_1

    goto :goto_2

    :cond_1
    if-ge v0, v5, :cond_5

    .line 3301
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v7, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    add-int/2addr v0, v4

    .line 3302
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->setSelectionInt(I)V

    goto :goto_1

    .line 3286
    :cond_2
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_5

    .line 3287
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v7, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    add-int/2addr v0, v1

    .line 3288
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->setSelectionInt(I)V

    goto :goto_1

    :cond_3
    if-le v0, v2, :cond_5

    .line 3294
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v7, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    sub-int/2addr v0, v4

    .line 3295
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->setSelectionInt(I)V

    goto :goto_1

    :cond_4
    if-lez v2, :cond_5

    .line 3280
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v7, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    sub-int/2addr v0, v1

    .line 3281
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->setSelectionInt(I)V

    :goto_1
    const/4 v3, 0x1

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 3309
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->playSoundEffect(I)V

    .line 3310
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->invokeOnItemScrollListener()V

    :cond_6
    return v3
.end method

.method protected fillGap(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "right"
        }
    .end annotation

    .line 2125
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v0

    .line 2126
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    .line 2128
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v2

    if-eqz p1, :cond_2

    if-lez v2, :cond_0

    .line 2132
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getListPaddingLeft()I

    move-result p1

    .line 2133
    :goto_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v2

    .line 2134
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    add-int/2addr v3, v2

    .line 2137
    :cond_1
    invoke-direct {p0, v3, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    .line 2138
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->correctTooLeft(III)V

    goto :goto_3

    :cond_2
    if-lez v2, :cond_3

    .line 2141
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getWidth()I

    move-result p1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getListPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    .line 2142
    :goto_1
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 2143
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez v3, :cond_4

    sub-int/2addr v2, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 2148
    :goto_2
    invoke-direct {p0, v2, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    .line 2149
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->correctTooRight(III)V

    :goto_3
    return-void
.end method

.method protected isCandidateSelection(II)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "childIndex",
            "direction"
        }
    .end annotation

    .line 3331
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    sub-int v2, v1, p1

    .line 3333
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    .line 3338
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    .line 3339
    rem-int v2, p1, v3

    sub-int v2, p1, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, v6

    .line 3340
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 3342
    :cond_0
    rem-int v0, v2, v3

    sub-int/2addr v2, v0

    sub-int v0, v1, v2

    sub-int v2, v0, v3

    add-int/2addr v2, v6

    .line 3343
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    if-eq p2, v6, :cond_b

    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    const/16 v0, 0x11

    if-eq p2, v0, :cond_7

    const/16 v0, 0x21

    if-eq p2, v0, :cond_5

    const/16 v0, 0x42

    if-eq p2, v0, :cond_3

    const/16 p1, 0x82

    if-ne p2, p1, :cond_2

    if-nez v2, :cond_1

    const/4 v5, 0x1

    :cond_1
    return v5

    .line 3367
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-ne p1, v2, :cond_4

    const/4 v5, 0x1

    :cond_4
    return v5

    :cond_5
    if-ne v2, v1, :cond_6

    const/4 v5, 0x1

    :cond_6
    return v5

    :cond_7
    if-ne p1, v2, :cond_8

    const/4 v5, 0x1

    :cond_8
    return v5

    :cond_9
    if-ne p1, v2, :cond_a

    if-nez v2, :cond_a

    const/4 v5, 0x1

    :cond_a
    return v5

    :cond_b
    if-ne p1, v0, :cond_c

    if-ne v0, v1, :cond_c

    const/4 v5, 0x1

    :cond_c
    return v5
.end method

.method protected layoutChildren()V
    .locals 11

    .line 2602
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 2603
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 2605
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v2

    .line 2615
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .line 2634
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v6, v6, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    sub-int/2addr v3, v6

    if-ltz v3, :cond_1

    if-ge v3, v2, :cond_1

    .line 2636
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v6, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 2628
    :pswitch_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNextSelectedPosition:I

    if-ltz v3, :cond_0

    .line 2629
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNextSelectedPosition:I

    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v6, v6, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    sub-int/2addr v3, v6

    move-object v6, v4

    move-object v7, v6

    goto :goto_2

    .line 2617
    :pswitch_1
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNextSelectedPosition:I

    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v6, v6, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    sub-int/2addr v3, v6

    if-ltz v3, :cond_0

    if-ge v3, v2, :cond_0

    .line 2619
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v6, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v4

    move-object v7, v6

    move-object v4, v3

    goto :goto_0

    :cond_0
    :pswitch_2
    move-object v6, v4

    move-object v7, v6

    :goto_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    move-object v3, v4

    .line 2640
    :goto_1
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v6, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v7, v3

    goto :goto_0

    .line 2643
    :goto_2
    iget-object v8, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v8, v8, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mDataChanged:Z

    if-eqz v8, :cond_2

    .line 2645
    iget-object v9, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v9}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->handleDataChanged()V

    .line 2650
    :cond_2
    iget-object v9, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v9, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-nez v9, :cond_3

    .line 2651
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->resetList()V

    .line 2652
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->invokeOnItemScrollListener()V

    return-void

    .line 2656
    :cond_3
    iget-object v9, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v10, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNextSelectedPosition:I

    invoke-virtual {v9, v10}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setSelectedPositionInt(I)V

    .line 2660
    iget-object v9, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v9, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 2661
    iget-object v10, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v10, v10, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v2, :cond_5

    .line 2665
    iget-object v9, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v9, v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2668
    :cond_4
    invoke-virtual {v10, v2, v9}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 2673
    :cond_5
    iget-object v8, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2200(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)V

    .line 2675
    iget-object v8, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v8, v8, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    packed-switch v8, :pswitch_data_1

    if-nez v2, :cond_c

    .line 2704
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v3, -0x1

    if-nez v2, :cond_9

    .line 2705
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v2, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 2700
    :pswitch_3
    invoke-direct {p0, v3, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->moveSelection(III)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_8

    .line 2696
    :pswitch_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSyncPosition:I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSpecificTop:I

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_8

    .line 2693
    :pswitch_5
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSpecificTop:I

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_8

    .line 2689
    :pswitch_6
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    move-result-object v0

    .line 2690
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    goto/16 :goto_8

    :pswitch_7
    if-eqz v4, :cond_6

    .line 2678
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillFromSelection(III)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_8

    .line 2680
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillSelection(II)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_8

    .line 2684
    :pswitch_8
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v5, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 2685
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillFromTop(I)Landroid/view/View;

    move-result-object v0

    .line 2686
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    goto :goto_8

    :cond_7
    const/4 v3, 0x0

    .line 2705
    :cond_8
    :goto_4
    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setSelectedPositionInt(I)V

    .line 2707
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillFromTop(I)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 2709
    :cond_9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    .line 2710
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v4, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    move v3, v0

    :cond_b
    :goto_5
    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setSelectedPositionInt(I)V

    .line 2712
    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillFromBottom(II)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 2715
    :cond_c
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    if-ltz v1, :cond_e

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-ge v1, v2, :cond_e

    .line 2716
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    if-nez v7, :cond_d

    goto :goto_6

    .line 2717
    :cond_d
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2716
    :goto_6
    invoke-direct {p0, v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 2718
    :cond_e
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-ge v1, v2, :cond_10

    .line 2719
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-nez v6, :cond_f

    goto :goto_7

    .line 2720
    :cond_f
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2719
    :goto_7
    invoke-direct {p0, v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 2722
    :cond_10
    invoke-direct {p0, v5, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    .line 2729
    :goto_8
    invoke-virtual {v10}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v0, :cond_11

    .line 2732
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->positionSelector(Landroid/view/View;)V

    .line 2733
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedTop:I

    goto :goto_9

    .line 2734
    :cond_11
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mTouchMode:I

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mTouchMode:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_12

    .line 2735
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mMotionPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2736
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->positionSelector(Landroid/view/View;)V

    goto :goto_9

    .line 2738
    :cond_12
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v5, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedTop:I

    .line 2739
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2742
    :cond_13
    :goto_9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v5, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    .line 2743
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput-boolean v5, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mDataChanged:Z

    .line 2744
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput-boolean v5, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNeedSync:Z

    .line 2745
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setNextSelectedPositionInt(I)V

    .line 2747
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->updateScrollIndicators()V

    .line 2749
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-lez v0, :cond_14

    .line 2750
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->checkSelectionChanged()V

    .line 2753
    :cond_14
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->invokeOnItemScrollListener()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "x",
            "flow",
            "childrenTop",
            "selected",
            "where"
        }
    .end annotation

    move-object v9, p0

    move v2, p1

    .line 2103
    iget-object v0, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2105
    iget-object v0, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v10

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    .line 2109
    invoke-direct/range {v0 .. v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v10

    .line 2116
    :cond_0
    iget-object v0, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mIsScrap:[Z

    invoke-virtual {v0, p1, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v10

    .line 2119
    iget-object v0, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    move-object v0, p0

    move-object v1, v10

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v10
.end method

.method protected onMeasure(II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 2760
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2761
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2762
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 2763
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez v1, :cond_1

    .line 2765
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2100(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result p2

    if-lez p2, :cond_0

    .line 2766
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2100(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result p2

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 2768
    :cond_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object p2, p2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    add-int/2addr p2, v1

    .line 2770
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    add-int/2addr p2, v1

    .line 2773
    :cond_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    .line 2774
    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->determineRows(I)V

    .line 2778
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    :goto_1
    iput v3, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    .line 2779
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-lez v1, :cond_4

    .line 2781
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v5, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mIsScrap:[Z

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 2783
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    if-nez v5, :cond_3

    .line 2785
    new-instance v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;-><init>(III)V

    .line 2787
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2789
    :cond_3
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v6, v6, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    iput v6, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->viewType:I

    const/4 v6, 0x1

    .line 2790
    iput-boolean v6, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    .line 2792
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 2793
    invoke-static {v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2100(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->height:I

    .line 2792
    invoke-static {v6, v4, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    .line 2795
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->width:I

    .line 2794
    invoke-static {v7, v4, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 2796
    invoke-virtual {v3, v7, v6}, Landroid/view/View;->measure(II)V

    .line 2798
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 2800
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v7, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2801
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v5, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 2806
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, v6

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 2807
    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getHorizontalFadingEdgeLength()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    :cond_6
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_a

    .line 2811
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    .line 2813
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    :cond_7
    if-ge v4, v1, :cond_9

    add-int/2addr v0, v6

    add-int/2addr v4, v3

    if-ge v4, v1, :cond_8

    .line 2817
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v5

    add-int/2addr v0, v5

    :cond_8
    if-lt v0, v2, :cond_7

    goto :goto_3

    :cond_9
    move v2, v0

    .line 2827
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0, v2, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;II)V

    .line 2828
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput p1, p2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mWidthMeasureSpec:I

    return-void
.end method

.method protected setSelectionInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 3232
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNextSelectedPosition:I

    .line 3234
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setNextSelectedPositionInt(I)V

    .line 3235
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->layoutChildren()V

    .line 3237
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNextSelectedPosition:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 3238
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNextSelectedPosition:I

    .line 3239
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 3240
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    .line 3242
    :cond_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    div-int/2addr p1, v1

    .line 3243
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result p1

    div-int/2addr v0, p1

    return-void
.end method
