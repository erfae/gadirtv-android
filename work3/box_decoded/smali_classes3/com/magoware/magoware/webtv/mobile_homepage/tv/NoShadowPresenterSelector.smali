.class public Lcom/magoware/magoware/webtv/mobile_homepage/tv/NoShadowPresenterSelector;
.super Landroidx/leanback/widget/PresenterSelector;
.source "NoShadowPresenterSelector.java"


# instance fields
.field private mShadowDisabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Landroidx/leanback/widget/PresenterSelector;-><init>()V

    .line 9
    new-instance v0, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v0}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/NoShadowPresenterSelector;->mShadowDisabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ListRowPresenter;->setNumRows(I)V

    .line 13
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/NoShadowPresenterSelector;->mShadowDisabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ListRowPresenter;->setShadowEnabled(Z)V

    .line 14
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/NoShadowPresenterSelector;->mShadowDisabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ListRowPresenter;->setSelectEffectEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 26
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/NoShadowPresenterSelector;->mShadowDisabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

    return-object p1
.end method

.method public getPresenters()[Landroidx/leanback/widget/Presenter;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/leanback/widget/Presenter;

    .line 19
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/NoShadowPresenterSelector;->mShadowDisabledRowPresenter:Landroidx/leanback/widget/ListRowPresenter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
