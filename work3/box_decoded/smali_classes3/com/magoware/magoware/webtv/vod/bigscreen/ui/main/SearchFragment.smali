.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;
.super Landroidx/leanback/app/SearchSupportFragment;
.source "SearchFragment.java"

# interfaces
.implements Landroidx/leanback/app/SearchSupportFragment$SearchResultProvider;
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# static fields
.field private static final NUM_ROWS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SearchFragment"


# instance fields
.field private imageCardView:Landroidx/leanback/widget/ImageCardView;

.field private isKeyboardShown:Z

.field private isVodMovie:Z

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private moviesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field private protectedMovie:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field private tvShowsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/leanback/app/SearchSupportFragment;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->isKeyboardShown:Z

    .line 56
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->isVodMovie:Z

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->moviesList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->tvShowsList:Ljava/util/List;

    return-void
.end method

.method private hideKeyboard(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const-string v0, "input_method"

    .line 203
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 204
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 208
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 209
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->isKeyboardShown:Z

    return-void
.end method

.method static synthetic lambda$onViewCreated$0()V
    .locals 0

    return-void
.end method

.method private openMovieDetails(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroidx/leanback/widget/ImageCardView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "card",
            "imageCardView"
        }
    .end annotation

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Video"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 197
    invoke-virtual {p2}, Landroidx/leanback/widget/ImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object p2

    const-string v1, "hero"

    .line 195
    invoke-static {p1, p2, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 199
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private runSearchQuery(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->clear()V

    const-string v0, "apiv3/vod/vod_list"

    const-string v1, "apiv3/tv_show/tv_show_list"

    .line 137
    invoke-virtual {p0, v0, v1, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->generateMovies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public concatOnAdapter(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "moviesList",
            "tvShowsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f140012

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 168
    :cond_2
    new-instance p2, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/CardPresenter;-><init>()V

    invoke-direct {p2, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 169
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-le v0, v1, :cond_3

    .line 170
    invoke-interface {p1, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->addAll(ILjava/util/Collection;)V

    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {p2, v2, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->addAll(ILjava/util/Collection;)V

    .line 174
    :goto_0
    new-instance p1, Landroidx/leanback/widget/HeaderItem;

    const-string v0, "Search results"

    invoke-direct {p1, v0}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroidx/leanback/widget/ListRow;

    invoke-direct {v1, p1, p2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public generateMovies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vodMoviesList",
            "vodTvShowsList",
            "query"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-virtual {v0, p1, p3, v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodSearchListObservable(Ljava/lang/String;Ljava/lang/String;II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$SearchFragment$UhTVDNq1Txt16PSyuea9ivWcPbU;

    invoke-direct {v0, p0, p2, p3}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$SearchFragment$UhTVDNq1Txt16PSyuea9ivWcPbU;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public generateSerials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vodTvShowsList",
            "query"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodSearchListObservable(Ljava/lang/String;Ljava/lang/String;II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$SearchFragment$5d8WaJ-bl2rRUwnIrRaT4WwTEDs;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$SearchFragment$5d8WaJ-bl2rRUwnIrRaT4WwTEDs;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public getResultsAdapter()Landroidx/leanback/widget/ObjectAdapter;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-object v0
.end method

.method public hideKeyboard()V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->hideKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method public isKeyboardOpen()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->isKeyboardShown:Z

    return v0
.end method

.method public synthetic lambda$generateMovies$4$SearchFragment(Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 142
    iget-object v0, p3, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->moviesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->moviesList:Ljava/util/List;

    iget-object p3, p3, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->generateSerials(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$generateSerials$5$SearchFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->tvShowsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->tvShowsList:Ljava/util/List;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->moviesList:Ljava/util/List;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->tvShowsList:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->concatOnAdapter(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onViewCreated$1$SearchFragment()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->isKeyboardShown:Z

    return-void
.end method

.method public synthetic lambda$onViewCreated$2$SearchFragment(Landroid/view/View;Z)V
    .locals 0

    .line 87
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->isKeyboardShown:Z

    return-void
.end method

.method public synthetic lambda$onViewCreated$3$SearchFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 98
    :goto_0
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->isVodMovie:Z

    return-void
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

    .line 125
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/SearchSupportFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->protectedMovie:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->imageCardView:Landroidx/leanback/widget/ImageCardView;

    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->openMovieDetails(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroidx/leanback/widget/ImageCardView;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 63
    invoke-super {p0, p1}, Landroidx/leanback/app/SearchSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance p1, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {p1}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ListRowPresenter;->setNumRows(I)V

    .line 66
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 68
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->setSearchResultProvider(Landroidx/leanback/app/SearchSupportFragment$SearchResultProvider;)V

    .line 69
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 70
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

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
            "itemViewHolder",
            "item",
            "rowViewHolder",
            "row"
        }
    .end annotation

    .line 180
    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 181
    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->protectedMovie:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 182
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast p1, Landroidx/leanback/widget/ImageCardView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->imageCardView:Landroidx/leanback/widget/ImageCardView;

    .line 183
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isAdult()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isPinProtected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->imageCardView:Landroidx/leanback/widget/ImageCardView;

    invoke-direct {p0, p2, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->openMovieDetails(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroidx/leanback/widget/ImageCardView;)V

    goto :goto_1

    .line 184
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p2, 0x2

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
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
            "itemViewHolder",
            "item",
            "rowViewHolder",
            "row"
        }
    .end annotation

    .line 47
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newQuery"
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->runSearchQuery(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->hideKeyboard(Landroid/app/Activity;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->runSearchQuery(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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

    .line 75
    invoke-super {p0, p1, p2}, Landroidx/leanback/app/SearchSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0b038b

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/SearchBar;

    .line 79
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isAmazonFireTv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$SearchFragment$vxMI_0P-voDJZ8BGG8beHF8N7iE;->INSTANCE:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$SearchFragment$vxMI_0P-voDJZ8BGG8beHF8N7iE;

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/SearchBar;->setPermissionListener(Landroidx/leanback/widget/SearchBar$SearchBarPermissionListener;)V

    :cond_0
    const p2, 0x7f0b0390

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/SearchEditText;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$SearchFragment$x91xJFnIRqdds7v8TLjJgtfERhk;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$SearchFragment$x91xJFnIRqdds7v8TLjJgtfERhk;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/SearchEditText;->setOnKeyboardDismissListener(Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;)V

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/SearchEditText;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$SearchFragment$6rJRrqMfzbVc0T4UHYleRbqdSi4;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$SearchFragment$6rJRrqMfzbVc0T4UHYleRbqdSi4;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/SearchEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GOTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    const p2, 0x7f0b038e

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_2
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GOTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const v0, 0x7f14039f

    .line 95
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const v0, 0x7f1403a2

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    .line 97
    new-instance p2, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$SearchFragment$Gl4zrY_p6Y3sEaaVy-ao2ecvj1g;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$SearchFragment$Gl4zrY_p6Y3sEaaVy-ao2ecvj1g;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;)V

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_4
    return-void
.end method

.method public startRecognition()V
    .locals 1

    .line 223
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isAmazonFireTv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-super {p0}, Landroidx/leanback/app/SearchSupportFragment;->startRecognition()V

    :cond_0
    return-void
.end method
