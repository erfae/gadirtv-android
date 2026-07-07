.class public Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;
.super Landroidx/leanback/widget/VerticalGridPresenter;
.source "ChannelMenuVerticalGridPresenter.java"


# instance fields
.field private lastActionType:I

.field lastMotionEvent:Landroid/view/MotionEvent;

.field private lastY:F

.field private mGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusZoomFactor"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Landroidx/leanback/widget/VerticalGridPresenter;-><init>(I)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->lastMotionEvent:Landroid/view/MotionEvent;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->lastY:F

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->lastActionType:I

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->setShadowEnabled(Z)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusZoomFactor",
            "useFocusDimmer"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/VerticalGridPresenter;-><init>(IZ)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->lastMotionEvent:Landroid/view/MotionEvent;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->lastY:F

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->lastActionType:I

    return-void
.end method


# virtual methods
.method protected createGridViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 58
    invoke-super {p0, p1}, Landroidx/leanback/widget/VerticalGridPresenter;->createGridViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected initializeGridViewHolder(Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vh"
        }
    .end annotation

    .line 35
    invoke-super {p0, p1}, Landroidx/leanback/widget/VerticalGridPresenter;->initializeGridViewHolder(Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;)V

    .line 36
    invoke-virtual {p1}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    const/16 v1, 0x3c

    .line 37
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setItemSpacing(I)V

    .line 38
    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 40
    iget-object p1, p1, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->view:Landroid/view/View;

    new-instance v0, Lcom/magoware/magoware/webtv/players/channelMenu/-$$Lambda$ChannelMenuVerticalGridPresenter$uB1vhx62Tqu7k3ZKo9UlyV-vSdk;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/channelMenu/-$$Lambda$ChannelMenuVerticalGridPresenter$uB1vhx62Tqu7k3ZKo9UlyV-vSdk;-><init>(Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public synthetic lambda$initializeGridViewHolder$0$ChannelMenuVerticalGridPresenter(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->lastY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->lastY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->lastActionType:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 47
    iget v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->lastY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->scrollBy(II)V

    .line 49
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->lastY:F

    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->lastActionType:I

    return v2

    .line 42
    :cond_2
    :goto_0
    iput v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->lastY:F

    return v2
.end method
