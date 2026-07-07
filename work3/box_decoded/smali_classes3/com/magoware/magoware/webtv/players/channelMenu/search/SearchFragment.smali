.class public Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;
.super Landroidx/leanback/app/SearchSupportFragment;
.source "SearchFragment.java"

# interfaces
.implements Landroidx/leanback/app/SearchSupportFragment$SearchResultProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment$ItemViewClickedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FINISH_ON_RECOGNIZER_CANCELED:Z = true

.field private static final REQUEST_SPEECH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SearchFragment"


# instance fields
.field private listRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private mQuery:Ljava/lang/String;

.field private mResultsFound:Z

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private mSearchLoaderId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroidx/leanback/app/SearchSupportFragment;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->mSearchLoaderId:I

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->mResultsFound:Z

    return-void
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "permission"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadQuery(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .line 130
    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->searchChannels(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 132
    new-instance v0, Lcom/magoware/magoware/webtv/players/channelMenu/ImageCardViewPresenterChannelMenu;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/players/channelMenu/ImageCardViewPresenterChannelMenu;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    const/4 v0, 0x0

    .line 135
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 136
    new-instance v2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-direct {v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;-><init>()V

    .line 137
    sget-object v3, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->GRID_SQUARE:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {v2, v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setType(Landroidx/leanback/supportleanbackshowcase/models/Card$Type;)V

    .line 138
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setTitle(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "channel_number"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setDuration(I)V

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "desccc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setDescription(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "icon_url"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setLocalImageResource(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    new-instance p1, Landroidx/leanback/widget/HeaderItem;

    const-string v0, "Search results"

    invoke-direct {p1, v0}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->clear()V

    .line 149
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v2, Landroidx/leanback/widget/ListRow;

    invoke-direct {v2, p1, v1}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getResultsAdapter()Landroidx/leanback/widget/ObjectAdapter;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-object v0
.end method

.method public hasResults()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->mResultsFound:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onCreate$0$SearchFragment()V
    .locals 2

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->getRecognizerIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
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

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->hasResults()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "SearchFragment"

    const-string p2, "Voice search canceled"

    .line 90
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b038e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 84
    invoke-virtual {p0, p3, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->setSearchQuery(Landroid/content/Intent;Z)V

    :cond_2
    :goto_0
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

    .line 55
    invoke-super {p0, p1}, Landroidx/leanback/app/SearchSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance p1, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v0, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v0}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    invoke-direct {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 58
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->setSearchResultProvider(Landroidx/leanback/app/SearchSupportFragment$SearchResultProvider;)V

    .line 59
    new-instance p1, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment$ItemViewClickedListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment$ItemViewClickedListener;-><init>(Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment$1;)V

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    const-string p1, "android.permission.RECORD_AUDIO"

    .line 61
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 66
    new-instance p1, Lcom/magoware/magoware/webtv/players/channelMenu/search/-$$Lambda$SearchFragment$eXuk9xkTG6hJEh__HAJ0wYivpxw;

    invoke-direct {p1, p0}, Lcom/magoware/magoware/webtv/players/channelMenu/search/-$$Lambda$SearchFragment$eXuk9xkTG6hJEh__HAJ0wYivpxw;-><init>(Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;)V

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->setSpeechRecognitionCallback(Landroidx/leanback/widget/SpeechRecognitionCallback;)V

    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newQuery"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->loadQuery(Ljava/lang/String;)V

    const/4 p1, 0x1

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

    const/4 p1, 0x1

    return p1
.end method
