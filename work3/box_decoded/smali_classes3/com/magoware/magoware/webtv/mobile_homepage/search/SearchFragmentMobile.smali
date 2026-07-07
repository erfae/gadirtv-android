.class public Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;
.super Landroidx/fragment/app/Fragment;
.source "SearchFragmentMobile.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;
.implements Landroidx/appcompat/widget/SearchView$OnCloseListener;


# static fields
.field private static final RESULT_OK:I = -0x1

.field private static final TAG:Ljava/lang/String; = "VodType"


# instance fields
.field private isKeyboardShown:Z

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field noResultText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b04b8
    .end annotation
.end field

.field private objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0518
    .end annotation
.end field

.field private query:Ljava/lang/String;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b052f
    .end annotation
.end field

.field private searchAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

.field searchToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0581
    .end annotation
.end field

.field searchType:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

.field private searchView:Landroidx/appcompat/widget/SearchView;

.field tabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0613
    .end annotation
.end field

.field private viewType:I

.field private final vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 52
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->objects:Ljava/util/ArrayList;

    .line 64
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->TV_PROGRAM:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchType:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    const-string v0, ""

    .line 68
    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->query:Ljava/lang/String;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->isKeyboardShown:Z

    .line 70
    sget v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->VIEW_TYPE_PROGRAM:I

    iput v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->viewType:I

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->setProgressBarVisibilityUIThread(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->query:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchItems(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->objects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;)Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    return-object p0
.end method

.method private checkIfListEmpty()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->noResultText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->noResultText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->noResultText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getVodAndTvShows(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "query",
            "url"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    const/4 v1, 0x1

    const/16 v2, 0x1e

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodSearchListObservable(Ljava/lang/String;Ljava/lang/String;II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$A4w5iaYwbTwGvQhppLJ0Co5kHLM;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$A4w5iaYwbTwGvQhppLJ0Co5kHLM;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private hideKeyboard(Landroidx/fragment/app/FragmentActivity;)V
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

    .line 197
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 198
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 202
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 203
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->isKeyboardShown:Z

    return-void
.end method

.method private searchItems(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$3;->$SwitchMap$com$magoware$magoware$webtv$mobile_homepage$search$SearchType:[I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchType:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "apiv3/tv_show/tv_show_list"

    goto :goto_0

    :cond_1
    const-string v0, "apiv3/vod/vod_list"

    goto :goto_0

    :cond_2
    const-string v0, "/apiv3/epg_data/epg_data_list"

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchType:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    sget-object v2, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->TV_PROGRAM:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    if-ne v1, v2, :cond_3

    .line 232
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 233
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->notifyDataSetChanged()V

    .line 234
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getTvPrograms(Ljava/lang/String;)V

    goto :goto_1

    .line 236
    :cond_3
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 237
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getVodAndTvShows(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method private setProgressBarVisibilityUIThread(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$RHdejlNYGUpjLGy7FoFh-R0LG9c;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$RHdejlNYGUpjLGy7FoFh-R0LG9c;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public OnVodItemAdultListener()V
    .locals 3

    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    .line 279
    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public getTvPrograms(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "search"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getTvProgramsObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$YX3dnW4OFmMNRx76wCHJrTPVJGY;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$YX3dnW4OFmMNRx76wCHJrTPVJGY;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchView:Landroidx/appcompat/widget/SearchView;

    const v1, 0x7f1401ea

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchView:Landroidx/appcompat/widget/SearchView;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 182
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getImeOptions()I

    move-result v1

    or-int/lit8 v1, v1, 0x3

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    return-void
.end method

.method public synthetic lambda$getTvPrograms$2$SearchFragmentMobile(Ljava/util/List;)V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x4

    .line 287
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->setProgressBarVisibilityUIThread(I)V

    .line 288
    new-instance p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->objects:Ljava/util/ArrayList;

    sget v2, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->VIEW_TYPE_PROGRAM:I

    invoke-direct {p1, v0, v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    .line 289
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 290
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->checkIfListEmpty()V

    .line 291
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$getVodAndTvShows$1$SearchFragmentMobile(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    .line 245
    iget-object v0, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->objects:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x4

    .line 247
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->setProgressBarVisibilityUIThread(I)V

    .line 248
    new-instance p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->objects:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchType:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    sget-object v3, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->MOVIE:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    if-ne v2, v3, :cond_0

    sget v2, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->VIEW_TYPE_VOD:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->VIEW_TYPE_TV_SHOW:I

    :goto_0
    invoke-direct {p1, v0, v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    .line 249
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 250
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->checkIfListEmpty()V

    .line 251
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onCreateView$0$SearchFragmentMobile(Landroid/view/View;)V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$setProgressBarVisibilityUIThread$3$SearchFragmentMobile(I)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 141
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 142
    sget-object p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->TV_PROGRAM:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchType:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    .line 143
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->query:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchItems(Ljava/lang/String;)V

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

    .line 268
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->intentVodDetail(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public onClose()Z
    .locals 2

    const-string v0, ""

    .line 298
    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->query:Ljava/lang/String;

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->setProgressBarVisibilityUIThread(I)V

    .line 300
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->query:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchItems(Ljava/lang/String;)V

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 77
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 78
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "menu",
            "inflater"
        }
    .end annotation

    .line 148
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f0007

    .line 149
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0b0577

    .line 150
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 153
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "search"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/SearchManager;

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 155
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 156
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    .line 157
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 158
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    .line 159
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 160
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchView:Landroidx/appcompat/widget/SearchView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->query:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 164
    new-instance p2, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$2;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 175
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->initView()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0e00c9

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 85
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->setProgressBarVisibilityUIThread(I)V

    .line 86
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p2, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p3, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 88
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 89
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    const p3, 0x7f1401ea

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 91
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$xYBbUrWvIeMCfLxr_g2MoNmpsFc;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$xYBbUrWvIeMCfLxr_g2MoNmpsFc;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchToolbar:Landroidx/appcompat/widget/Toolbar;

    const p3, 0x7f08006d

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 94
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p3

    const v1, 0x7f14027d

    invoke-virtual {p3, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 95
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p3

    const v1, 0x7f14027b

    invoke-virtual {p3, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 96
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p3

    const v1, 0x7f14027e

    invoke-virtual {p3, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 97
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 99
    new-instance p2, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->objects:Ljava/util/ArrayList;

    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->viewType:I

    invoke-direct {p2, p3, v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    .line 100
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 101
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 102
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 103
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$1;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 135
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->notifyDataSetChanged()V

    return-object p1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newText"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->query:Ljava/lang/String;

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->query:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchItems(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->notifyDataSetChanged()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->query:Ljava/lang/String;

    .line 189
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchItems(Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 191
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchAdapter:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->notifyDataSetChanged()V

    .line 192
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->hideKeyboard(Landroidx/fragment/app/FragmentActivity;)V

    const/4 p1, 0x0

    return p1
.end method
