.class public Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;
.super Landroidx/leanback/app/RowsSupportFragment;
.source "SmartTvMainFragment.java"


# static fields
.field private static ACCOUNT_REQUEST_CODE:I = 0x1

.field public static ScreenSize:Landroid/graphics/Point; = null

.field private static final TAG:Ljava/lang/String; = "SmartTvMainFragment "

.field private static channelCategoryObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private static lockStatic:Landroid/os/PowerManager$WakeLock;

.field private static menu_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObject;",
            ">;"
        }
    .end annotation
.end field

.field private static vodItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;"
        }
    .end annotation
.end field

.field private static wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# instance fields
.field private SHOW_CUSTOM_DIALOG_TAG:Ljava/lang/String;

.field application:Lcom/magoware/magoware/webtv/MagowareApplication;

.field fragment:Landroidx/fragment/app/DialogFragment;

.field private isTvChannelSet:Z

.field private isVodCategorySet:Z

.field private isYesTVMainMenuSet:Z

.field private mActivity:Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;

.field private mContext:Landroid/content/Context;

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private mainMenuPosition:I

.field private progressDialogMenuRefresh:Landroid/app/ProgressDialog;

.field private this_context:Landroidx/fragment/app/FragmentActivity;

.field private tvShowAdapter:Landroidx/leanback/widget/Row;

.field private tvShowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Landroidx/leanback/app/RowsSupportFragment;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    .line 118
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->isYesTVMainMenuSet:Z

    .line 119
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->isTvChannelSet:Z

    .line 121
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->isVodCategorySet:Z

    const-string v0, "show_custom_dialog_tag"

    .line 122
    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->SHOW_CUSTOM_DIALOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "cardRow"
        }
    .end annotation

    .line 637
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 644
    new-instance v0, Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/MainMenuCardPresenter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/MainMenuCardPresenter;-><init>(Landroid/content/Context;)V

    .line 645
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    .line 646
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

    .line 647
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 649
    :cond_0
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/utils/CardListRow;

    new-instance v2, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v1, p1}, Landroidx/leanback/supportleanbackshowcase/utils/CardListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;Landroidx/leanback/supportleanbackshowcase/models/CardRow;)V

    return-object v0

    .line 641
    :cond_1
    new-instance p1, Landroidx/leanback/widget/DividerRow;

    invoke-direct {p1}, Landroidx/leanback/widget/DividerRow;-><init>()V

    return-object p1

    .line 639
    :cond_2
    new-instance v0, Landroidx/leanback/widget/SectionRow;

    new-instance v1, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/SectionRow;-><init>(Landroidx/leanback/widget/HeaderItem;)V

    return-object v0
.end method

