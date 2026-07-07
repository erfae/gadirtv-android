.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/ShadowRowPresenterSelector;
.super Landroidx/leanback/widget/PresenterSelector;
.source "ShadowRowPresenterSelector.java"


# instance fields
.field private mShadowDisabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

.field private mShadowEnabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroidx/leanback/widget/PresenterSelector;-><init>()V

    .line 31
    new-instance v0, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v0}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/ShadowRowPresenterSelector;->mShadowEnabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

    .line 32
    new-instance v0, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v0}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/ShadowRowPresenterSelector;->mShadowDisabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

    .line 35
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/ShadowRowPresenterSelector;->mShadowEnabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ListRowPresenter;->setNumRows(I)V

    .line 36
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/ShadowRowPresenterSelector;->mShadowDisabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ListRowPresenter;->setShadowEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 41
    instance-of v0, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/ShadowRowPresenterSelector;->mShadowDisabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

    return-object p1

    .line 42
    :cond_0
    check-cast p1, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    .line 43
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;->getCardRow()Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->useShadow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/ShadowRowPresenterSelector;->mShadowEnabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

    return-object p1

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/ShadowRowPresenterSelector;->mShadowDisabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

    return-object p1
.end method

.method public getPresenters()[Landroidx/leanback/widget/Presenter;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/leanback/widget/Presenter;

    .line 50
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/ShadowRowPresenterSelector;->mShadowDisabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/ShadowRowPresenterSelector;->mShadowEnabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
