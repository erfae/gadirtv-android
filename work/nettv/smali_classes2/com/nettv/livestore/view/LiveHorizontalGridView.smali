.class public Lcom/nettv/livestore/view/LiveHorizontalGridView;
.super Landroidx/leanback/widget/HorizontalGridView;
.source "LiveHorizontalGridView.java"


# instance fields
.field private K:I

.field private L:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/nettv/livestore/view/LiveHorizontalGridView;->K:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/nettv/livestore/view/LiveHorizontalGridView;->L:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/nettv/livestore/view/LiveHorizontalGridView;->K:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/nettv/livestore/view/LiveHorizontalGridView;->L:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/nettv/livestore/view/LiveHorizontalGridView;->K:I

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/nettv/livestore/view/LiveHorizontalGridView;->L:Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseGridView;->getSelectedPosition()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v4, :cond_3

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v5

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/nettv/livestore/view/LiveHorizontalGridView;->L:Z

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    return v5

    :cond_1
    if-eq v0, v4, :cond_3

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-nez v0, :cond_2

    .line 9
    iget-boolean v0, p0, Lcom/nettv/livestore/view/LiveHorizontalGridView;->L:Z

    if-eqz v0, :cond_2

    sub-int/2addr p1, v5

    .line 10
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    return v5

    :cond_2
    return v3

    .line 11
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/leanback/widget/BaseGridView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getPage()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/view/LiveHorizontalGridView;->K:I

    return v0
.end method

.method public setLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nettv/livestore/view/LiveHorizontalGridView;->L:Z

    return-void
.end method

.method public setPage(I)V
    .locals 0

    iput p1, p0, Lcom/nettv/livestore/view/LiveHorizontalGridView;->K:I

    return-void
.end method
