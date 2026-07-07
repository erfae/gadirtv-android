.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;
.super Landroidx/leanback/app/DetailsSupportFragment;
.source "DetailFragment.java"

# interfaces
.implements Landroidx/leanback/widget/BaseOnItemViewClickedListener;
.implements Landroidx/leanback/widget/OnActionClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomRowHeaderPresenter;,
        Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomListRowPresenter;,
        Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsDescriptionPresenter;,
        Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter;
    }
.end annotation


# static fields
.field private static final ACTION_BUY:I = 0x3

.field private static final ACTION_CAST:I = 0x5

.field private static final ACTION_EPISODES:I = 0xa

.field private static final ACTION_PLAY:I = 0x8

.field private static final ACTION_RECOMMENDED:I = 0x6

.field private static final ACTION_RELATED:I = 0x7

.field private static final ACTION_RENT:I = 0x2

.field private static final ACTION_SEASONS:I = 0x9

.field private static final ACTION_VIDEOS:I = 0x4

.field private static final ACTION_WATCH_TRAILER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DetailFragment"


# instance fields
.field private final ALLOW_ADS:I

.field private final DEFAULT_INT_VALUE:I

.field private GET_ADS:Z

.field private actionIdsHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private actionsAdapter:Landroidx/leanback/widget/SparseArrayObjectAdapter;

.field private backDropPath:Ljava/lang/String;

.field private canPlayTrailer:Z

.field private cardToPlay:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field private castAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private final detailCarouselPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private detailRow:Landroidx/leanback/widget/DetailsOverviewRow;

.field private detailsPresenter:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

.field private episodesAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private final play360Video:Z

.field private recommendedAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private relatedMoviesAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private relatedTvShowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private seasonAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field public shouldAutomaticallyPlay:Z

.field private startAdActivity:Z

.field private vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field private vodId:I

.field private vodResumePosition:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 131
    invoke-direct {p0}, Landroidx/leanback/app/DetailsSupportFragment;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->play360Video:Z

    const/4 v1, 0x1

    .line 109
    iput v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->ALLOW_ADS:I

    .line 110
    iput v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->DEFAULT_INT_VALUE:I

    .line 111
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->shouldAutomaticallyPlay:Z

    .line 121
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->actionIdsHashMap:Ljava/util/HashMap;

    const/4 v2, -0x1

    .line 124
    iput v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodResumePosition:I

    const-string v2, ""

    .line 125
    iput-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->backDropPath:Ljava/lang/String;

    .line 126
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->canPlayTrailer:Z

    .line 127
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->GET_ADS:Z

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailCarouselPositions:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)Landroidx/leanback/app/BackgroundManager;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailsPresenter:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->notifyDetailsChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)Landroidx/leanback/widget/DetailsOverviewRow;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailRow:Landroidx/leanback/widget/DetailsOverviewRow;

    return-object p0
.end method

