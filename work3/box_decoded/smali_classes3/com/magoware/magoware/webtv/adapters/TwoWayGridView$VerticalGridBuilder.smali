.class Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;
.super Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;
.source "TwoWayGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerticalGridBuilder"
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

    .line 793
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$1;)V
    .locals 0

    .line 793
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)V

    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "childInSelectedRow",
            "topSelectionPixel",
            "bottomSelectionPixel"
        }
    .end annotation

    .line 1314
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 1318
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    .line 1322
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p1, p3

    .line 1323
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1326
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    neg-int p1, p1

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "childInSelectedRow",
            "topSelectionPixel",
            "bottomSelectionPixel"
        }
    .end annotation

    .line 1342
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 1345
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 1349
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p3, p1

    .line 1350
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1353
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 5

    .line 1763
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1769
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1772
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1773
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 1774
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-eqz v1, :cond_0

    .line 1777
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    .line 1785
    :cond_2
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1786
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 1788
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-ge v3, v0, :cond_3

    .line 1791
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 1801
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    neg-int v1, v2

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    :cond_5
    return-void
.end method

.method private correctTooHigh(III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "numColumns",
            "verticalSpacing",
            "childCount"
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1126
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_3

    if-lez p3, :cond_3

    .line 1128
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    sub-int/2addr p3, v1

    invoke-virtual {v0, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1131
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    .line 1133
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getBottom()I

    move-result v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, p3

    .line 1139
    iget-object p3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1140
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    if-lez v0, :cond_3

    .line 1144
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_3

    .line 1145
    :cond_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-nez v3, :cond_1

    .line 1147
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1151
    :cond_1
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    .line 1152
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-lez v0, :cond_3

    .line 1155
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    :cond_2
    sub-int/2addr v0, p1

    .line 1156
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, p2

    .line 1155
    invoke-direct {p0, v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    .line 1158
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "numColumns",
            "verticalSpacing",
            "childCount"
        }
    .end annotation

    .line 1165
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p3, :cond_3

    .line 1167
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1170
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1173
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1176
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v1

    .line 1181
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1182
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1183
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v4, p3

    const/4 p3, 0x1

    sub-int/2addr v4, p3

    if-lez v0, :cond_3

    .line 1187
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v5, p3

    if-lt v4, v5, :cond_0

    if-le v3, v2, :cond_3

    .line 1188
    :cond_0
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v5, p3

    if-ne v4, v5, :cond_1

    sub-int/2addr v3, v2

    .line 1190
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1194
    :cond_1
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    neg-int v0, v0

    invoke-virtual {v2, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    .line 1195
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v0, p3

    if-ge v4, v0, :cond_3

    .line 1198
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    const/4 p1, 0x1

    :cond_2
    add-int/2addr v4, p1

    .line 1199
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, p2

    .line 1198
    invoke-direct {p0, v4, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    .line 1201
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    :cond_3
    return-void
.end method

.method private determineColumns(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "availableSpace"
        }
    .end annotation

    .line 1358
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v0

    .line 1359
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$800(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    .line 1360
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1100(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    .line 1361
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1200(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$402(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    .line 1363
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    if-lez v2, :cond_0

    .line 1366
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    add-int v5, p1, v0

    add-int v6, v2, v0

    div-int/2addr v5, v6

    invoke-static {v3, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$302(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    goto :goto_0

    .line 1370
    :cond_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$302(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    goto :goto_0

    .line 1374
    :cond_1
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$302(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    .line 1377
    :goto_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    const/4 v5, 0x1

    if-gtz v3, :cond_2

    .line 1378
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$302(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    :cond_2
    if-eqz v1, :cond_8

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    goto/16 :goto_1

    .line 1414
    :cond_3
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    mul-int v1, v1, v2

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 1415
    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    add-int/2addr v1, v5

    mul-int v1, v1, v0

    sub-int/2addr p1, v1

    .line 1416
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$602(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    .line 1417
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    if-le v1, v5, :cond_4

    .line 1418
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 1419
    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    add-int/2addr v2, v5

    div-int/2addr p1, v2

    add-int/2addr v0, p1

    .line 1418
    invoke-static {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$702(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    goto :goto_1

    .line 1421
    :cond_4
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    div-int/2addr v0, v4

    invoke-static {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$702(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    goto :goto_1

    .line 1393
    :cond_5
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    mul-int v1, v1, v2

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 1394
    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    sub-int/2addr v1, v5

    mul-int v1, v1, v0

    sub-int/2addr p1, v1

    .line 1395
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    div-int/2addr p1, v3

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$602(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    .line 1396
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$702(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    goto :goto_1

    .line 1401
    :cond_6
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    mul-int v1, v1, v2

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 1402
    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    sub-int/2addr v1, v5

    mul-int v1, v1, v0

    sub-int/2addr p1, v1

    .line 1403
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$602(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    .line 1404
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    if-le v1, v5, :cond_7

    .line 1405
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 1406
    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    sub-int/2addr v2, v5

    div-int/2addr p1, v2

    add-int/2addr v0, p1

    .line 1405
    invoke-static {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$702(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    goto :goto_1

    .line 1408
    :cond_7
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$702(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    goto :goto_1

    .line 1384
    :cond_8
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$602(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    .line 1385
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$702(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I

    :goto_1
    return-void
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "nextTop"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge p2, v0, :cond_1

    .line 878
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-ge p1, v2, :cond_1

    const/4 v2, 0x1

    .line 879
    invoke-direct {p0, p1, p2, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object v1, p2

    .line 886
    :cond_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    add-int/2addr p2, v2

    .line 888
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    add-int/2addr p1, v2

    goto :goto_0

    :cond_1
    return-object v1
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
            "nextBottom"
        }
    .end annotation

    .line 999
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1000
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1002
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 1003
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 1005
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

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
            "selectedTop",
            "childrenTop",
            "childrenBottom"
        }
    .end annotation

    .line 1218
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 1219
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    .line 1220
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    .line 1221
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    .line 1226
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 1227
    rem-int v4, v1, v2

    sub-int/2addr v1, v4

    const/4 v4, -0x1

    goto :goto_0

    .line 1229
    :cond_0
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    .line 1231
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v1, v5

    rem-int v6, v4, v2

    sub-int/2addr v4, v6

    sub-int v4, v1, v4

    const/4 v1, 0x0

    sub-int v6, v4, v2

    add-int/2addr v6, v5

    .line 1232
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1238
    :goto_0
    invoke-direct {p0, p2, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->getTopSelectionPixel(III)I

    move-result p2

    .line 1239
    invoke-direct {p0, p3, v0, v2, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->getBottomSelectionPixel(IIII)I

    move-result p3

    .line 1242
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v0, p1, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 1244
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 1246
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object v0

    .line 1247
    invoke-direct {p0, v0, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 1248
    invoke-direct {p0, v0, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 1250
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean p2, p2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez p2, :cond_2

    sub-int p2, v1, v2

    .line 1251
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-direct {p0, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    .line 1252
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    add-int/2addr v1, v2

    .line 1253
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    goto :goto_2

    :cond_2
    add-int/2addr v4, v2

    .line 1255
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v4, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    .line 1256
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    sub-int/2addr v1, v5

    .line 1257
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

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
            "nextTop"
        }
    .end annotation

    .line 989
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 990
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 991
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 995
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "childrenTop",
            "childrenBottom"
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->reconcileSelectedPosition()I

    move-result v0

    .line 1010
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    .line 1011
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    .line 1016
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 1017
    rem-int v3, v0, v1

    sub-int/2addr v0, v3

    const/4 v3, -0x1

    goto :goto_0

    .line 1019
    :cond_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    .line 1021
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v0, v4

    rem-int v5, v3, v1

    sub-int/2addr v3, v5

    sub-int v3, v0, v3

    const/4 v0, 0x0

    sub-int v5, v3, v1

    add-int/2addr v5, v4

    .line 1022
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1025
    :goto_0
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 1026
    invoke-direct {p0, p1, v5, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->getTopSelectionPixel(III)I

    move-result v6

    .line 1028
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v7, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    invoke-direct {p0, v7, v6, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object v6

    .line 1029
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v0, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 1031
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v7}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object v7

    .line 1033
    iget-object v8, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v8, v8, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    add-int p1, v0, v1

    .line 1034
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {p0, p1, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    .line 1035
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->pinToBottom(I)V

    sub-int/2addr v0, v1

    .line 1036
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    .line 1037
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    goto :goto_2

    .line 1039
    :cond_2
    invoke-direct {p0, p2, v5, v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->getBottomSelectionPixel(IIII)I

    move-result p2

    .line 1041
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr p2, v5

    .line 1042
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v5, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    sub-int/2addr v0, v4

    .line 1043
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-direct {p0, v0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    .line 1044
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->pinToTop(I)V

    add-int/2addr v3, v1

    .line 1045
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {p0, v3, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    .line 1046
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

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
            "top"
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v0

    .line 1069
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1070
    rem-int v1, p1, v0

    sub-int/2addr p1, v1

    const/4 v1, -0x1

    goto :goto_0

    .line 1072
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    .line 1074
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr p1, v2

    rem-int v3, v1, v0

    sub-int/2addr v1, v3

    sub-int v1, p1, v1

    const/4 p1, 0x0

    sub-int v3, v1, v0

    add-int/2addr v3, v2

    .line 1075
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1078
    :goto_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    invoke-direct {p0, v3, p2, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    .line 1081
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput p1, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 1083
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 1089
    :cond_2
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v4

    .line 1094
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez v5, :cond_3

    sub-int v1, p1, v0

    .line 1095
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {p0, v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    move-result-object v1

    .line 1096
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    add-int/2addr p1, v0

    .line 1097
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v4

    invoke-direct {p0, p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    move-result-object p1

    .line 1099
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 1101
    invoke-direct {p0, v0, v4, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->correctTooHigh(III)V

    goto :goto_2

    :cond_3
    add-int/2addr v1, v0

    .line 1104
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {p0, v1, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 1105
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    sub-int/2addr p1, v2

    .line 1106
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {p0, p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    move-result-object p1

    .line 1108
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 1110
    invoke-direct {p0, v0, v4, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->correctTooLow(III)V

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

.method private fillUp(II)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "nextBottom"
        }
    .end annotation

    .line 958
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-le p2, v0, :cond_1

    if-ltz p1, :cond_1

    .line 962
    invoke-direct {p0, p1, p2, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object v1, p2

    .line 967
    :cond_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    sub-int/2addr p2, v2

    .line 969
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput p1, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 971
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    sub-int/2addr p1, v2

    goto :goto_0

    .line 974
    :cond_1
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean p2, p2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz p2, :cond_2

    .line 975
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    :cond_2
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "childrenBottom",
            "fadingEdgeLength",
            "numColumns",
            "rowStart"
        }
    .end annotation

    add-int/2addr p4, p3

    add-int/lit8 p4, p4, -0x1

    .line 1278
    iget-object p3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget p3, p3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 p3, p3, -0x1

    if-ge p4, p3, :cond_0

    sub-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private getTopSelectionPixel(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "childrenTop",
            "fadingEdgeLength",
            "rowStart"
        }
    .end annotation

    if-lez p3, :cond_0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPos",
            "y",
            "flow"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 895
    iget-object v0, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v8

    .line 896
    iget-object v0, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v9

    .line 899
    iget-object v0, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 900
    iget-object v1, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

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

    .line 902
    iget-object v1, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v11, 0x1

    if-nez v1, :cond_1

    .line 903
    iget-object v1, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    add-int v1, p1, v1

    iget-object v2, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v12, p1

    move v13, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p1, 0x1

    .line 906
    iget-object v2, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    sub-int v2, p1, v2

    add-int/2addr v2, v11

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v3, v1, v2

    .line 908
    iget-object v4, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 909
    iget-object v4, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v4

    sub-int/2addr v4, v3

    add-int v3, v8, v9

    mul-int v4, v4, v3

    add-int/2addr v0, v4

    :cond_2
    move v13, v1

    move v12, v2

    .line 915
    :goto_1
    iget-object v1, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->shouldShowSelector()Z

    move-result v14

    .line 916
    iget-object v1, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->touchModeDrawsInPressedState()Z

    move-result v15

    .line 917
    iget-object v1, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

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

    .line 926
    invoke-virtual/range {v0 .. v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->makeAndAddView(IIZIZI)Landroid/view/View;

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

    .line 938
    :cond_8
    iget-object v0, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$502(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;)Landroid/view/View;

    if-eqz v17, :cond_9

    .line 941
    iget-object v0, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

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
            "childrenTop",
            "childrenBottom"
        }
    .end annotation

    .line 1444
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 1445
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    .line 1446
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    .line 1447
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    .line 1453
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    sub-int p1, v1, p1

    .line 1454
    rem-int v4, p1, v2

    sub-int/2addr p1, v4

    .line 1456
    rem-int v4, v1, v2

    sub-int/2addr v1, v4

    const/4 v4, -0x1

    goto :goto_0

    .line 1458
    :cond_0
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, v1

    .line 1460
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v7, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v7, v6

    rem-int v8, v4, v2

    sub-int/2addr v4, v8

    sub-int v4, v7, v4

    sub-int v7, v4, v2

    add-int/2addr v7, v6

    .line 1461
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1463
    iget-object v8, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v8, v8, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v8, v6

    sub-int/2addr v1, p1

    sub-int/2addr v8, v1

    .line 1464
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr p1, v6

    rem-int v1, v8, v2

    sub-int/2addr v8, v1

    sub-int/2addr p1, v8

    sub-int/2addr p1, v2

    add-int/2addr p1, v6

    .line 1465
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v1, v7

    :goto_0
    sub-int p1, v1, p1

    .line 1470
    invoke-direct {p0, p2, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->getTopSelectionPixel(III)I

    move-result p2

    .line 1471
    invoke-direct {p0, p3, v0, v2, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->getBottomSelectionPixel(IIII)I

    move-result p3

    .line 1475
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-lez p1, :cond_3

    .line 1485
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 1486
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1488
    :goto_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    add-int/2addr v5, v3

    invoke-direct {p0, p1, v5, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 1489
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object v0

    .line 1491
    invoke-direct {p0, v0, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    goto :goto_7

    :cond_3
    if-gez p1, :cond_6

    .line 1496
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_3

    .line 1497
    :cond_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 1499
    :goto_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    sub-int/2addr p1, v3

    invoke-direct {p0, v0, p1, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 1500
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object v0

    .line 1502
    invoke-direct {p0, v0, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto :goto_7

    .line 1507
    :cond_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5

    .line 1508
    :cond_7
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1510
    :goto_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz p1, :cond_8

    move p1, v4

    goto :goto_6

    :cond_8
    move p1, v1

    :goto_6
    invoke-direct {p0, p1, v5, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 1511
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;

    move-result-object v0

    .line 1514
    :goto_7
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean p2, p2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez p2, :cond_9

    sub-int p2, v1, v2

    .line 1515
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-direct {p0, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    .line 1516
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    add-int/2addr v1, v2

    .line 1517
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    goto :goto_8

    :cond_9
    add-int/2addr v4, v2

    .line 1519
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v4, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    .line 1520
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    sub-int/2addr v1, v6

    .line 1521
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    :goto_8
    return-object p1
.end method

.method private pinToBottom(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childrenBottom"
        }
    .end annotation

    .line 1917
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v0

    .line 1918
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-ne v1, v2, :cond_0

    .line 1919
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childrenTop"
        }
    .end annotation

    .line 1907
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-nez v0, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_0

    .line 1911
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

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
            "y",
            "flow",
            "childrenLeft",
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

    .line 1824
    iget-object v6, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->shouldShowSelector()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1825
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eq v6, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 1826
    :goto_1
    iget-object v8, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v8, v8, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mTouchMode:I

    if-lez v8, :cond_2

    const/4 v9, 0x3

    if-ge v8, v9, :cond_2

    .line 1827
    iget-object v8, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v8, v8, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mMotionPosition:I

    if-ne v8, v2, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 1829
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

    .line 1831
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

    .line 1835
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    if-nez v11, :cond_6

    .line 1837
    new-instance v11, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;-><init>(III)V

    .line 1840
    :cond_6
    iget-object v12, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v12, v12, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v11, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->viewType:I

    if-eqz p7, :cond_7

    .line 1842
    iget-boolean v2, v11, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    if-nez v2, :cond_7

    .line 1843
    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2, p1, v3, v11}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1600(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 1845
    :cond_7
    iput-boolean v5, v11, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    .line 1846
    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2, p1, v3, v11, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    :goto_6
    if-eqz v7, :cond_8

    .line 1850
    invoke-virtual {p1, v6}, Landroid/view/View;->setSelected(Z)V

    if-eqz v6, :cond_8

    .line 1852
    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->requestFocus()Z

    :cond_8
    if-eqz v9, :cond_9

    .line 1857
    invoke-virtual {p1, v8}, Landroid/view/View;->setPressed(Z)V

    :cond_9
    if-eqz v10, :cond_a

    .line 1862
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v11, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->height:I

    .line 1861
    invoke-static {v2, v5, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1864
    iget-object v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 1865
    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v6, v11, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->width:I

    .line 1864
    invoke-static {v3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    .line 1866
    invoke-virtual {p1, v3, v2}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 1868
    :cond_a
    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1800(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;)V

    .line 1871
    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1872
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eqz p4, :cond_b

    move/from16 v5, p3

    goto :goto_8

    :cond_b
    sub-int v5, p3, v3

    .line 1877
    :goto_8
    iget-object v6, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    if-eq v6, v4, :cond_d

    const/4 v7, 0x5

    if-eq v6, v7, :cond_c

    move/from16 v6, p5

    goto :goto_9

    .line 1885
    :cond_c
    iget-object v6, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v6

    add-int v6, p5, v6

    sub-int/2addr v6, v2

    goto :goto_9

    .line 1882
    :cond_d
    iget-object v6, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    add-int v6, p5, v6

    :goto_9
    if-eqz v10, :cond_e

    add-int/2addr v2, v6

    add-int/2addr v3, v5

    .line 1895
    invoke-virtual {p1, v6, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_a

    .line 1897
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v6, v2

    invoke-virtual {p1, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1898
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v5, v2

    invoke-virtual {p1, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1901
    :goto_a
    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mCachingStarted:Z

    if-eqz v2, :cond_f

    .line 1902
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

    .line 1963
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    .line 1964
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    .line 1971
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 1972
    div-int v2, v0, v1

    mul-int v2, v2, v1

    add-int v5, v2, v1

    sub-int/2addr v5, v4

    .line 1973
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v6, v6, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    .line 1975
    :cond_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    .line 1976
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v5, v4

    div-int/2addr v2, v1

    mul-int v2, v2, v1

    sub-int/2addr v5, v2

    sub-int v2, v5, v1

    add-int/2addr v2, v4

    .line 1977
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    const/16 v6, 0x11

    const/4 v7, 0x6

    if-eq p1, v6, :cond_4

    const/16 v6, 0x21

    if-eq p1, v6, :cond_3

    const/16 v2, 0x42

    if-eq p1, v2, :cond_2

    const/16 v2, 0x82

    if-eq p1, v2, :cond_1

    goto :goto_2

    .line 1989
    :cond_1
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v2, v4

    if-ge v5, v2, :cond_5

    .line 1990
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v7, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    add-int/2addr v0, v1

    .line 1991
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->setSelectionInt(I)V

    goto :goto_1

    :cond_2
    if-ge v0, v5, :cond_5

    .line 2004
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v7, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    add-int/2addr v0, v4

    .line 2005
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->setSelectionInt(I)V

    goto :goto_1

    :cond_3
    if-lez v2, :cond_5

    .line 1983
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v7, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    sub-int/2addr v0, v1

    .line 1984
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->setSelectionInt(I)V

    goto :goto_1

    :cond_4
    if-le v0, v2, :cond_5

    .line 1997
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v7, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    sub-int/2addr v0, v4

    .line 1998
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->setSelectionInt(I)V

    :goto_1
    const/4 v3, 0x1

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 2012
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->playSoundEffect(I)V

    .line 2013
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

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
            "down"
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v0

    .line 837
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    .line 839
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v2

    if-eqz p1, :cond_2

    if-lez v2, :cond_0

    .line 843
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getListPaddingTop()I

    move-result p1

    .line 844
    :goto_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v2

    .line 845
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    add-int/2addr v3, v2

    .line 848
    :cond_1
    invoke-direct {p0, v3, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    .line 849
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->correctTooHigh(III)V

    goto :goto_3

    :cond_2
    if-lez v2, :cond_3

    .line 852
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getHeight()I

    move-result p1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getListPaddingBottom()I

    move-result v2

    sub-int/2addr p1, v2

    .line 853
    :goto_1
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 854
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez v3, :cond_4

    sub-int/2addr v2, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 859
    :goto_2
    invoke-direct {p0, v2, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    .line 860
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->correctTooLow(III)V

    :goto_3
    return-void
.end method

.method protected isCandidateSelection(II)Z
    .locals 6
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

    .line 2034
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    sub-int v2, v1, p1

    .line 2040
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 2041
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    rem-int v2, p1, v2

    sub-int v2, p1, v2

    .line 2042
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    add-int/2addr v3, v2

    sub-int/2addr v3, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 2044
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v0

    rem-int v0, v2, v0

    sub-int/2addr v2, v0

    sub-int v0, v1, v2

    .line 2045
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v2

    sub-int v2, v0, v2

    add-int/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    if-eq p2, v5, :cond_b

    const/4 v3, 0x2

    if-eq p2, v3, :cond_9

    const/16 v3, 0x11

    if-eq p2, v3, :cond_7

    const/16 v3, 0x21

    if-eq p2, v3, :cond_5

    const/16 v0, 0x42

    if-eq p2, v0, :cond_3

    const/16 p1, 0x82

    if-ne p2, p1, :cond_2

    if-nez v2, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4

    .line 2069
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-ne p1, v2, :cond_4

    const/4 v4, 0x1

    :cond_4
    return v4

    :cond_5
    if-ne v0, v1, :cond_6

    const/4 v4, 0x1

    :cond_6
    return v4

    :cond_7
    if-ne p1, v0, :cond_8

    const/4 v4, 0x1

    :cond_8
    return v4

    :cond_9
    if-ne p1, v2, :cond_a

    if-nez v2, :cond_a

    const/4 v4, 0x1

    :cond_a
    return v4

    :cond_b
    if-ne p1, v0, :cond_c

    if-ne v0, v1, :cond_c

    const/4 v4, 0x1

    :cond_c
    return v4
.end method

.method protected layoutChildren()V
    .locals 11

    .line 1603
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 1604
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 1606
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v2

    .line 1616
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .line 1635
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v6, v6, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    sub-int/2addr v3, v6

    if-ltz v3, :cond_1

    if-ge v3, v2, :cond_1

    .line 1637
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v6, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 1629
    :pswitch_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNextSelectedPosition:I

    if-ltz v3, :cond_0

    .line 1630
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNextSelectedPosition:I

    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v6, v6, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    sub-int/2addr v3, v6

    move-object v6, v4

    move-object v7, v6

    goto :goto_2

    .line 1618
    :pswitch_1
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNextSelectedPosition:I

    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v6, v6, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    sub-int/2addr v3, v6

    if-ltz v3, :cond_0

    if-ge v3, v2, :cond_0

    .line 1620
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

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

    .line 1641
    :goto_1
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v6, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v7, v3

    goto :goto_0

    .line 1644
    :goto_2
    iget-object v8, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v8, v8, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mDataChanged:Z

    if-eqz v8, :cond_2

    .line 1646
    iget-object v9, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v9}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->handleDataChanged()V

    .line 1651
    :cond_2
    iget-object v9, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v9, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-nez v9, :cond_3

    .line 1652
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->resetList()V

    .line 1653
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->invokeOnItemScrollListener()V

    return-void

    .line 1657
    :cond_3
    iget-object v9, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v10, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNextSelectedPosition:I

    invoke-virtual {v9, v10}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setSelectedPositionInt(I)V

    .line 1661
    iget-object v9, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v9, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 1662
    iget-object v10, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v10, v10, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v2, :cond_5

    .line 1666
    iget-object v9, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v9, v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1669
    :cond_4
    invoke-virtual {v10, v2, v9}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1674
    :cond_5
    iget-object v8, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)V

    .line 1676
    iget-object v8, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v8, v8, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    packed-switch v8, :pswitch_data_1

    if-nez v2, :cond_c

    .line 1705
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v3, -0x1

    if-nez v2, :cond_9

    .line 1706
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v2, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 1701
    :pswitch_3
    invoke-direct {p0, v3, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->moveSelection(III)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_8

    .line 1697
    :pswitch_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSyncPosition:I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSpecificTop:I

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_8

    .line 1694
    :pswitch_5
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSpecificTop:I

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_8

    .line 1690
    :pswitch_6
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 1691
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    goto/16 :goto_8

    :pswitch_7
    if-eqz v4, :cond_6

    .line 1679
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillFromSelection(III)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_8

    .line 1681
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillSelection(II)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_8

    .line 1685
    :pswitch_8
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v5, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    .line 1686
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillFromTop(I)Landroid/view/View;

    move-result-object v0

    .line 1687
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    goto :goto_8

    :cond_7
    const/4 v3, 0x0

    .line 1706
    :cond_8
    :goto_4
    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setSelectedPositionInt(I)V

    .line 1708
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillFromTop(I)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 1710
    :cond_9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    .line 1711
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v4, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    move v3, v0

    :cond_b
    :goto_5
    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setSelectedPositionInt(I)V

    .line 1713
    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillFromBottom(II)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 1716
    :cond_c
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    if-ltz v1, :cond_e

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-ge v1, v2, :cond_e

    .line 1717
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    if-nez v7, :cond_d

    goto :goto_6

    .line 1718
    :cond_d
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1717
    :goto_6
    invoke-direct {p0, v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 1719
    :cond_e
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-ge v1, v2, :cond_10

    .line 1720
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    if-nez v6, :cond_f

    goto :goto_7

    .line 1721
    :cond_f
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1720
    :goto_7
    invoke-direct {p0, v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 1723
    :cond_10
    invoke-direct {p0, v5, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    .line 1730
    :goto_8
    invoke-virtual {v10}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v0, :cond_11

    .line 1733
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->positionSelector(Landroid/view/View;)V

    .line 1734
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedTop:I

    goto :goto_9

    .line 1735
    :cond_11
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mTouchMode:I

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mTouchMode:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_12

    .line 1736
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mMotionPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1737
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->positionSelector(Landroid/view/View;)V

    goto :goto_9

    .line 1739
    :cond_12
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v5, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedTop:I

    .line 1740
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1743
    :cond_13
    :goto_9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput v5, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    .line 1744
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput-boolean v5, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mDataChanged:Z

    .line 1745
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iput-boolean v5, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNeedSync:Z

    .line 1746
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setNextSelectedPositionInt(I)V

    .line 1748
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->updateScrollIndicators()V

    .line 1750
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-lez v0, :cond_14

    .line 1751
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->checkSelectionChanged()V

    .line 1754
    :cond_14
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

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
            "y",
            "flow",
            "childrenLeft",
            "selected",
            "where"
        }
    .end annotation

    move-object v9, p0

    move v2, p1

    .line 813
    iget-object v0, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 815
    iget-object v0, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

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

    .line 819
    invoke-direct/range {v0 .. v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v10

    .line 826
    :cond_0
    iget-object v0, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mIsScrap:[Z

    invoke-virtual {v0, p1, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v10

    .line 829
    iget-object v0, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

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

    invoke-direct/range {v0 .. v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->setupChild(Landroid/view/View;IIZIZZI)V

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

    .line 1530
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1531
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1532
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1533
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez v0, :cond_1

    .line 1535
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1538
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    :goto_0
    add-int/2addr v0, v2

    .line 1540
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getVerticalScrollbarWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 1543
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v0

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    .line 1544
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->determineColumns(I)V

    .line 1548
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    :goto_1
    iput v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    .line 1549
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-lez v0, :cond_4

    .line 1551
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v5, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mIsScrap:[Z

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1553
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    if-nez v5, :cond_3

    .line 1555
    new-instance v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;-><init>(III)V

    .line 1557
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1559
    :cond_3
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v6, v6, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    iput v6, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->viewType:I

    const/4 v6, 0x1

    .line 1560
    iput-boolean v6, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    .line 1563
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->height:I

    .line 1562
    invoke-static {v6, v4, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 1564
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 1565
    invoke-static {v7}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->width:I

    .line 1564
    invoke-static {v7, v4, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1566
    invoke-virtual {v3, v7, v6}, Landroid/view/View;->measure(II)V

    .line 1568
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1570
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v7, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1571
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v5, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :cond_5
    :goto_2
    if-nez v1, :cond_6

    .line 1576
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object p2, p2, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v3

    add-int/2addr p2, v6

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    .line 1577
    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getVerticalFadingEdgeLength()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr p2, v3

    :cond_6
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_a

    .line 1581
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    .line 1583
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v3

    :cond_7
    if-ge v4, v0, :cond_9

    add-int/2addr v1, v6

    add-int/2addr v4, v3

    if-ge v4, v0, :cond_8

    .line 1587
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_8
    if-lt v1, p2, :cond_7

    goto :goto_3

    :cond_9
    move p2, v1

    .line 1597
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v0, v2, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$1400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;II)V

    .line 1598
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

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

    .line 1934
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNextSelectedPosition:I

    .line 1936
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setNextSelectedPositionInt(I)V

    .line 1937
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->layoutChildren()V

    .line 1939
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNextSelectedPosition:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 1940
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNextSelectedPosition:I

    .line 1941
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 1942
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    .line 1944
    :cond_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result v1

    div-int/2addr p1, v1

    .line 1945
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I

    move-result p1

    div-int/2addr v0, p1

    return-void
.end method