.method private createLiveTvCategories()V
    .locals 6

    .line 715
    sget-object v0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->channelCategoryObjects:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 717
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 718
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;

    invoke-direct {v0}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;-><init>()V

    const v1, 0x7f140244

    .line 719
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 721
    sget-object v1, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->channelCategoryObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 722
    sget-object v1, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->channelCategoryObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    .line 723
    new-instance v3, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-direct {v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;-><init>()V

    .line 724
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setTitle(Ljava/lang/String;)V

    .line 725
    iget v4, v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setDuration(I)V

    .line 726
    sget-object v4, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MENU:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setType(Landroidx/leanback/supportleanbackshowcase/models/Card$Type;)V

    .line 727
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->icon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setIcon(Ljava/lang/String;)V

    const-string v4, "live"

    .line 728
    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setRate(Ljava/lang/String;)V

    .line 730
    iget v4, v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    const/16 v5, 0x29a

    if-ne v4, v5, :cond_1

    const v4, 0x7f08017a

    .line 731
    invoke-static {v4}, Lcom/magoware/magoware/webtv/util/Utils;->getDrawableURL(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setIcon(Ljava/lang/String;)V

    .line 733
    :cond_1
    sget-object v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v4}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    if-eq v2, v5, :cond_0

    .line 734
    :cond_2
    invoke-virtual {v0, v3}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setCard(Landroidx/leanback/supportleanbackshowcase/models/Card;)V

    goto :goto_0

    .line 738
    :cond_3
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget v2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    .line 739
    iget v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    :cond_4
    return-void
.end method

.method private createLocalMenu()V
    .locals 4

    .line 366
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 368
    invoke-static {}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllMenuObjects()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->menu_list:Ljava/util/ArrayList;

    .line 369
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->MAIN_MENU_BACKGROUND_URL:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->getFilenameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/MagowareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->getFilenameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 372
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 377
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->menu_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 378
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    .line 379
    iget-object v2, v1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->icon:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 380
    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->icon:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v2, v3}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->getPermanentFile(Ljava/lang/String;ZLandroid/content/Context;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private createMainMenu()V
    .locals 5

    .line 654
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 659
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->menu_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 660
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 661
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;

    invoke-direct {v0}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;-><init>()V

    const v1, 0x7f14025f

    .line 662
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 664
    sget-object v1, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->menu_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    .line 665
    new-instance v3, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-direct {v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;-><init>()V

    .line 666
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setTitle(Ljava/lang/String;)V

    .line 667
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->icon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setIcon(Ljava/lang/String;)V

    .line 668
    sget-object v4, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MENU:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setType(Landroidx/leanback/supportleanbackshowcase/models/Card$Type;)V

    .line 669
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setId(Ljava/lang/String;)V

    .line 670
    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->url:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setDescription(Ljava/lang/String;)V

    const-string v2, "main"

    .line 671
    invoke-virtual {v3, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setRate(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v0, v3}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setCard(Landroidx/leanback/supportleanbackshowcase/models/Card;)V

    goto :goto_0

    .line 674
    :cond_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget v2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    .line 675
    iget v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    :cond_2
    return-void
.end method

.method private createVodCategories()V
    .locals 4

    .line 745
    sget-object v0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->vodItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 747
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 748
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;

    invoke-direct {v0}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;-><init>()V

    const v1, 0x7f140482

    .line 749
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 751
    sget-object v1, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->vodItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 752
    :goto_0
    sget-object v2, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->vodItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 753
    new-instance v2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-direct {v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;-><init>()V

    .line 754
    sget-object v3, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->vodItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setTitle(Ljava/lang/String;)V

    .line 755
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setId(Ljava/lang/String;)V

    .line 756
    sget-object v3, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MENU:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {v2, v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setType(Landroidx/leanback/supportleanbackshowcase/models/Card$Type;)V

    .line 757
    sget-object v3, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->vodItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getVodIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setIcon(Ljava/lang/String;)V

    const-string v3, "vod"

    .line 758
    invoke-virtual {v2, v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setRate(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v0, v2}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setCard(Landroidx/leanback/supportleanbackshowcase/models/Card;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 762
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget v2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    .line 763
    iget v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    .line 766
    :cond_1
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getVodTvShows()V

    :cond_2
    return-void
.end method

.method private disableWIFISleep()V
    .locals 3

    .line 356
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sleep_policy"

    const/4 v2, 0x2

    .line 357
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getDashboardSettings()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getSettingsWebRequestsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$N2eVwIVShc_XAq7Kx1KQr1XP7gA;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$N2eVwIVShc_XAq7Kx1KQr1XP7gA;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getDeviceMenu()V
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$xRAOgRDslC6mL6cVf9B7JC9ff90;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$xRAOgRDslC6mL6cVf9B7JC9ff90;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 400
    iget-object v2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getDeviceMenuObservable()Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$vTZ3PZB_-rSwR7zv0ov4B_cdo6o;

    invoke-direct {v3, p0, v0, v1}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$vTZ3PZB_-rSwR7zv0ov4B_cdo6o;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;J)V

    invoke-virtual {v2, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getPallyconToken()V
    .locals 5

    .line 922
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 924
    sget-wide v2, Lcom/magoware/magoware/webtv/global/Global;->updatedTok:J

    .line 925
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 926
    sget-object v2, Lcom/magoware/magoware/webtv/global/Global;->pallyTok:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getPallyTokenObservable()V

    :cond_1
    return-void
.end method

.method private getTvChannels()V
    .locals 2

    .line 772
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getLiveTvChannelsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$sPv1V8hXChjjEaaZfIoD_4t_GeQ;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$sPv1V8hXChjjEaaZfIoD_4t_GeQ;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getVodCategories()V
    .locals 2

    .line 810
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->DMCENTER:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodMenuObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$Cx5mszbfFbrOo7dPbCcqzdQ689M;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$Cx5mszbfFbrOo7dPbCcqzdQ689M;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getVodTvShows()V
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$aAriO2424k7gej3WtimQ_jNB0Ro;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$aAriO2424k7gej3WtimQ_jNB0Ro;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getVodTvShowsEpisodes(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tvShowId",
            "seasonNumber",
            "position"
        }
    .end annotation

    .line 894
    iget-object p3, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p3, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowEpisodesObservable(II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$7B7g0GJYNNnZsln_Zoq6-UWxgnY;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$7B7g0GJYNNnZsln_Zoq6-UWxgnY;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getVodTvShowsSeasons(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 865
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;

    invoke-direct {v0}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;-><init>()V

    .line 866
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1403a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 868
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->tvShowList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTvShowSeasons()Ljava/util/ArrayList;

    move-result-object v1

    .line 869
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 871
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 872
    new-instance v4, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-direct {v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;-><init>()V

    .line 873
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setTitle(Ljava/lang/String;)V

    .line 874
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->getSeasonNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setId(Ljava/lang/String;)V

    .line 875
    sget-object v5, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MOVIE:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {v4, v5}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setType(Landroidx/leanback/supportleanbackshowcase/models/Card$Type;)V

    .line 876
    iget-object v5, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->tvShowList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setIcon(Ljava/lang/String;)V

    .line 877
    iget-object v5, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->tvShowList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setExtraText(Ljava/lang/String;)V

    const-string v5, "vodSeasons"

    .line 878
    invoke-virtual {v4, v5}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setRate(Ljava/lang/String;)V

    .line 880
    invoke-virtual {v0, v4}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setCard(Landroidx/leanback/supportleanbackshowcase/models/Card;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 882
    :cond_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v3}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v3

    iget v4, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    add-int/lit8 v5, v4, 0x1

    if-ne v3, v5, :cond_1

    .line 883
    iget-object v3, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 885
    :cond_1
    iget-object v3, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    .line 887
    :goto_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->tvShowList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->getSeasonNumber()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getVodTvShowsEpisodes(III)V

    goto :goto_2

    .line 889
    :cond_2
    iget p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->yesNetMainMenu(I)V

    :goto_2
    return-void
.end method

.method private intentVod()V
    .locals 3

    .line 991
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 992
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 995
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const/high16 v1, 0x14000000

    .line 997
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 998
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$setupVodCategories$11(Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;)I
    .locals 0

    .line 834
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getOrder()I

    move-result p0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getOrder()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private loadData()V
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->clear()V

    const/4 v0, 0x0

    .line 628
    iput v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    .line 630
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->createMainMenu()V

    .line 632
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getTvChannels()V

    .line 633
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getVodCategories()V

    return-void
.end method

.method private noSubscriptionDialog()V
    .locals 4

    .line 459
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 460
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SUBSCRIPTION_ENDED_MESSAGE:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

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

    .line 608
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 610
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 611
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "movieJson"

    .line 613
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 617
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f140414

    .line 618
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 622
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v1, "VOD"

    const-string v2, "2132018196"

    const-string v4, "exoplayer"

    const-string v5, "-1"

    const-string v6, "-1"

    invoke-static/range {v1 .. v6}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logVodErrors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private removeDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alertDialog"
        }
    .end annotation

    .line 988
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private setMenuBackgroundImage()V
    .locals 6

    .line 934
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 935
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0803c5

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const v0, 0x7f0803c5

    goto :goto_0

    :cond_0
    const v0, 0x7f0803c6

    .line 941
    :goto_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->MAIN_MENU_BACKGROUND_URL:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "main_menu_background"

    invoke-static {v3, v4}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 943
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->MAIN_MENU_BACKGROUND_URL:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 945
    new-instance v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 946
    invoke-virtual {v3, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/RequestOptions;

    .line 947
    invoke-virtual {v3, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 949
    iget-object v3, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 950
    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 951
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v2, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment$1;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;Landroid/view/ViewGroup;)V

    .line 952
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 958
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->MAIN_MENU_BACKGROUND_URL:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 960
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setupTvCategories(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categories"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;)V"
        }
    .end annotation

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->channelCategoryObjects:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 803
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 804
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->pin_protected:Z

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->isAdult()Z

    move-result v1

    if-nez v1, :cond_0

    .line 805
    sget-object v1, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->channelCategoryObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupUi()V
    .locals 1

    .line 465
    new-instance v0, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$xUQhd8ONR5h8lyCCAKhzDHGQRwg;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$xUQhd8ONR5h8lyCCAKhzDHGQRwg;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    return-void
.end method

.method private setupVodCategories(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;)V"
        }
    .end annotation

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->vodItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 830
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 831
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->isAdult()Z

    move-result v1

    if-nez v1, :cond_0

    .line 832
    sget-object v1, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->vodItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 834
    :cond_1
    sget-object p1, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->vodItems:Ljava/util/List;

    sget-object v0, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$MHIvdcym71i0jgOD34OG3Wu_MIk;->INSTANCE:Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$MHIvdcym71i0jgOD34OG3Wu_MIk;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private showLogOutDialog()V
    .locals 4

    .line 966
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 967
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0074

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b065f

    .line 969
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f140078

    .line 970
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0b054b

    .line 972
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f140258

    .line 973
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 974
    new-instance v3, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$n6o5pHyRfRZV-Bn4Vs_Z5CEdEPk;

    invoke-direct {v3, p0}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$n6o5pHyRfRZV-Bn4Vs_Z5CEdEPk;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b039a

    .line 976
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f140361

    .line 977
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 979
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 980
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 982
    new-instance v1, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$hlM7nFz_5uE4uKuJwi2oaxHpu78;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$hlM7nFz_5uE4uKuJwi2oaxHpu78;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synchronizeCategories()V
    .locals 1

    .line 706
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->isTvChannelSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->isVodCategorySet:Z

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->DMCENTER:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 707
    :cond_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->createLiveTvCategories()V

    .line 708
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->createVodCategories()V

    const/4 v0, 0x0

    .line 709
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->isVodCategorySet:Z

    .line 710
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->isTvChannelSet:Z

    :cond_2
    return-void
.end method

.method private yesNetMainMenu(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainMenuPosition"
        }
    .end annotation

    .line 681
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->isYesTVMainMenuSet:Z

    if-nez v0, :cond_2

    .line 682
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;

    invoke-direct {v0}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;-><init>()V

    const v1, 0x7f14025f

    .line 684
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 685
    sget-object v1, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->menu_list:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 686
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 687
    sget-object v1, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->menu_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    .line 688
    new-instance v3, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-direct {v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;-><init>()V

    .line 689
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setTitle(Ljava/lang/String;)V

    .line 690
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->icon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setIcon(Ljava/lang/String;)V

    .line 691
    sget-object v4, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MENU:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setType(Landroidx/leanback/supportleanbackshowcase/models/Card$Type;)V

    .line 692
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setId(Ljava/lang/String;)V

    .line 693
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setDescription(Ljava/lang/String;)V

    const-string v4, "main"

    .line 694
    invoke-virtual {v3, v4}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setRate(Ljava/lang/String;)V

    .line 695
    iget-object v4, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->menucode:Ljava/lang/String;

    const-string v4, "11"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 696
    invoke-virtual {v0, v3}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setCard(Landroidx/leanback/supportleanbackshowcase/models/Card;)V

    goto :goto_0

    .line 698
    :cond_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 699
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->isYesTVMainMenuSet:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic lambda$getDashboardSettings$0$SmartTvMainFragment(Ljava/lang/String;)V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$getDashboardSettings$1$SmartTvMainFragment()V
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0803c5

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method public synthetic lambda$getDashboardSettings$2$SmartTvMainFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    .line 175
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_3

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->auto_timezone:Z

    sput-boolean v1, Lcom/magoware/magoware/webtv/global/Global;->auto_timezone:Z

    .line 178
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->timezone:I

    sput v1, Lcom/magoware/magoware/webtv/global/Global;->time_zone:I

    .line 179
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->record_count:I

    sput v1, Lcom/magoware/magoware/webtv/global/Global;->pages_of_movies:I

    .line 180
    iget-wide v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->timestamp:J

    sput-wide v3, Lcom/magoware/magoware/webtv/global/Global;->server_timestamp:J

    .line 181
    iget-wide v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->timestamp:J

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/global/Global;->setTokenTimestamp(J)V

    .line 182
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->daysleft:I

    .line 183
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->DAYSLEFT:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 184
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYER:Ljava/lang/String;

    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->player:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->pin:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SHOWADULT:Ljava/lang/String;

    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-boolean v5, v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->showadult:Z

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Z)V

    .line 187
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->MAIN_MENU_BACKGROUND_URL:Ljava/lang/String;

    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->background_url:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    iget-object v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->portrait_background_url:Ljava/lang/String;

    const-string v5, "main_menu_portrait_background_url"

    invoke-virtual {v3, v5, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ACTIVITY_TIMEOUT:Ljava/lang/String;

    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v5, v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->activity_timeout:I

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 190
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->CHANNEL_LOG_TIME:Ljava/lang/String;

    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v5, v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->channel_log_time:I

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 191
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SUBSCRIPTION_ENDED_MESSAGE:Ljava/lang/String;

    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->days_left_message:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->AVAILABLE_UPGRADE:Ljava/lang/String;

    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-boolean v5, v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->available_upgrade:Z

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Z)V

    .line 193
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOGO_URL:Ljava/lang/String;

    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->logo_url:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VOD_BACKGROUND_URL:Ljava/lang/String;

    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->vod_background_url:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOG_EVENT_INTERVAL:Ljava/lang/String;

    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v5, v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->log_event_interval:I

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 196
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->GET_ADS:Ljava/lang/String;

    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v5, v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->get_ads:I

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 197
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VAST_AD_URL:Ljava/lang/String;

    iget-object v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->vast_ad_url:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ONLINE_PAYMENT_URL:Ljava/lang/String;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->online_payment_url:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    if-gt v1, p1, :cond_1

    if-nez v1, :cond_0

    .line 201
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v0, [Ljava/lang/Object;

    const v3, 0x7f14041d

    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s"

    invoke-static {p1, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 202
    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p1, p1, [Ljava/lang/Object;

    const v4, 0x7f140418

    invoke-virtual {p0, v4}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v1, 0x2

    const v2, 0x7f14010f

    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "%s %d %s"

    invoke-static {v3, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 203
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$eJhodr5gnjiEm6vphbyWd18EnB0;

    invoke-direct {v2, p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$eJhodr5gnjiEm6vphbyWd18EnB0;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 211
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->AVAILABLE_UPGRADE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 212
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->getUpgradeDetails(Landroid/content/Context;)V

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->setMenuBackgroundImage()V

    goto :goto_1

    .line 216
    :cond_3
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    sget v1, Lcom/magoware/magoware/webtv/util/Utils;->RESPONSE_CODE_LOGOUT:I

    if-ne v0, v1, :cond_4

    const-string p1, "0"

    .line 217
    sput-object p1, Lcom/magoware/magoware/webtv/global/Global;->settingsEtagAtMenu:Ljava/lang/String;

    .line 218
    sput-object p1, Lcom/magoware/magoware/webtv/global/Global;->mainMenuEtag:Ljava/lang/String;

    .line 219
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 220
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const-class v1, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 222
    :cond_4
    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v0, 0x2c0

    if-ne p1, v0, :cond_6

    .line 223
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->logoutUserObservable(Landroid/content/Context;)V

    goto :goto_1

    .line 227
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$-KUfwDL6-gwmjzX1XnJjhslS8Ck;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$-KUfwDL6-gwmjzX1XnJjhslS8Ck;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 234
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getDeviceMenu()V

    goto :goto_2

    .line 236
    :cond_7
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f1402d8

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method public synthetic lambda$getDeviceMenu$3$SmartTvMainFragment()V
    .locals 2

    .line 388
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    .line 390
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    const v1, 0x7f14013d

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 393
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 394
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$getDeviceMenu$4$SmartTvMainFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 444
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getDeviceMenu()V

    return-void
.end method

.method public synthetic lambda$getDeviceMenu$5$SmartTvMainFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 446
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->createLocalMenu()V

    return-void
.end method

.method public synthetic lambda$getDeviceMenu$6$SmartTvMainFragment(JLcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    if-eqz p3, :cond_6

    .line 402
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 403
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache()Z

    move-result v0

    const/16 v1, 0x12c

    if-eqz v0, :cond_0

    .line 410
    iget-object p1, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    sput-object p1, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->menu_list:Ljava/util/ArrayList;

    .line 411
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->loadData()V

    goto :goto_2

    .line 412
    :cond_0
    iget v0, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-ge v0, v1, :cond_3

    iget-object v0, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 413
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 414
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 416
    iget-object v0, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    .line 417
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 419
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 421
    invoke-static {p1, p2, v2, v3}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logMainMenuLoadingTime(JJ)V

    .line 423
    iget-object p1, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    sput-object p1, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->menu_list:Ljava/util/ArrayList;

    .line 425
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    .line 426
    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->icon:Ljava/lang/String;

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p2, v0, v2}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->getPermanentFile1(Ljava/lang/String;ZLandroid/content/Context;)V

    goto :goto_1

    .line 429
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->loadData()V

    goto :goto_2

    .line 431
    :cond_3
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getDeviceMenu()V

    .line 434
    :goto_2
    iget p1, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-le p1, v1, :cond_5

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache()Z

    move-result p1

    if-nez p1, :cond_5

    .line 435
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 436
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const-class p3, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 440
    :cond_4
    new-instance p1, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, p2}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    const p2, 0x7f14013c

    .line 441
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    .line 442
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f14037d

    .line 443
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$tNt9uV0PiwNO5I2RhJJTU1cipBs;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$tNt9uV0PiwNO5I2RhJJTU1cipBs;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f140180

    .line 445
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$-CmhT6WrHOD4wmtnJY6iZSacwp8;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$-CmhT6WrHOD4wmtnJY6iZSacwp8;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 447
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 450
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 451
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    .line 452
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    :cond_6
    return-void
.end method

.method public synthetic lambda$getTvChannels$9$SmartTvMainFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 774
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 775
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 776
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 777
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    .line 778
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 780
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    .line 782
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->setupTvCategories(Ljava/util/ArrayList;)V

    .line 784
    new-instance p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;-><init>()V

    const v0, 0x7f140068

    .line 785
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 786
    iput v0, p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    .line 787
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_1

    .line 788
    :cond_1
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 789
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->setupTvCategories(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 791
    :cond_2
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    .line 794
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->isTvChannelSet:Z

    .line 795
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->synchronizeCategories()V

    :cond_3
    return-void
.end method

.method public synthetic lambda$getVodCategories$10$SmartTvMainFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 815
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->getResponse_object()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->setupVodCategories(Ljava/util/List;)V

    goto :goto_0

    .line 817
    :cond_0
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 818
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->getResponse_object()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->setupVodCategories(Ljava/util/List;)V

    goto :goto_0

    .line 820
    :cond_1
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    .line 822
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->isVodCategorySet:Z

    .line 823
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->synchronizeCategories()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$getVodTvShows$12$SmartTvMainFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 3

    .line 839
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;

    invoke-direct {v0}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;-><init>()V

    if-eqz p1, :cond_1

    .line 840
    iget-object v1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 841
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140459

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 842
    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->tvShowList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 845
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->tvShowList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 847
    new-instance v1, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-direct {v1}, Landroidx/leanback/supportleanbackshowcase/models/Card;-><init>()V

    .line 848
    iget-object v2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->tvShowList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setTitle(Ljava/lang/String;)V

    .line 849
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setId(Ljava/lang/String;)V

    .line 850
    sget-object v2, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MOVIE:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {v1, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setType(Landroidx/leanback/supportleanbackshowcase/models/Card$Type;)V

    .line 851
    iget-object v2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->tvShowList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setIcon(Ljava/lang/String;)V

    const-string v2, "vodTvShow"

    .line 852
    invoke-virtual {v1, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setRate(Ljava/lang/String;)V

    .line 853
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setExtraText(Ljava/lang/String;)V

    .line 854
    invoke-virtual {v0, v1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setCard(Landroidx/leanback/supportleanbackshowcase/models/Card;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 856
    :cond_0
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->tvShowAdapter:Landroidx/leanback/widget/Row;

    .line 857
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    .line 858
    iget p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    .line 860
    :cond_1
    iget p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->yesNetMainMenu(I)V

    return-void
.end method

.method public synthetic lambda$getVodTvShowsEpisodes$13$SmartTvMainFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V
    .locals 4

    .line 895
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/models/CardRow;

    invoke-direct {v0}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;-><init>()V

    if-eqz p1, :cond_2

    .line 896
    iget-object v1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 897
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 900
    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->getMoviesList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 901
    new-instance v2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-direct {v2}, Landroidx/leanback/supportleanbackshowcase/models/Card;-><init>()V

    .line 902
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setTitle(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setId(Ljava/lang/String;)V

    .line 904
    sget-object v3, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MOVIE:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {v2, v3}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setType(Landroidx/leanback/supportleanbackshowcase/models/Card$Type;)V

    .line 905
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setIcon(Ljava/lang/String;)V

    const-string v1, "vodEpisodes"

    .line 906
    invoke-virtual {v2, v1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setRate(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v0, v2}, Landroidx/leanback/supportleanbackshowcase/models/CardRow;->setCard(Landroidx/leanback/supportleanbackshowcase/models/Card;)V

    goto :goto_0

    .line 909
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result p1

    iget v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    add-int/lit8 v2, v1, 0x2

    if-ne p1, v2, :cond_1

    .line 910
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 912
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->createCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)Landroidx/leanback/widget/Row;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    .line 914
    :goto_1
    iget p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    add-int/lit8 p1, p1, 0x3

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->yesNetMainMenu(I)V

    goto :goto_2

    .line 916
    :cond_2
    iget p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mainMenuPosition:I

    add-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->yesNetMainMenu(I)V

    :goto_2
    return-void
.end method

.method public synthetic lambda$setupUi$7$SmartTvMainFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 596
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->playVideo(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setupUi$8$SmartTvMainFragment(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    .line 466
    instance-of p3, p2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    if-nez p3, :cond_0

    return-void

    .line 467
    :cond_0
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    instance-of p1, p1, Landroidx/leanback/widget/ImageCardView;

    if-nez p1, :cond_1

    return-void

    .line 468
    :cond_1
    move-object p1, p2

    check-cast p1, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object p3

    sget-object p4, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MENU:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {p3, p4}, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_11

    .line 470
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getRate()Ljava/lang/String;

    move-result-object p3

    const-string v0, "main"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const/high16 v0, 0x10000000

    if-eqz p3, :cond_f

    .line 471
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/4 v1, 0x0

    if-ne p3, p4, :cond_2

    .line 472
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 473
    sput v1, Lcom/magoware/magoware/webtv/players/ChannelActivity;->current_category_id:I

    .line 474
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const-class p3, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 475
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 476
    sget-object p2, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 480
    :cond_2
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/16 p4, 0x16

    if-ne p3, p4, :cond_3

    .line 481
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 482
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const-class p3, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 483
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 484
    sget-object p2, Lcom/magoware/magoware/webtv/util/Utils;->INFO_CHANNEL:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 485
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 487
    :cond_3
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/16 p4, 0x15

    if-ne p3, p4, :cond_4

    .line 488
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 489
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const-class p3, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 490
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 491
    sget-object p2, Lcom/magoware/magoware/webtv/util/Utils;->CATCHUP_TV:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 495
    :cond_4
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/16 p4, 0x14

    if-ne p3, p4, :cond_6

    .line 496
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-nez p1, :cond_5

    .line 497
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 498
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mContext:Landroid/content/Context;

    const-class p3, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 499
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 501
    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 502
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mContext:Landroid/content/Context;

    const-class p3, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 503
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 508
    :cond_6
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x3

    if-ne p3, p4, :cond_7

    .line 509
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->showLogOutDialog()V

    goto/16 :goto_0

    .line 512
    :cond_7
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x4

    if-ne p3, p4, :cond_8

    .line 513
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 514
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const-class p3, Lcom/magoware/magoware/webtv/deviceApps/AppsActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 516
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 519
    :cond_8
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/16 p4, 0xa

    if-ne p3, p4, :cond_9

    .line 520
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 521
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const-class p3, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestMerlin;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 522
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 523
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 526
    :cond_9
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/16 p4, 0xb

    if-ne p3, p4, :cond_a

    .line 527
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->intentVod()V

    goto/16 :goto_0

    .line 528
    :cond_a
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/16 p4, 0xc

    if-ne p3, p4, :cond_b

    .line 529
    new-instance p2, Landroid/content/Intent;

    const/4 p3, 0x0

    const-string p4, "android.intent.action.MAIN"

    invoke-direct {p2, p4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p3, "android.intent.category.LAUNCHER"

    .line 530
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    iget-object p3, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 534
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/MagowareApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 537
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 538
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 541
    :cond_b
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_c

    sget-object p3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p3}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p3

    if-nez p3, :cond_c

    .line 543
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-virtual {p2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getDescription()Ljava/lang/String;

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

    .line 544
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/MagowareApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 545
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 548
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 550
    :cond_c
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_d

    sget-object p3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p3}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p3

    if-nez p3, :cond_e

    :cond_d
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p3, 0x8

    if-ne p1, p3, :cond_14

    .line 552
    :cond_e
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 553
    iget-object p3, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const-class p4, Lcom/magoware/magoware/webtv/webview/WebViewActivity;

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p3, "WEB_URL"

    .line 554
    check-cast p2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    invoke-virtual {p2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 558
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 563
    :cond_f
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getRate()Ljava/lang/String;

    move-result-object p2

    const-string p3, "live"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 564
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getDuration()I

    move-result p1

    sput p1, Lcom/magoware/magoware/webtv/players/ChannelActivity;->current_category_id:I

    .line 565
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 566
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const-class p3, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 567
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 568
    sget-object p2, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 572
    :cond_10
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getRate()Ljava/lang/String;

    move-result-object p2

    const-string p3, "vod"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 573
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const-class v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    invoke-direct {p2, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 574
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, "vod_position"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "from_shortcut"

    .line 575
    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 576
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 579
    :cond_11
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object p2

    sget-object p3, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MOVIE:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {p2, p3}, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 581
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getRate()Ljava/lang/String;

    move-result-object p2

    const-string p3, "vodTvShow"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 582
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const-class p4, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 583
    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    iget-object p4, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->tvShowList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Video"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 587
    :cond_12
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getRate()Ljava/lang/String;

    move-result-object p2

    const-string p3, "vodSeasons"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 588
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getExtraText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2, p1, p4}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getVodTvShowsEpisodes(III)V

    goto :goto_0

    .line 591
    :cond_13
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getRate()Ljava/lang/String;

    move-result-object p2

    const-string p3, "vodEpisodes"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 592
    sget-object p2, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->EPISODE:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {p1, p2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->setType(Landroidx/leanback/supportleanbackshowcase/models/Card$Type;)V

    .line 593
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, p4}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowEpisodeDetail(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$kOQcNQX_x1qE_3C_rNGHL20hFuE;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$kOQcNQX_x1qE_3C_rNGHL20hFuE;-><init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_14
    :goto_0
    return-void
.end method

.method public synthetic lambda$showLogOutDialog$14$SmartTvMainFragment(Landroid/view/View;)V
    .locals 1

    .line 974
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->logoutUserObservable(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$showLogOutDialog$15$SmartTvMainFragment(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 982
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->removeDialog(Landroid/app/AlertDialog;)V

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

    .line 253
    invoke-super {p0, p1}, Landroidx/leanback/app/RowsSupportFragment;->onAttach(Landroid/content/Context;)V

    .line 254
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mContext:Landroid/content/Context;

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

    .line 128
    invoke-super {p0, p1}, Landroidx/leanback/app/RowsSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    .line 131
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 132
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->setupUi()V

    .line 133
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->initializeGlobalVariables()V

    .line 134
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->initUtil()V

    .line 135
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->application:Lcom/magoware/magoware/webtv/MagowareApplication;

    .line 136
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/MagowareApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    .line 137
    new-instance p1, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v0, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v0}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    invoke-direct {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 138
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    const/4 p1, 0x0

    .line 140
    :try_start_0
    sget-object v0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->lockStatic:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 142
    :try_start_1
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/MagowareApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "TiboTV Power"

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->lockStatic:Landroid/os/PowerManager$WakeLock;

    .line 144
    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    :cond_0
    :goto_0
    sget-object v0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->lockStatic:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    const-string v2, "TiboTV WIFI"

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 157
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 158
    sget-object p1, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :goto_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->disableWIFISleep()V

    .line 164
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    sput-object p1, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->ScreenSize:Landroid/graphics/Point;

    .line 165
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 166
    sget-object v0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->ScreenSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 167
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getDashboardSettings()V

    .line 168
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->getPallyconToken()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 343
    invoke-super {p0}, Landroidx/leanback/app/RowsSupportFragment;->onDestroy()V

    .line 345
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 243
    invoke-super {p0}, Landroidx/leanback/app/RowsSupportFragment;->onPause()V

    .line 245
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 269
    invoke-super {p0}, Landroidx/leanback/app/RowsSupportFragment;->onResume()V

    .line 271
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->DAYSLEFT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 272
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->noSubscriptionDialog()V

    .line 301
    :cond_0
    sget-boolean v0, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->force_local:Z

    if-eqz v0, :cond_2

    .line 302
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 304
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 308
    :cond_2
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 309
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->force_local:Z

    if-nez v0, :cond_3

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 311
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->this_context:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 312
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 317
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 318
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 320
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_UPDATE_DATE_OF_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 323
    :cond_4
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_UPDATE_DATE_OF_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 324
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 325
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_UPDATE_DATE_OF_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ge v1, v0, :cond_6

    .line 328
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_UPDATE_DATE_OF_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 332
    :cond_5
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_UPDATE_DATE_OF_SUBSCRIPTION:Ljava/lang/String;

    sub-int/2addr v0, v1

    invoke-virtual {v3, v4, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 335
    :cond_6
    :goto_0
    sput-boolean v2, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->force_local:Z

    .line 336
    sput-boolean v2, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->force_remote:Z

    .line 338
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->initTimezone()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 259
    invoke-super {p0}, Landroidx/leanback/app/RowsSupportFragment;->onStop()V

    .line 261
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->progressDialogMenuRefresh:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method
