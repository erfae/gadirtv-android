.class public Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;
.super Landroidx/leanback/app/BrowseSupportFragment;
.source "ChannelMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;,
        Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$PageRowFragmentFactory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final OPACITY:I = 0x96

.field private static final TAG:Ljava/lang/String; = "ChannelMenuFragment"

.field public static category_id:I = 0x0

.field public static clicked_channel:I = -0x1


# instance fields
.field private final ALL_CATEGORIES:I

.field private category_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field public position:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->position:I

    .line 51
    iput v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->ALL_CATEGORIES:I

    return-void
.end method

.method private createRows()V
    .locals 5

    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 157
    new-instance v1, Landroidx/leanback/widget/HeaderItem;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 158
    new-instance v2, Landroidx/leanback/widget/PageRow;

    invoke-direct {v2, v1}, Landroidx/leanback/widget/PageRow;-><init>(Landroidx/leanback/widget/HeaderItem;)V

    int-to-long v3, v0

    .line 159
    invoke-virtual {v2, v3, v4}, Landroidx/leanback/widget/PageRow;->setId(J)V

    .line 160
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 161
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    sget v2, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_id:I

    if-ne v1, v2, :cond_0

    .line 162
    iput v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->position:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadData()V
    .locals 2

    .line 147
    new-instance v0, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v0}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    .line 149
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 150
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 151
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->createRows()V

    .line 152
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->startEntranceTransition()V

    return-void
.end method

.method private removeEmptyCategorie(Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelCategoryObject"
        }
    .end annotation

    .line 173
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isAdult"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private setupUi()V
    .locals 2

    .line 130
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->dd_MM_yyyy:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->setHeadersState(I)V

    .line 133
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->setHeadersTransitionOnBackEnabled(Z)V

    .line 136
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/players/channelMenu/-$$Lambda$ChannelMenuFragment$AvoCbs8YLYrUQig7uJutGSi6KCA;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/channelMenu/-$$Lambda$ChannelMenuFragment$AvoCbs8YLYrUQig7uJutGSi6KCA;-><init>(Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->prepareEntranceTransition()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActivityCreated$0$ChannelMenuFragment(Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 100
    invoke-virtual {p2}, Landroidx/leanback/widget/Row;->getId()J

    move-result-wide p1

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->setSelectedPosition(I)V

    .line 102
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->getMainFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->getMainFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$setupUi$1$ChannelMenuFragment(Landroid/view/View;)V
    .locals 2

    .line 138
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/players/channelMenu/search/ChannelMenuSearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 93
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->setHeadersState(I)V

    .line 97
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->getHeadersSupportFragment()Landroidx/leanback/app/HeadersSupportFragment;

    move-result-object p1

    iget v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->position:I

    invoke-virtual {p1, v0}, Landroidx/leanback/app/HeadersSupportFragment;->setSelectedPosition(I)V

    .line 99
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->getHeadersSupportFragment()Landroidx/leanback/app/HeadersSupportFragment;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/players/channelMenu/-$$Lambda$ChannelMenuFragment$j3WTtM9RZXx87rt6k_qYVs3nj7Y;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/channelMenu/-$$Lambda$ChannelMenuFragment$j3WTtM9RZXx87rt6k_qYVs3nj7Y;-><init>(Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;)V

    invoke-virtual {p1, v0}, Landroidx/leanback/app/HeadersSupportFragment;->setOnHeaderClickedListener(Landroidx/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;)V

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

    .line 122
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/BrowseSupportFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

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

    .line 57
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllCategoriesObjects()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 61
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    const/16 v2, 0x29a

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    if-ne v1, v2, :cond_3

    .line 65
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 74
    :cond_3
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    if-nez v1, :cond_4

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 78
    :cond_4
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->removeEmptyCategorie(Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 83
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "currentCategory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_id:I

    .line 84
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->setupUi()V

    .line 85
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->loadData()V

    .line 86
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroidx/leanback/app/BackgroundManager;->getInstance(Landroid/app/Activity;)Landroidx/leanback/app/BackgroundManager;

    move-result-object p1

    .line 87
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/leanback/app/BackgroundManager;->attach(Landroid/view/Window;)V

    .line 88
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->getMainFragmentRegistry()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    move-result-object v0

    const-class v1, Landroidx/leanback/widget/PageRow;

    new-instance v2, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$PageRowFragmentFactory;

    invoke-direct {v2, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$PageRowFragmentFactory;-><init>(Landroidx/leanback/app/BackgroundManager;)V

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->registerFragment(Ljava/lang/Class;Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    .line 110
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/BrowseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 113
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600fd

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1

    .line 116
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/BrowseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 168
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    return-void
.end method
