.class public Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;
.super Landroidx/leanback/app/RowsSupportFragment;
.source "MainMenuLayersFragment2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2$OnSecondLevelItemSelected;
    }
.end annotation


# static fields
.field static alertDialog:Landroid/app/AlertDialog;

.field private static menu_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private first_parent_desc:Ljava/lang/String;

.field private forced_logout:Z

.field private mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

.field mCallback:Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2$OnSecondLevelItemSelected;

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroidx/leanback/app/RowsSupportFragment;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->forced_logout:Z

    return-void
.end method

.method private createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardRow"
        }
    .end annotation

    .line 325
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;-><init>(Landroid/content/Context;)V

    .line 326
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    .line 327
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->getCards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    .line 328
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 331
    :cond_0
    new-instance v0, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p1, v2}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setShadow(Z)V

    .line 333
    new-instance v2, Landroidx/leanback/supportleanbackshowcase/utils/CardListRow;

    invoke-direct {v2, v0, v1, p1}, Landroidx/leanback/supportleanbackshowcase/utils/CardListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;Landroidx/leanback/supportleanbackshowcase/models/CardRow;)V

    return-object v2
.end method

.method private createFirstLayer()V
    .locals 5

    .line 350
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;

    invoke-direct {v0}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;-><init>()V

    .line 352
    sget-object v1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->menu_list:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 354
    sget-object v1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->menu_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    .line 355
    new-instance v3, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-direct {v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;-><init>()V

    .line 356
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setTitle(Ljava/lang/String;)V

    .line 357
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->icon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setIcon(Ljava/lang/String;)V

    .line 358
    sget-object v4, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MENU:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setType(Landroidx/leanback/supportleanbackshowcase/models/Card$Type;)V

    .line 359
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->menucode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setId(Ljava/lang/String;)V

    .line 360
    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->menu_description:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setDescription(Ljava/lang/String;)V

    const-string v2, "main"

    .line 361
    invoke-virtual {v3, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setRate(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, v3}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setCard(Landroidx/leanback/supportleanbackshowcase/models/Card;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 364
    invoke-virtual {v0, v1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setShadow(Z)V

    .line 366
    iget-object v1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private createRows()V
    .locals 0

    .line 320
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->createFirstLayer()V

    return-void
.end method

.method private intentAccount()V
    .locals 4

    .line 264
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    const/high16 v1, 0x10000000

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 266
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private intentApps()V
    .locals 3

    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/deviceApps/AppsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private intentLiveTv()V
    .locals 3

    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 279
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 280
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    sget-object v1, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private intentNetworkTest()V
    .locals 3

    .line 286
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 287
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestMerlin;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private intentVod()V
    .locals 3

    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const/high16 v1, 0x14000000

    .line 299
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$showLogOutDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$showLogOutDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private loadData()V
    .locals 2

    .line 312
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v1}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 314
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 315
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->createRows()V

    return-void
.end method

.method private setupUi()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->setAllowEnterTransitionOverlap(Z)V

    .line 135
    new-instance v0, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment2$70HyYBGGpXhvOfQa9BAXIcrfu_k;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment2$70HyYBGGpXhvOfQa9BAXIcrfu_k;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    return-void
.end method

.method private showLogOutDialog()V
    .locals 7

    .line 372
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const v2, 0x7f1402e2

    const v3, 0x7f14049c

    const v4, 0x7f140078

    const/16 v5, 0x14

    if-le v0, v5, :cond_0

    .line 373
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f150002

    invoke-direct {v0, v5, v6}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;I)V

    .line 374
    invoke-virtual {p0, v4}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment2$DfoPiupbdgllKNSP-nPOqWVVw7M;

    invoke-direct {v4, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment2$DfoPiupbdgllKNSP-nPOqWVVw7M;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 383
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment2$mgC5JgeIPz-GtaSsiPkREIZf1O4;->INSTANCE:Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment2$mgC5JgeIPz-GtaSsiPkREIZf1O4;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 387
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->alertDialog:Landroid/app/AlertDialog;

    .line 389
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 391
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 392
    invoke-virtual {p0, v4}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 393
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment2$KmYozW9y2DpkOS3xT5A1b6MefPM;

    invoke-direct {v4, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment2$KmYozW9y2DpkOS3xT5A1b6MefPM;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 397
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment2$R5A2Ph3o-9M1UyVU2ESH5yA2-dk;->INSTANCE:Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment2$R5A2Ph3o-9M1UyVU2ESH5yA2-dk;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 401
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->alertDialog:Landroid/app/AlertDialog;

    .line 403
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$MainMenuLayersFragment2(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 99
    invoke-virtual {p3}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/leanback/supportleanbackshowcase/models/Card;

    if-eqz p1, :cond_0

    .line 102
    iget-object p2, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->mCallback:Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2$OnSecondLevelItemSelected;

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2$OnSecondLevelItemSelected;->onSecondLevelItemSelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setupUi$1$MainMenuLayersFragment2(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 5

    .line 136
    instance-of p3, p2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    if-nez p3, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    instance-of p1, p1, Landroidx/leanback/widget/ImageCardView;

    if-nez p1, :cond_1

    return-void

    .line 138
    :cond_1
    move-object p1, p2

    check-cast p1, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object p3

    sget-object p4, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MENU:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {p3, p4}, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 140
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getRate()Ljava/lang/String;

    move-result-object p3

    const-string p4, "main"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const/high16 p4, 0x10000000

    if-eqz p3, :cond_c

    .line 141
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 142
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->intentLiveTv()V

    goto/16 :goto_0

    .line 145
    :cond_2
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/16 v0, 0x14

    if-ne p3, v0, :cond_3

    .line 146
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->intentAccount()V

    goto/16 :goto_0

    .line 149
    :cond_3
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    .line 150
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->showLogOutDialog()V

    goto/16 :goto_0

    .line 153
    :cond_4
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_5

    .line 154
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->intentApps()V

    goto/16 :goto_0

    .line 157
    :cond_5
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/16 v0, 0xa

    if-ne p3, v0, :cond_6

    .line 158
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->intentNetworkTest()V

    goto/16 :goto_0

    .line 161
    :cond_6
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/16 v0, 0xb

    if-ne p3, v0, :cond_7

    .line 162
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->intentVod()V

    goto/16 :goto_0

    .line 163
    :cond_7
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/16 v0, 0xc

    if-ne p3, v0, :cond_8

    .line 164
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->intentApps()V

    goto/16 :goto_0

    .line 165
    :cond_8
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_9

    .line 167
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-virtual {p2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?username="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getUsername()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 168
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 169
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 174
    :cond_9
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_a

    sget-object p3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p3}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p3

    if-nez p3, :cond_b

    :cond_a
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p3, 0x8

    if-ne p1, p3, :cond_12

    .line 176
    :cond_b
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 177
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/magoware/magoware/webtv/webview/WebViewActivity;

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p3, "WEB_URL"

    .line 178
    check-cast p2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-virtual {p2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 186
    :cond_c
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Display"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const-string p3, "com.android.settings"

    const-string v0, "android.intent.category.LAUNCHER"

    const/4 v1, 0x0

    const-string v2, "android.intent.action.MAIN"

    if-eqz p2, :cond_d

    .line 188
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 189
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.android.settings.DisplaySettings"

    invoke-direct {p2, p3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 198
    :cond_d
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p2

    const-string v3, "Sounds"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 200
    :try_start_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.android.settings.SoundSettings.java"

    invoke-direct {p2, p3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 210
    :cond_e
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p2

    const-string v3, "Controllers & Bluetooth Devices"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 212
    :try_start_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    new-instance p2, Landroid/content/ComponentName;

    const-string p3, "com.android.settings.bluetooth"

    const-string v0, "com.android.settings.bluetooth.BluetoothSettings"

    invoke-direct {p2, p3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 222
    :cond_f
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p2

    const-string v3, "Preferences"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const-string v3, "com.android.settings.AccessibilitySettings"

    if-eqz p2, :cond_10

    .line 224
    :try_start_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, p3, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 234
    :cond_10
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p2

    const-string v4, "Device"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 236
    :try_start_6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 237
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.android.settings.DeviceInfoSettings"

    invoke-direct {p2, p3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 247
    :cond_11
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Accessibility"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 249
    :try_start_7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, p3, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_12
    :goto_0
    return-void
.end method

.method public synthetic lambda$showLogOutDialog$2$MainMenuLayersFragment2(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 377
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->logoutUserObservable(Landroid/content/Context;)V

    .line 378
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 p2, 0x0

    .line 379
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 380
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$showLogOutDialog$4$MainMenuLayersFragment2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 395
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->logoutUserObservable(Landroid/content/Context;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 110
    invoke-super {p0, p1}, Landroidx/leanback/app/RowsSupportFragment;->onAttach(Landroid/content/Context;)V

    .line 115
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2$OnSecondLevelItemSelected;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->mCallback:Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2$OnSecondLevelItemSelected;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 117
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnHeadlineSelectedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 79
    invoke-super {p0, p1}, Landroidx/leanback/app/RowsSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "parent_id"

    .line 83
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 86
    :goto_0
    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllMenuObjectsLayer(I)Ljava/util/ArrayList;

    move-result-object p1

    sput-object p1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->menu_list:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 89
    sget-object p1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->menu_list:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->menu_description:Ljava/lang/String;

    sput-object p1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayers;->lastDescLayer2:Ljava/lang/String;

    :cond_1
    const-string p1, "first description"

    .line 91
    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->first_parent_desc:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->setupUi()V

    .line 94
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroidx/leanback/app/BackgroundManager;->getInstance(Landroid/app/Activity;)Landroidx/leanback/app/BackgroundManager;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    .line 95
    sget-object p1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->menu_list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 96
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->loadData()V

    .line 98
    :cond_2
    new-instance p1, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment2$2J18quvpbl-xU8EDwMxoqNYk3SA;

    invoke-direct {p1, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayersFragment2$2J18quvpbl-xU8EDwMxoqNYk3SA;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;)V

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 105
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
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

    .line 125
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 128
    sget-object p2, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayersFragment2;->menu_list:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x8

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p1
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 344
    invoke-super {p0, p1}, Landroidx/leanback/app/RowsSupportFragment;->setSelectedPosition(I)V

    return-void
.end method

.method public setSelectedPosition(IZLandroidx/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "rowPosition",
            "smooth",
            "rowHolderTask"
        }
    .end annotation

    const/4 p2, 0x0

    .line 339
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->setSelectedPosition(IZLandroidx/leanback/widget/Presenter$ViewHolderTask;)V

    return-void
.end method
