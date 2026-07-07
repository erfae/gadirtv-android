.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;
.super Landroidx/leanback/app/BrowseSupportFragment;
.source "PageAndListRowFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# static fields
.field private static final HALF_SECOND:J = 0x1f4L

.field private static final MILLIS_TO_EMPTY_CAROUSELS_LIST:I = 0x1b7740

.field private static final TAG:Ljava/lang/String; = "PageAndListRowFragment"

.field private static carouselListClearerHandler:Landroid/os/Handler;

.field private static carouselListClearerRunnable:Ljava/lang/Runnable;


# instance fields
.field private isAssetType:Z

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private mainVodActivity:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->carouselListClearerHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->carouselListClearerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->isAssetType:Z

    return-void
.end method

.method private addEmptyRow()V
    .locals 7

    .line 202
    new-instance v6, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;

    const-wide/16 v1, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 203
    new-instance v0, Landroidx/leanback/widget/PageRow;

    invoke-direct {v0, v6}, Landroidx/leanback/widget/PageRow;-><init>(Landroidx/leanback/widget/HeaderItem;)V

    .line 204
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140152

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private createVodRows(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodItemList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setVodInformation(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    .line 160
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    sget-object v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$uKhc0xmOqFcgEE_j8pSYUOOMKQI;->INSTANCE:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$uKhc0xmOqFcgEE_j8pSYUOOMKQI;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 162
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->addEmptyRow()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 165
    :goto_0
    iget-object v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 166
    iget-object v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    .line 169
    new-instance v9, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->isPinProtected()Z

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 170
    new-instance v2, Landroidx/leanback/widget/PageRow;

    invoke-direct {v2, v9}, Landroidx/leanback/widget/PageRow;-><init>(Landroidx/leanback/widget/HeaderItem;)V

    .line 171
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->mainVodActivity:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "vod_position"

    .line 179
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    const-string v2, "tvShow"

    .line 181
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 182
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->getTvShowPosition(Ljava/util/ArrayList;)I

    move-result v0

    .line 185
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result p1

    if-ge v0, p1, :cond_5

    const/4 p1, 0x1

    .line 186
    invoke-virtual {p0, v0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->setSelectedPosition(IZ)V

    :cond_5
    return-void
.end method

.method private fetchAssetsInformation()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getAssetsMenuObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$wkZPySpLIUEjsiLwQa5CknnN4wk;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$wkZPySpLIUEjsiLwQa5CknnN4wk;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private fetchVodInformation()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodMenuObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$h8YyCTH_wvEmbdFtpMofogfBxiE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$h8YyCTH_wvEmbdFtpMofogfBxiE;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getTvShowPosition(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 191
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 192
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    .line 193
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tv show"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tvshow"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private initCarouselListClearer()V
    .locals 4

    .line 210
    sget-object v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->carouselListClearerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->carouselListClearerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    sget-object v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->carouselListClearerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->carouselListClearerRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic lambda$createVodRows$4(Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;)I
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getOrder()I

    move-result p0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getOrder()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private loadData()V
    .locals 4

    .line 121
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v1}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 122
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 123
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 124
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$Lv_vhWuyJ9QVQYqwFI7r1e_17rw;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$Lv_vhWuyJ9QVQYqwFI7r1e_17rw;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setupUi()V
    .locals 1

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->setHeadersState(I)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->setHeadersTransitionOnBackEnabled(Z)V

    .line 114
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->isAssetType:Z

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$XCf3ReVs4AwPk8FOg6Avk3YpHMo;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$XCf3ReVs4AwPk8FOg6Avk3YpHMo;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->prepareEntranceTransition()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$fetchAssetsInformation$3$PageAndListRowFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->createVodRows(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$fetchVodInformation$2$PageAndListRowFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->createVodRows(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$loadData$1$PageAndListRowFragment()V
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->isAssetType:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->fetchAssetsInformation()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->fetchVodInformation()V

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->startEntranceTransition()V

    return-void
.end method

.method public synthetic lambda$setupUi$0$PageAndListRowFragment(Landroid/view/View;)V
    .locals 2

    .line 115
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 94
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onAttach(Landroid/content/Context;)V

    .line 95
    check-cast p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->mainVodActivity:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 68
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->mainVodActivity:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "assets_type"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->isAssetType:Z

    .line 75
    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 77
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->setupUi()V

    .line 78
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->loadData()V

    .line 79
    new-instance p1, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;-><init>(Landroid/app/Activity;)V

    .line 80
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->getMainFragmentRegistry()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    move-result-object v0

    const-class v1, Landroidx/leanback/widget/PageRow;

    new-instance v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageRowFragmentFactory;

    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->isAssetType:Z

    invoke-direct {v2, p1, v3}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageRowFragmentFactory;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;Z)V

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->registerFragment(Ljava/lang/Class;Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;)V

    .line 82
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->initCarouselListClearer()V

    return-void
.end method

.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "o",
            "viewHolder1",
            "row"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "viewHolder",
            "o",
            "viewHolder1",
            "row"
        }
    .end annotation

    .line 47
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method

.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "o",
            "viewHolder1",
            "row"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "viewHolder",
            "o",
            "viewHolder1",
            "row"
        }
    .end annotation

    .line 47
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 87
    invoke-super {p0, p1, p2}, Landroidx/leanback/app/BrowseSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