.method private buyMovie()V
    .locals 3

    .line 529
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/BuyMovieWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPaymentUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "payment_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    iget v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodId:I

    const-string v2, "movie_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x12

    .line 532
    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private customActionVisibility()V
    .locals 2

    .line 177
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GOTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->actionIdsHashMap:Ljava/util/HashMap;

    const-string v1, "thumbdown"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->actionIdsHashMap:Ljava/util/HashMap;

    const-string v1, "thumbup"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private displayMovieReaction()V
    .locals 9

    .line 661
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getReaction()I

    move-result v0

    const v1, 0x7f080337

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 662
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080087

    invoke-static {v0, v4, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v0

    .line 663
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v1

    goto :goto_0

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getReaction()I

    move-result v0

    const/4 v4, -0x1

    const v5, 0x7f080338

    if-ne v0, v4, :cond_1

    .line 665
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v5, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v0

    .line 666
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080086

    invoke-static {v1, v4, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v1

    goto :goto_0

    .line 668
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v5, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v0

    .line 669
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v1

    .line 672
    :goto_0
    new-instance v3, Landroidx/leanback/widget/SparseArrayObjectAdapter;

    invoke-direct {v3}, Landroidx/leanback/widget/SparseArrayObjectAdapter;-><init>()V

    iput-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->actionsAdapter:Landroidx/leanback/widget/SparseArrayObjectAdapter;

    .line 674
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getActions()Ljava/util/List;

    move-result-object v3

    .line 675
    iget-object v4, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object v4

    sget-object v5, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_EPISODE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v4, v5}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 676
    new-instance v4, Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;

    invoke-direct {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;-><init>()V

    const v5, 0x7f140332

    .line 677
    invoke-virtual {p0, v5}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;->setName(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0, v5}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;->setDescription(Ljava/lang/String;)V

    .line 679
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;

    .line 682
    iget-object v5, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->actionIdsHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 683
    iget-object v5, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->actionIdsHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_4

    .line 684
    iget-boolean v6, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->canPlayTrailer:Z

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    if-ne v5, v2, :cond_5

    .line 687
    iget-object v6, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object v6

    sget-object v7, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SERIES:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v6, v7}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    .line 690
    :cond_5
    new-instance v6, Landroidx/leanback/widget/Action;

    int-to-long v7, v5

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v8, v4}, Landroidx/leanback/widget/Action;-><init>(JLjava/lang/CharSequence;)V

    const/16 v4, 0xe

    const/16 v7, 0xd

    if-eq v5, v4, :cond_6

    if-ne v5, v7, :cond_8

    :cond_6
    const-string v4, ""

    .line 692
    invoke-virtual {v6, v4}, Landroidx/leanback/widget/Action;->setLabel1(Ljava/lang/CharSequence;)V

    if-ne v5, v7, :cond_7

    move-object v4, v0

    goto :goto_2

    :cond_7
    move-object v4, v1

    .line 693
    :goto_2
    invoke-virtual {v6, v4}, Landroidx/leanback/widget/Action;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 695
    :cond_8
    iget-object v4, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->actionsAdapter:Landroidx/leanback/widget/SparseArrayObjectAdapter;

    invoke-virtual {v4, v5, v6}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    goto :goto_1

    .line 698
    :cond_9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailRow:Landroidx/leanback/widget/DetailsOverviewRow;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->actionsAdapter:Landroidx/leanback/widget/SparseArrayObjectAdapter;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/DetailsOverviewRow;->setActionsAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    return-void
.end method

