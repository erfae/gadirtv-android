.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;
.super Landroidx/leanback/widget/Presenter;
.source "MoviePresenter.java"


# instance fields
.field private isAsset:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAsset"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;->isAsset:Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "item"
        }
    .end annotation

    .line 38
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;->isAsset:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/AssetsCardView;

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/AssetsCardView;->bind(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->bind(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 28
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;->isAsset:Z

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/AssetsCardView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/AssetsCardView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;-><init>(Landroid/content/Context;)V

    .line 33
    :goto_0
    new-instance p1, Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-direct {p1, v0}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewHolder"
        }
    .end annotation

    return-void
.end method

.method public onViewAttachedToWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Landroidx/leanback/widget/Presenter;->onViewAttachedToWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    .line 57
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;->isAsset:Z

    if-nez v0, :cond_0

    .line 58
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->refreshUi()V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 51
    invoke-super {p0, p1}, Landroidx/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method
