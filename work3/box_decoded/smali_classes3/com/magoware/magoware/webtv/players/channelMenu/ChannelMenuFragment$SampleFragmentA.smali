.class public Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;
.super Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;
.source "ChannelMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SampleFragmentA"
.end annotation


# static fields
.field private static COLUMNS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SampleFragmentA"


# instance fields
.field private final ZOOM_FACTOR:I

.field private channel_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 200
    invoke-direct {p0}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;-><init>()V

    const/4 v0, 0x1

    .line 204
    iput v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->ZOOM_FACTOR:I

    return-void
.end method

.method private loadData()V
    .locals 3

    const/4 v0, 0x0

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->channel_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 256
    new-instance v1, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-direct {v1}, Landroidx/leanback/supportleanbackshowcase/models/Card;-><init>()V

    .line 257
    sget-object v2, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->GRID_SQUARE:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {v1, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setType(Landroidx/leanback/supportleanbackshowcase/models/Card$Type;)V

    .line 258
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->channel_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setTitle(Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->channel_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v1, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setDuration(I)V

    .line 260
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->channel_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setLocalImageResource(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v2, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupAdapter()V
    .locals 4

    .line 223
    new-instance v0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;-><init>(IZ)V

    .line 224
    sget v3, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->COLUMNS:I

    invoke-virtual {v0, v3}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuVerticalGridPresenter;->setNumberOfColumns(I)V

    .line 226
    new-instance v3, Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-direct {v3, v1, v2}, Landroidx/leanback/widget/VerticalGridPresenter;-><init>(IZ)V

    .line 227
    sget v1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->COLUMNS:I

    invoke-virtual {v3, v1}, Landroidx/leanback/widget/VerticalGridPresenter;->setNumberOfColumns(I)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->setGridPresenter(Landroidx/leanback/widget/VerticalGridPresenter;)V

    .line 230
    new-instance v0, Lcom/magoware/magoware/webtv/players/channelMenu/ImageCardViewPresenterChannelMenu;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/players/channelMenu/ImageCardViewPresenterChannelMenu;-><init>(Landroid/content/Context;)V

    .line 232
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 233
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 235
    new-instance v0, Lcom/magoware/magoware/webtv/players/channelMenu/-$$Lambda$ChannelMenuFragment$SampleFragmentA$LMNSsiOuQgJijwxcp-gqFEn1iXc;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/channelMenu/-$$Lambda$ChannelMenuFragment$SampleFragmentA$LMNSsiOuQgJijwxcp-gqFEn1iXc;-><init>(Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$setupAdapter$0$ChannelMenuFragment$SampleFragmentA(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 3

    .line 236
    check-cast p2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    .line 237
    invoke-virtual {p2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getDuration()I

    move-result p1

    sput p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->clicked_channel:I

    .line 239
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "coming_from_all_channels"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class p4, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-direct {p1, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    sget-object p3, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 242
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p3

    sget-object p4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->clicked_channel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p3

    sget-object p4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->startActivity(Landroid/content/Intent;)V

    .line 246
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "channel-category-update"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    sget p2, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_id:I

    const-string p3, "current-category"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 211
    invoke-super {p0, p1}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    sput p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->COLUMNS:I

    .line 214
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GOTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    sget p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->COLUMNS:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->COLUMNS:I

    .line 216
    :cond_0
    sget p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_id:I

    const-string v0, "isAdult"

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(Z)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_id:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(IZ)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->channel_list:Ljava/util/List;

    .line 217
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->setupAdapter()V

    .line 218
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->loadData()V

    .line 219
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->getMainFragmentAdapter()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->getFragmentHost()Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;

    move-result-object p1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;->getMainFragmentAdapter()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;->notifyDataReady(Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;)V

    return-void
.end method