.method private getSettings()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getSettingsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$16Xm3n8qHjoAbuOnHN-KjUIOaAc;->INSTANCE:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$16Xm3n8qHjoAbuOnHN-KjUIOaAc;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static synthetic lambda$getSettings$2(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 200
    iget v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 201
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->GET_ADS:Ljava/lang/String;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->get_ads:I

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 202
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VAST_AD_URL:Ljava/lang/String;

    iget-object p0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object p0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->vast_ad_url:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$sortEpisodeList$5(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)I
    .locals 0

    .line 404
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getEpisodeNumber()I

    move-result p0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getEpisodeNumber()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private loadClickedMovieDetails(Landroidx/leanback/widget/Presenter$ViewHolder;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemViewHolder",
            "card"
        }
    .end annotation

    .line 504
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 505
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Video"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;

    .line 508
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieCardView;->getPosterIV()Landroid/widget/ImageView;

    move-result-object p1

    const-string v1, "hero"

    .line 506
    invoke-static {p2, p1, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 509
    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 510
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 511
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private loadEpisodeDetails(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "card"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowEpisodeDetail(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$bxUBkX3LW-JjwpIt_z6X6APSqW0;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$bxUBkX3LW-JjwpIt_z6X6APSqW0;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private loadMovieDetails()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodDetailsObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$f42RigEogKgGo_PPnRIMqJFs6ZQ;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$f42RigEogKgGo_PPnRIMqJFs6ZQ;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private loadRecommendations()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodId:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodRecommendationsObservable(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$ODrMzmCjCO8xmVFSbQpz-Cr-MLo;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$ODrMzmCjCO8xmVFSbQpz-Cr-MLo;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private loadRelatedMovies()V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodId:I

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getRelatedMoviesObservable(III)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$hurSBJEb94W1LZa9u-OnLdX_qDc;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$hurSBJEb94W1LZa9u-OnLdX_qDc;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private loadRelatedTvShow()V
    .locals 4

    .line 457
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodId:I

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getRelatedTvShowObservable(III)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$LCcJzWxMlcs7RHP0EIKOpTGlfK8;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$LCcJzWxMlcs7RHP0EIKOpTGlfK8;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private loadTvEpisodes(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seasonNumber"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodId:I

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowEpisodesObservable(II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$JrEAssz42TxSEsfwO1IUhcra3Eo;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$JrEAssz42TxSEsfwO1IUhcra3Eo;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private loadTvSeasons()V
    .locals 5

    .line 365
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->seasonAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->clear()V

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 367
    :goto_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvShowSeasons()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 368
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    const/4 v4, 0x1

    .line 369
    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setSeasonCard(Z)V

    .line 370
    iget-object v4, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvShowSeasons()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->getSeasonNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setSeasonNumber(I)V

    .line 371
    iget-object v4, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setPosterPath(Ljava/lang/String;)V

    .line 372
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->seasonAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v2, v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->addAll(ILjava/util/Collection;)V

    return-void
.end method

.method private notifyDetailsChanged()V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailRow:Landroidx/leanback/widget/DetailsOverviewRow;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 468
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->notifyArrayItemRangeChanged(II)V

    return-void
.end method

.method private playVideo(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodCard"
        }
    .end annotation

    .line 599
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 600
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getStreamTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;->VR:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 601
    :goto_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getStreamTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    move-result-object v2

    sget-object v4, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;->VIDEO360:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 605
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/vr/VRTest;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 606
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 610
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    iget v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodResumePosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const-string v3, "vod_position"

    .line 612
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    if-eqz v1, :cond_4

    const-string v1, "spherical_stereo_mode"

    const-string v2, "top_bottom"

    .line 614
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    :cond_4
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 617
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "movieJson"

    .line 618
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 622
    :cond_5
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    const v2, 0x7f140414

    .line 623
    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 624
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 627
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v1, "VOD"

    const-string v2, "2132018196"

    const-string v4, "exoplayer"

    const-string v5, "-1"

    const-string v6, "-1"

    invoke-static/range {v1 .. v6}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logVodErrors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private prepareBackgroundManager()V
    .locals 3

    .line 219
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/leanback/app/BackgroundManager;->getInstance(Landroid/app/Activity;)Landroidx/leanback/app/BackgroundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    .line 220
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/app/BackgroundManager;->attach(Landroid/view/Window;)V

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080107

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 224
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 225
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 226
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroidx/leanback/app/BackgroundManager;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private scrollToCarousel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailCarouselPositions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailCarouselPositions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setSelectedPosition(IZ)V

    :cond_0
    return-void
.end method

.method private setReaction(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reaction"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->setReaction(I)V

    .line 633
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodId:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->FILM:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->sendThumbReaction(IIZ)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$fPeM9bxnQwSYjPhg_8xuP2hShHU;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$fPeM9bxnQwSYjPhg_8xuP2hShHU;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 637
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    const/4 v1, 0x0

    if-le p1, v0, :cond_2

    .line 638
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getReaction()I

    move-result p1

    const v0, 0x7f080337

    if-ne p1, v3, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f080087

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 640
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 641
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getReaction()I

    move-result p1

    const/4 v1, -0x1

    const v2, 0x7f080338

    if-ne p1, v1, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 643
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080086

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 645
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 646
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 650
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->actionsAdapter:Landroidx/leanback/widget/SparseArrayObjectAdapter;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/Action;

    .line 651
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/Action;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 652
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->actionsAdapter:Landroidx/leanback/widget/SparseArrayObjectAdapter;

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/Action;

    .line 653
    invoke-virtual {v1, p1}, Landroidx/leanback/widget/Action;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 654
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->actionsAdapter:Landroidx/leanback/widget/SparseArrayObjectAdapter;

    invoke-virtual {p1, v2, v0}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    .line 655
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->actionsAdapter:Landroidx/leanback/widget/SparseArrayObjectAdapter;

    invoke-virtual {p1, v3, v1}, Landroidx/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    return-void
.end method

.method private setTokenUrl(Ljava/lang/String;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "tokenUrl",
            "movie",
            "shouldStartPlaying"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getStreamToken(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$SFVgyFYCNTMB3XexWsnbVluFPjU;

    invoke-direct {v0, p0, p2, p3}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$SFVgyFYCNTMB3XexWsnbVluFPjU;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Z)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private setUpCastListRow()V
    .locals 4

    .line 338
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/PersonPresenter;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/PersonPresenter;-><init>()V

    .line 339
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->castAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 340
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    const v1, 0x7f14008a

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 341
    new-instance v1, Landroidx/leanback/widget/ListRow;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->castAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    return-void
.end method

.method private setUpDetails()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getBackdropPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getBackdropPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->backDropPath:Ljava/lang/String;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->backDropPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->updateBackground(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setupAdapter()V

    .line 189
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setupDetailsOverviewRow()V

    .line 190
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 192
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SERIES:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setUpTvShowContent()V

    goto :goto_0

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setUpMovieContent()V

    :goto_0
    return-void
.end method

.method private setUpEpisodesListRow()V
    .locals 4

    .line 378
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodePresenter;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/TvShowEpisodePresenter;-><init>()V

    .line 379
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->episodesAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 380
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    const v1, 0x7f14016c

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 381
    new-instance v1, Landroidx/leanback/widget/ListRow;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->episodesAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 382
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailCarouselPositions:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->seasonAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvShowSeasons()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->getSeasonNumber()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->loadTvEpisodes(I)V

    :cond_0
    return-void
.end method

.method private setUpMovieContent()V
    .locals 0

    .line 213
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setUpCastListRow()V

    .line 214
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setUpRelatedListRow()V

    return-void
.end method

.method private setUpRecommendedListRow()V
    .locals 4

    .line 411
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;-><init>(Z)V

    .line 412
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->recommendedAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 413
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    const v1, 0x7f14035e

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 414
    new-instance v1, Landroidx/leanback/widget/ListRow;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->recommendedAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 415
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailCarouselPositions:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->loadRecommendations()V

    return-void
.end method

.method private setUpRelatedListRow()V
    .locals 4

    .line 345
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;-><init>(Z)V

    .line 346
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->relatedMoviesAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 347
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    const v1, 0x7f140362

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 348
    new-instance v1, Landroidx/leanback/widget/ListRow;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->relatedMoviesAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 349
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 350
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailCarouselPositions:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->loadRelatedMovies()V

    return-void
.end method

.method private setUpRelatedTvShows()V
    .locals 4

    .line 447
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;-><init>(Z)V

    .line 448
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->relatedTvShowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 449
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    const v1, 0x7f140362

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 450
    new-instance v1, Landroidx/leanback/widget/ListRow;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->relatedTvShowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 451
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailCarouselPositions:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->loadRelatedTvShow()V

    return-void
.end method

.method private setUpSeasonsListRow()V
    .locals 4

    .line 355
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MoviePresenter;-><init>(Z)V

    .line 356
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->seasonAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 357
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    const v1, 0x7f1403a4

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 358
    new-instance v1, Landroidx/leanback/widget/ListRow;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->seasonAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 359
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailCarouselPositions:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->loadTvSeasons()V

    return-void
.end method

.method private setUpTvShowContent()V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setUpSeasonsListRow()V

    .line 208
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setUpEpisodesListRow()V

    .line 209
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setUpRelatedTvShows()V

    return-void
.end method

.method private setupAdapter()V
    .locals 3

    .line 298
    new-instance v0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsDescriptionPresenter;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsDescriptionPresenter;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    new-instance v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter;

    invoke-direct {v2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsOverviewLogoPresenter;-><init>()V

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;-><init>(Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/DetailsOverviewLogoPresenter;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailsPresenter:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    const/4 v1, 0x0

    .line 300
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setInitialState(I)V

    .line 301
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailsPresenter:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    invoke-virtual {v0, p0}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setOnActionClickedListener(Landroidx/leanback/widget/OnActionClickedListener;)V

    .line 303
    new-instance v0, Landroidx/leanback/widget/ClassPresenterSelector;

    invoke-direct {v0}, Landroidx/leanback/widget/ClassPresenterSelector;-><init>()V

    .line 304
    const-class v1, Landroidx/leanback/widget/DetailsOverviewRow;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailsPresenter:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroidx/leanback/widget/Presenter;)Landroidx/leanback/widget/ClassPresenterSelector;

    .line 305
    const-class v1, Landroidx/leanback/widget/ListRow;

    new-instance v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomListRowPresenter;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomListRowPresenter;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroidx/leanback/widget/Presenter;)Landroidx/leanback/widget/ClassPresenterSelector;

    .line 306
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 307
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    return-void
.end method

.method private setupDetailsOverviewRow()V
    .locals 3

    .line 311
    new-instance v0, Landroidx/leanback/widget/DetailsOverviewRow;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v0, v1}, Landroidx/leanback/widget/DetailsOverviewRow;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailRow:Landroidx/leanback/widget/DetailsOverviewRow;

    .line 313
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const v1, 0x7f080107

    .line 314
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 315
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 317
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 319
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 320
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$2;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$2;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    .line 321
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 331
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->displayMovieReaction()V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailRow:Landroidx/leanback/widget/DetailsOverviewRow;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method private showVodPinDialog(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodType"
        }
    .end annotation

    return-void
.end method

.method private sortEpisodeList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unsortedList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation

    .line 404
    sget-object v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$3wLafmiiiP3FgX9O867L_snOmmc;->INSTANCE:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$3wLafmiiiP3FgX9O867L_snOmmc;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method private updateBackground(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 230
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 232
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$1;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    .line 233
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method


# virtual methods
.method public synthetic lambda$loadEpisodeDetails$9$DetailFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 516
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 518
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getTokenUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setTokenUrl(Ljava/lang/String;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Z)V

    goto :goto_0

    .line 521
    :cond_0
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->cardToPlay:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 522
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->playVideo(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$loadMovieDetails$3$DetailFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object v0

    .line 286
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 287
    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setVodType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;)V

    .line 288
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->getResumePosition()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodResumePosition:I

    .line 289
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setUpDetails()V

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$loadRecommendations$6$DetailFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 424
    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p1

    .line 425
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 428
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 429
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->recommendedAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->startEntranceTransition()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$loadRelatedMovies$7$DetailFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 438
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->relatedMoviesAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->clear()V

    .line 440
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->relatedMoviesAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->addAll(ILjava/util/Collection;)V

    .line 441
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->startEntranceTransition()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$loadRelatedTvShow$8$DetailFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->relatedTvShowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->clear()V

    .line 460
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->relatedTvShowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->addAll(ILjava/util/Collection;)V

    .line 461
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->startEntranceTransition()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$loadTvEpisodes$4$DetailFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->episodesAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->clear()V

    .line 394
    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->sortEpisodeList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->sortEpisodeList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 395
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->episodesAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->addAll(ILjava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$DetailFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 157
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SERIES:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setVodType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;)V

    .line 158
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setUpDetails()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreate$1$DetailFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 165
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setUpDetails()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setReaction$11$DetailFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;)V
    .locals 0

    .line 633
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->displayMovieReaction()V

    return-void
.end method

.method public synthetic lambda$setTokenUrl$10$DetailFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;ZLcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 582
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;->getExtraData()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->setUrl(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 584
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->cardToPlay:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 585
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->playVideo(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    :cond_0
    return-void
.end method

.method public onActionClicked(Landroidx/leanback/widget/Action;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 537
    invoke-virtual {p1}, Landroidx/leanback/widget/Action;->getId()J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 554
    :pswitch_0
    invoke-virtual {p1}, Landroidx/leanback/widget/Action;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0xd

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setReaction(I)V

    goto :goto_1

    :pswitch_1
    const/16 p1, 0xc

    .line 546
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->scrollToCarousel(I)V

    goto :goto_1

    .line 543
    :cond_1
    invoke-virtual {p1}, Landroidx/leanback/widget/Action;->getId()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->scrollToCarousel(I)V

    goto :goto_1

    .line 557
    :cond_2
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->canPlayTrailer:Z

    const v0, 0x7f140087

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTrailerUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 558
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTrailerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 559
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 561
    :try_start_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 563
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 567
    :cond_3
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 539
    :cond_4
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->buyMovie()V

    goto :goto_1

    .line 549
    :cond_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->cardToPlay:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 550
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->playVideo(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
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

    .line 273
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/DetailsSupportFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->loadMovieDetails()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 137
    invoke-super {p0, p1}, Landroidx/leanback/app/DetailsSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 140
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->prepareBackgroundManager()V

    .line 142
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/MagowareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->canUseYoutubeApi(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->canPlayTrailer:Z

    .line 143
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getSettings()V

    .line 144
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "vod_position"

    .line 145
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodResumePosition:I

    .line 148
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string v1, "Video"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 149
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodId:I

    .line 151
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->FILM:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->loadMovieDetails()V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SERIES:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 154
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodId:I

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowDetailsObservable(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$LfVrwEChSbss9xKrBNHI0ApqlQc;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$LfVrwEChSbss9xKrBNHI0ApqlQc;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 161
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_EPISODE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 162
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowEpisodeDetail(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$LOXwrAdwP0h3zbaPxaNNJ2-dl1c;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$LOXwrAdwP0h3zbaPxaNNJ2-dl1c;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 170
    :cond_3
    :goto_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Constants;->getActionIdsHashMap()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->actionIdsHashMap:Ljava/util/HashMap;

    .line 171
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->customActionVisibility()V

    .line 172
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->shared_preference:Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->GET_ADS:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->GET_ADS:Z

    if-eqz p1, :cond_5

    .line 173
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_2
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->startAdActivity:Z

    return-void
.end method

.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1
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

    .line 473
    instance-of p3, p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    if-eqz p3, :cond_7

    .line 474
    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 476
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isSeasonCard()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 477
    sget-object p3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SEASON:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {p2, p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setVodType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;)V

    .line 480
    :cond_0
    sget-object p3, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$3;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Card$VodType:[I

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object p4

    invoke-virtual {p4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    const/4 v0, 0x2

    if-eq p3, p4, :cond_4

    if-eq p3, v0, :cond_3

    const/4 p4, 0x3

    if-eq p3, p4, :cond_2

    const/4 p4, 0x4

    if-eq p3, p4, :cond_1

    goto :goto_1

    .line 497
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->loadClickedMovieDetails(Landroidx/leanback/widget/Presenter$ViewHolder;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    goto :goto_1

    .line 494
    :cond_2
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->loadEpisodeDetails(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    goto :goto_1

    .line 490
    :cond_3
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getSeasonNumber()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->loadTvEpisodes(I)V

    .line 491
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->detailCarouselPositions:Ljava/util/HashMap;

    const/16 p2, 0xb

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->setSelectedPosition(I)V

    goto :goto_1

    .line 482
    :cond_4
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isAdult()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isPinProtected()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_0

    .line 486
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->loadClickedMovieDetails(Landroidx/leanback/widget/Presenter$ViewHolder;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    goto :goto_1

    .line 483
    :cond_6
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    invoke-virtual {p0, p1, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 250
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/ads/MyAdsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    const-class v2, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->cardToPlay:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->playVideo(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->startAdActivity:Z

    .line 255
    :cond_0
    invoke-super {p0}, Landroidx/leanback/app/DetailsSupportFragment;->onResume()V

    .line 256
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->backDropPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->backDropPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->updateBackground(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Landroidx/leanback/app/BackgroundManager;->release()V

    .line 264
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->shouldAutomaticallyPlay:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->shouldAutomaticallyPlay:Z

    .line 268
    :cond_0
    invoke-super {p0}, Landroidx/leanback/app/DetailsSupportFragment;->onStop()V

    return-void
.end method
