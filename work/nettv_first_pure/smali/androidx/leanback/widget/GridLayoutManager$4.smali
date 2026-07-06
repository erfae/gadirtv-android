.class Landroidx/leanback/widget/GridLayoutManager$4;
.super Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.source "GridLayoutManager.java"


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$4;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$4;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 3
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager$4;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v3, v2, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_1
    if-ge p1, v0, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    const/4 v4, -0x1

    .line 4
    :cond_3
    iget p1, v2, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v4

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v4

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method
