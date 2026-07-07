.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;
.super Landroidx/leanback/app/RowsSupportFragment;
.source "RowsFragment.java"

# interfaces
.implements Landroidx/leanback/widget/BaseOnItemViewSelectedListener;
.implements Landroidx/leanback/widget/BaseOnItemViewClickedListener;


# static fields
.field private static final HALF_SECOND:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "RowsFragment"


# instance fields
.field private allVodListObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;",
            ">;"
        }
    .end annotation
.end field

.field private cardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field private carouselList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;",
            ">;"
        }
    .end annotation
.end field

.field private headerId:Ljava/lang/Integer;

.field private headerTitle:Ljava/lang/String;

.field private isAssetType:Z

.field private isPinProtected:Z

.field private itemViewHolderClicked:Landroidx/leanback/widget/Presenter$ViewHolder;

.field private mBackgroundManager:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;

.field private final mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private mainVodActivity:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

.field private vodItem:Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Landroidx/leanback/app/RowsSupportFragment;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->isPinProtected:Z

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->isAssetType:Z

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->vodItem:Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    .line 71
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/ShadowRowPresenterSelector;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/ShadowRowPresenterSelector;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 73
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 74
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 75
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    return-void
.end method

.method private bindVodMovieResponse()V
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->carouselList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->allVodListObject:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 174
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->isAssetType:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->allVodListObject:Ljava/util/ArrayList;

    sget-object v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$QjXdKnfTquzrDBUcNS-OZIJKf-s;->INSTANCE:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$QjXdKnfTquzrDBUcNS-OZIJKf-s;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 179
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->allVodListObject:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 180
    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    invoke-direct {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;-><init>()V

    .line 181
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->carouselList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->allVodListObject:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setCards(Ljava/util/List;)V

    .line 183
    invoke-virtual {v2, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setType(I)V

    .line 184
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v4, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->carouselList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->createCardRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Ljava/lang/String;)Landroidx/leanback/widget/Row;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createCardRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Ljava/lang/String;)Landroidx/leanback/widget/Row;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cardRow",
            "url"
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->isAssetType:Z

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;-><init>(Z)V

    .line 191
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 192
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->getCards()Ljava/util/List;

    move-result-object v0

    .line 193
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 194
    sget-object v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$O3KM5CzycaU_RxvJWKfaWN83gHo;->INSTANCE:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$O3KM5CzycaU_RxvJWKfaWN83gHo;

    invoke-interface {v0, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 196
    :cond_0
    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    const/4 v3, 0x1

    .line 197
    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setSeeMoreItem(Z)V

    .line 198
    invoke-virtual {v2, p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setCategoryURL(Ljava/lang/String;)V

    .line 199
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 v3, 0x0

    const/16 v4, 0x14

    if-lt p2, v4, :cond_1

    .line 200
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 201
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    invoke-virtual {v1, v3, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->addAll(ILjava/util/Collection;)V

    .line 205
    new-instance p2, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 206
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    invoke-direct {v0, p2, v1, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;)V

    return-object v0
.end method

.method private fetchRow(Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carousel"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodCategoriesObservable(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$NkyDxhHvAU3bWjMOH9n1lowlH3o;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$NkyDxhHvAU3bWjMOH9n1lowlH3o;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private intentVodDetails()V
    .locals 4

    .line 255
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->mainVodActivity:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    const-class v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->cardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Video"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->mainVodActivity:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->itemViewHolderClicked:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object v2, v2, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;

    .line 258
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->getPosterIV()Landroid/widget/ImageView;

    move-result-object v2

    const-string v3, "hero"

    .line 257
    invoke-static {v1, v2, v3}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->mainVodActivity:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    invoke-virtual {v2, v0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$bindVodMovieResponse$2(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;)I
    .locals 0

    .line 176
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getCarousel()Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->getOrder()I

    move-result p0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getCarousel()Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->getOrder()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$createCardRow$3(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)Z
    .locals 0

    .line 194
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadData()V
    .locals 8

    .line 113
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getVodMenuInformation()Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->allVodListObject:Ljava/util/ArrayList;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->carouselList:Ljava/util/List;

    .line 116
    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    .line 117
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->headerTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->vodItem:Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->vodItem:Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    if-eqz v0, :cond_5

    .line 123
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->isAssetType:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getAssetsCarousel()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getCarouselList()Ljava/util/List;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 124
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 125
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->isAvailable()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->carouselList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 130
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->carouselList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->carouselList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    .line 132
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$2naSmAMr1FlwUgGLZbCFuIr_tKw;

    invoke-direct {v3, p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$2naSmAMr1FlwUgGLZbCFuIr_tKw;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;)V

    const-wide/16 v4, 0x96

    add-int/lit8 v1, v1, 0x1

    int-to-long v6, v1

    mul-long v6, v6, v4

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_5
    return-void
.end method

.method private openVodItem()V
    .locals 4

    .line 235
    sget-object v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Card$VodType:[I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->cardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 245
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->cardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isAdult()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->cardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isPinProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->intentVodDetails()V

    goto :goto_1

    .line 246
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    .line 247
    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 237
    :cond_2
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;-><init>()V

    .line 238
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 239
    sget-object v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->ASSET_CARD:Ljava/lang/String;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->cardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 240
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 241
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->mainVodActivity:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "assetDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$fetchRow$1$RowsFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->getResponse_object()Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object p2, p2, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    .line 161
    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->setCategory(Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;)V

    .line 162
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->allVodListObject:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->carouselList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 166
    :goto_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->bindVodMovieResponse()V

    return-void
.end method

.method public synthetic lambda$loadData$0$RowsFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->fetchRow(Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 139
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, p3, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->loadData()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, p3, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->intentVodDetails()V

    :cond_1
    :goto_0
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

    .line 153
    invoke-super {p0, p1}, Landroidx/leanback/app/RowsSupportFragment;->onAttach(Landroid/content/Context;)V

    .line 154
    check-cast p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->mainVodActivity:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

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

    .line 84
    invoke-super {p0, p1}, Landroidx/leanback/app/RowsSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 88
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "header_id"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "header_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->headerId:Ljava/lang/Integer;

    .line 91
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->headerTitle:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "header_protected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->isPinProtected:Z

    .line 93
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "assets_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->isAssetType:Z

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->getMainFragmentAdapter()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->getMainFragmentAdapter()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->getFragmentHost()Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->getMainFragmentAdapter()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->getFragmentHost()Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;

    move-result-object p1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->getMainFragmentAdapter()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;->notifyDataReady(Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;)V

    .line 98
    :cond_1
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->isPinProtected:Z

    if-eqz p1, :cond_2

    .line 99
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->mainVodActivity:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    const-class v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->loadData()V

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->mBackgroundManager:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->mainVodActivity:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->isAssetType:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0803c5

    goto :goto_1

    :cond_3
    const v1, 0x7f0803c4

    :goto_1
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemViewHolder",
            "item",
            "rowViewHolder",
            "row"
        }
    .end annotation

    .line 223
    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->cardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 224
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->itemViewHolderClicked:Landroidx/leanback/widget/Presenter$ViewHolder;

    .line 225
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isSeeMoreItem()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->mainVodActivity:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    const-class p3, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/GridActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->cardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getCategoryURL()Ljava/lang/String;

    move-result-object p2

    const-string p3, "category_url"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->mainVodActivity:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->openVodItem()V

    :goto_0
    return-void
.end method

.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemViewHolder",
            "item",
            "rowViewHolder",
            "row"
        }
    .end annotation

    .line 211
    instance-of p1, p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    if-eqz p1, :cond_0

    .line 212
    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    :cond_0
    return-void
.end method

.method public setBackgroundManager(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mBackgroundManager"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->mBackgroundManager:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;

    return-void
.end method

.method public setExpand(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expand"
        }
    .end annotation

    const/4 p1, 0x1

    .line 109
    invoke-super {p0, p1}, Landroidx/leanback/app/RowsSupportFragment;->setExpand(Z)V

    return-void
.end method
