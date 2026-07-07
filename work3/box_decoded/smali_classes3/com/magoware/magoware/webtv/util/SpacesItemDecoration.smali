.class public Lcom/magoware/magoware/webtv/util/SpacesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SpacesItemDecoration.java"


# instance fields
.field private space:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "space"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 11
    iput p1, p0, Lcom/magoware/magoware/webtv/util/SpacesItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "view",
            "parent",
            "state"
        }
    .end annotation

    .line 16
    iget p4, p0, Lcom/magoware/magoware/webtv/util/SpacesItemDecoration;->space:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 17
    iget p4, p0, Lcom/magoware/magoware/webtv/util/SpacesItemDecoration;->space:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 18
    iget p4, p0, Lcom/magoware/magoware/webtv/util/SpacesItemDecoration;->space:I

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 21
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 24
    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    iget p2, p0, Lcom/magoware/magoware/webtv/util/SpacesItemDecoration;->space:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :goto_1
    return-void
.end method
