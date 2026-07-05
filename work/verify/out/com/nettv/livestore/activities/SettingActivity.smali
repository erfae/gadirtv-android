.class public Lcom/nettv/livestore/activities/SettingActivity;
.super Lcom/nettv/livestore/apps/BaseActivity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;
    }
.end annotation


# instance fields
.field public adapter:Lcom/nettv/livestore/adapter/SettingRecyclerAdapter;

.field public addPlaylistDlgFragment:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

.field public api_version:D

.field public appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

.field public btn_back:Landroid/widget/ImageButton;

.field public btn_pay:Landroid/widget/Button;

.field public btn_tv_pay:Landroid/widget/Button;

.field public current_version:D

.field public expire_format:Ljava/text/SimpleDateFormat;

.field public expired_mils:J

.field public hideCategoryDlgFragment:Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;

.field public noConnectionDlgFragment:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public progress_bar:Lpl/droidsonroids/gif/GifImageView;

.field public recycler_setting:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public reviewInfo:Lcom/google/android/play/core/review/ReviewInfo;

.field public reviewManager:Lcom/google/android/play/core/review/ReviewManager;

.field public settingLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/apps/SideMenu;",
            ">;"
        }
    .end annotation
.end field

.field public setting_pos:I

.field private tv_mac_address:Ljava/lang/String;

.field public txt_mac_address:Landroid/widget/TextView;

.field public txt_setting:Landroid/widget/TextView;

.field public updateDlgFragment:Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$31MdL45ELjdrXsiUSWLSTy42Zio(Lcom/nettv/livestore/activities/SettingActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SettingActivity;->lambda$showChangeLayoutDlgFragment$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3PDCPYjUMEtKMsSscmg5tGjs1zY()V
    .registers 0

    invoke-static {}, Lcom/nettv/livestore/activities/SettingActivity;->lambda$ClearHistoryChannels$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$6AkMGERz8DAHVoBxdfg6BLo3K0Q()V
    .registers 0

    invoke-static {}, Lcom/nettv/livestore/activities/SettingActivity;->lambda$showHideCategoryDlgFragment$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$G40qzduXuBufdqhQb5JmgpzynrQ(Lcom/nettv/livestore/activities/SettingActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->lambda$showNoConnectionDlgFragment$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$IUdgi3Q_PMFyDXrSfRYxpXNtujA(Lcom/nettv/livestore/activities/SettingActivity;Lcom/google/android/play/core/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SettingActivity;->lambda$startReviewFlow$12(Lcom/google/android/play/core/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Po4JdgcPKwqJ7EsfG2FRFynNsKc(Lcom/nettv/livestore/activities/SettingActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SettingActivity;->lambda$showExternalDlgFragment$10(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sx0JZ6oknIEIf88R9GmOt8aeXt4(Lcom/nettv/livestore/activities/SettingActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SettingActivity;->lambda$showDeviceTypeDlgFragment$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VnvQD6yIv-1BuI4gyGEpMrvbHpE(Lcom/nettv/livestore/activities/SettingActivity;Ljava/util/List;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/SettingActivity;->lambda$showChangeLangDlgFragment$2(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z18gUOnEFQOK4YpKXBDDO-N85xs(Lcom/nettv/livestore/activities/SettingActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SettingActivity;->lambda$showLiveStreamFormatDlgFragment$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aQa2AIGcbWdkc8ebjIHuieYaQMo(Lcom/nettv/livestore/activities/SettingActivity;Lcom/google/android/play/core/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SettingActivity;->lambda$activateReviewInfo$1(Lcom/google/android/play/core/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mljSJl9NADG-j8ED-f4zGidtP2I(Lcom/nettv/livestore/activities/SettingActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SettingActivity;->lambda$showLiveChannelSortDlgFragment$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n3dxtQCNTbaxjuahF9Q_PbN7o6o(Lcom/nettv/livestore/activities/SettingActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->goToUpdate()V

    return-void
.end method

.method public static synthetic $r8$lambda$nnzlDy-gRaLbP9dWCzEb7YWtLOQ(Lcom/nettv/livestore/activities/SettingActivity;Lcom/nettv/livestore/apps/SideMenu;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/SettingActivity;->lambda$onCreate$0(Lcom/nettv/livestore/apps/SideMenu;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qycEmFCBFtVXRgwl5qQfax9YphI(Lcom/nettv/livestore/activities/SettingActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SettingActivity;->lambda$showChangeTimeFormatDlgFragment$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s93Yt9hmvqtJ2WVTxW09TiYs__U(Lcom/nettv/livestore/activities/SettingActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SettingActivity;->lambda$showAutomationDlgFragment$11(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nettv/livestore/activities/SettingActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/apps/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->setting_pos:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->tv_mac_address:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->expire_format:Ljava/text/SimpleDateFormat;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->expired_mils:J

    return-void
.end method

.method private ClearHistoryChannels()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/RealmController;->getRecentChannelNames()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v3

    sget-object v4, Lio/realm/Realm$$ExternalSyntheticLambda0;->INSTANCE$20:Lio/realm/Realm$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1, v2, v4}, Lcom/nettv/livestore/helper/RealmController;->addToRecentChannels(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_c

    .line 4
    :cond_23
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getRecent_channels_removed()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/SettingActivity;Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SettingActivity;->startInstall(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic access$102(Lcom/nettv/livestore/activities/SettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->tv_mac_address:Ljava/lang/String;

    return-object p1
.end method

.method private activateReviewInfo()V
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->reviewManager:Lcom/google/android/play/core/review/ReviewManager;

    .line 2
    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SettingActivity;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method private getSettingLists(Lcom/nettv/livestore/models/WordModels;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nettv/livestore/models/WordModels;",
            ")",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/apps/SideMenu;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->txt_setting:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getSettings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_pay:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getPay_with_google_pay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(\u20ac"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/AppInfoModel;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getAdd_playlist()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f080150

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    .line 5
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getParent_control()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const v5, 0x7f080126

    invoke-direct {v1, v2, v3, v5}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChange_playlist()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChange_language()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const v4, 0x7f08014f

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getChangeLayout()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const v4, 0x7f080146

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getHide_live_category()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    const v4, 0x7f08014e

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getHide_vod_category()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getHide_series_category()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getClear_history_channels()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    const v4, 0x7f080119

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getClear_history_movies()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getClear_history_series()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getLive_sort()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    const v4, 0x7f080153

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getLive_stream_format()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    const v4, 0x7f080148

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getExternal_player()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    const v4, 0x7f08011c

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getAutomatic()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    const v4, 0x7f080112

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getTime_format()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    const v4, 0x7f080142

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getSubtitle_settings()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    const v4, 0x7f080154

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getSelect_device_type()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    const v4, 0x7f08011a

    invoke-direct {v1, v2, v3, v4}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lcom/nettv/livestore/apps/SideMenu;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getUpdate_now()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x12

    const v3, 0x7f080143

    invoke-direct {v1, p1, v2, v3}, Lcom/nettv/livestore/apps/SideMenu;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private goToChangePlaylist()V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "is_home"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private goToUpdate()V
    .registers 6

    const-string v0, "android.intent.action.VIEW"

    .line 1
    invoke-static {}, Lcom/nettv/livestore/utils/Utils;->IsAmazonDevice()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2
    new-instance v0, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/SettingActivity$versionUpdate;-><init>(Lcom/nettv/livestore/activities/SettingActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/AppInfoModel;->getApk_link()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_5c

    .line 3
    :cond_1d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4
    :try_start_21
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21 .. :try_end_3e} :catch_3f

    goto :goto_5c

    .line 5
    :catch_3f
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_5c
    return-void
.end method

.method private initView()V
    .registers 5

    const v0, 0x7f0b0088

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_back:Landroid/widget/ImageButton;

    const v0, 0x7f0b03f8

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->txt_setting:Landroid/widget/TextView;

    const v0, 0x7f0b03df

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->txt_mac_address:Landroid/widget/TextView;

    const v0, 0x7f0b0097

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_pay:Landroid/widget/Button;

    const v0, 0x7f0b00a4

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_tv_pay:Landroid/widget/Button;

    const v0, 0x7f0b02e2

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->progress_bar:Lpl/droidsonroids/gif/GifImageView;

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_tv_pay:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b02f3

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->recycler_setting:Lcom/nettv/livestore/view/LiveVerticalGridView;

    .line 11
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_86

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_tv_pay:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->recycler_setting:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->recycler_setting:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v2, [Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 15
    iget-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->recycler_setting:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v2, Lcom/nettv/livestore/activities/SettingActivity$2;

    invoke-direct {v2, v0}, Lcom/nettv/livestore/activities/SettingActivity$2;-><init>([Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_95

    .line 16
    :cond_86
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->recycler_setting:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v3, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->recycler_setting:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    :goto_95
    return-void
.end method

.method private static synthetic lambda$ClearHistoryChannels$5()V
    .registers 0

    return-void
.end method

.method private synthetic lambda$activateReviewInfo$1(Lcom/google/android/play/core/tasks/Task;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    iput-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->reviewInfo:Lcom/google/android/play/core/review/ReviewInfo;

    goto :goto_19

    :cond_f
    const/4 p1, 0x0

    const-string v0, "Review failed to start!"

    .line 3
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_19
    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/nettv/livestore/apps/SideMenu;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/nettv/livestore/activities/SettingActivity;->setting_pos:I

    .line 2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_bc

    .line 3
    invoke-virtual {p1}, Lcom/nettv/livestore/apps/SideMenu;->getPosition()I

    move-result p1

    const/4 p2, 0x2

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_be

    goto/16 :goto_bc

    .line 4
    :pswitch_18
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->showUpdateDlgFragment()V

    goto/16 :goto_bc

    .line 5
    :pswitch_1d
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->showDeviceTypeDlgFragment()V

    goto/16 :goto_bc

    .line 6
    :pswitch_22
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->showSubTitleSettingDlgFragment()V

    goto/16 :goto_bc

    .line 7
    :pswitch_27
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->showChangeTimeFormatDlgFragment()V

    goto/16 :goto_bc

    .line 8
    :pswitch_2c
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->showAutomationDlgFragment()V

    goto/16 :goto_bc

    .line 9
    :pswitch_31
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->showExternalDlgFragment()V

    goto/16 :goto_bc

    .line 10
    :pswitch_36
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->showLiveStreamFormatDlgFragment()V

    goto/16 :goto_bc

    .line 11
    :pswitch_3b
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->showLiveChannelSortDlgFragment()V

    goto/16 :goto_bc

    .line 12
    :pswitch_40
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceRecentSeriesNames()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_51

    .line 13
    invoke-direct {p0, p2}, Lcom/nettv/livestore/activities/SettingActivity;->showClearHistoryDlgFragment(I)V

    goto/16 :goto_bc

    .line 14
    :cond_51
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getNo_recently_series()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_bc

    .line 15
    :pswitch_5f
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceResumeModel()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6f

    .line 16
    invoke-direct {p0, p3}, Lcom/nettv/livestore/activities/SettingActivity;->showClearHistoryDlgFragment(I)V

    goto :goto_bc

    .line 17
    :cond_6f
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getNo_recently_movies()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_bc

    .line 18
    :pswitch_7d
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/RealmController;->getRecentChannelNames()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8f

    .line 19
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->ClearHistoryChannels()V

    goto :goto_bc

    .line 20
    :cond_8f
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getNo_recently_channels()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_bc

    .line 21
    :pswitch_9d
    invoke-direct {p0, p2}, Lcom/nettv/livestore/activities/SettingActivity;->showHideCategoryDlgFragment(I)V

    goto :goto_bc

    .line 22
    :pswitch_a1
    invoke-direct {p0, p3}, Lcom/nettv/livestore/activities/SettingActivity;->showHideCategoryDlgFragment(I)V

    goto :goto_bc

    .line 23
    :pswitch_a5
    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/SettingActivity;->showHideCategoryDlgFragment(I)V

    goto :goto_bc

    .line 24
    :pswitch_a9
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->showChangeLayoutDlgFragment()V

    goto :goto_bc

    .line 25
    :pswitch_ad
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->showChangeLangDlgFragment()V

    goto :goto_bc

    .line 26
    :pswitch_b1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->goToChangePlaylist()V

    goto :goto_bc

    .line 27
    :pswitch_b5
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->showParentalControlDlgFragment()V

    goto :goto_bc

    .line 28
    :pswitch_b9
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->showAddPlaylistDlgFragment()V

    :cond_bc
    :goto_bc
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_b5
        :pswitch_b1
        :pswitch_ad
        :pswitch_a9
        :pswitch_a5
        :pswitch_a1
        :pswitch_9d
        :pswitch_7d
        :pswitch_5f
        :pswitch_40
        :pswitch_3b
        :pswitch_36
        :pswitch_31
        :pswitch_2c
        :pswitch_27
        :pswitch_22
        :pswitch_1d
        :pswitch_18
    .end packed-switch
.end method

.method private synthetic lambda$showAutomationDlgFragment$11(I)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceUpdatePeriod(I)V

    return-void
.end method

.method private synthetic lambda$showChangeLangDlgFragment$2(Ljava/util/List;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/LanguageModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/LanguageModel;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLanguageCode(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SettingActivity;->getSettingLists(Lcom/nettv/livestore/models/WordModels;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->settingLists:Ljava/util/List;

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/activities/SettingActivity;->adapter:Lcom/nettv/livestore/adapter/SettingRecyclerAdapter;

    invoke-virtual {p2, p1}, Lcom/nettv/livestore/adapter/SettingRecyclerAdapter;->setSettingData(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$showChangeLayoutDlgFragment$3(I)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceIsGrid(Z)V

    return-void
.end method

.method private synthetic lambda$showChangeTimeFormatDlgFragment$6(I)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceTimeFormat(I)V

    return-void
.end method

.method private synthetic lambda$showDeviceTypeDlgFragment$9(I)V
    .registers 3

    if-nez p1, :cond_a

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    const-string v0, "tv"

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceDeviceType(Ljava/lang/String;)V

    goto :goto_11

    .line 2
    :cond_a
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    const-string v0, "mobile"

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceDeviceType(Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method private synthetic lambda$showExternalDlgFragment$10(I)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceExternalPlayer(I)V

    return-void
.end method

.method private static synthetic lambda$showHideCategoryDlgFragment$4()V
    .registers 0

    return-void
.end method

.method private synthetic lambda$showLiveChannelSortDlgFragment$7(I)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLiveOrder(I)V

    return-void
.end method

.method private synthetic lambda$showLiveStreamFormatDlgFragment$8(I)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    if-nez p1, :cond_7

    const-string p1, "ts"

    goto :goto_9

    :cond_7
    const-string p1, "m3u8"

    :goto_9
    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLiveStreamFormat(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showNoConnectionDlgFragment$13()V
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$startReviewFlow$12(Lcom/google/android/play/core/tasks/Task;)V
    .registers 4

    const-string p1, "Rating is completed."

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "market://details?id=com.nettv.livestore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showAddPlaylistDlgFragment()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_add"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    :cond_15
    const/4 v1, -0x1

    .line 5
    new-instance v3, Lcom/nettv/livestore/activities/SettingActivity$1;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/SettingActivity$1;-><init>(Lcom/nettv/livestore/activities/SettingActivity;)V

    invoke-static {p0, v1, v3}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->newInstance(Landroid/content/Context;ILcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$SuccessAddedListener;)Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->addPlaylistDlgFragment:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    .line 6
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showAutomationDlgFragment()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUpdatePeriod()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getAuto_update_everytime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getAuto_update_everyday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getAuto_update_2day()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "fragment_automation"

    .line 8
    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_3b

    const/4 v0, 0x0

    .line 9
    invoke-static {v3, v5, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3b
    iget-object v3, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getAutomatic()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;

    const/16 v6, 0x8

    invoke-direct {v5, p0, v6}, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SettingActivity;I)V

    invoke-static {p0, v1, v3, v0, v5}, Lcom/nettv/livestore/dlgfragment/ExternalPlayerDlgFragment;->newInstance(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ILcom/nettv/livestore/dlgfragment/ExternalPlayerDlgFragment$ItemPositionListener;)Lcom/nettv/livestore/dlgfragment/ExternalPlayerDlgFragment;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showChangeLangDlgFragment()V
    .registers 7

    .line 1
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getLanguagePosition(Landroid/content/Context;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel;->getLanguageModels()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "fragment_language"

    .line 5
    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_1f

    const/4 v0, 0x0

    .line 6
    invoke-static {v3, v5, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1f
    new-instance v3, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda0;

    const/16 v5, 0xe

    invoke-direct {v3, p0, v1, v5}, Lcom/nettv/livestore/apps/BaseActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p0, v1, v0, v3}, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->newInstance(Landroid/content/Context;Ljava/util/List;ILcom/nettv/livestore/dlgfragment/LanguageDlgFragment$ItemPositionListener;)Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showChangeLayoutDlgFragment()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceIsGrid()Z

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getList_layout()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getGrid_layout()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "fragment_layout"

    .line 7
    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_32

    const/4 v0, 0x0

    .line 8
    invoke-static {v3, v5, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_32
    iget-object v3, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getChangeLayout()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;

    const/4 v6, 0x6

    invoke-direct {v5, p0, v6}, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SettingActivity;I)V

    invoke-static {p0, v1, v0, v3, v5}, Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment;->newInstance(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment$ItemPositionListener;)Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showChangeTimeFormatDlgFragment()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceTimeFormat()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->get_12_hour_format()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->get_24_hour_format()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "fragment_live_sort"

    .line 7
    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_32

    const/4 v0, 0x0

    .line 8
    invoke-static {v3, v5, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_32
    iget-object v3, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getTime_format()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6}, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SettingActivity;I)V

    invoke-static {p0, v1, v0, v3, v5}, Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment;->newInstance(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment$ItemPositionListener;)Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showClearHistoryDlgFragment(I)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_clear_history"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    invoke-static {p0, p1}, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->newInstance(Landroid/content/Context;I)Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showDeviceTypeDlgFragment()V
    .registers 7

    .line 1
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "TV"

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Mobile"

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "fragment_device_type"

    .line 7
    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_2a

    const/4 v0, 0x0

    .line 8
    invoke-static {v3, v5, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2a
    new-instance v3, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x7

    invoke-direct {v3, p0, v5}, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SettingActivity;I)V

    const-string v5, "Select Device Type"

    invoke-static {p0, v1, v0, v5, v3}, Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment;->newInstance(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment$ItemPositionListener;)Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showExternalDlgFragment()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceExternalPlayer()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getString_default()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getVlc_player()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getMx_player()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "fragment_external_player"

    .line 8
    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_3b

    const/4 v0, 0x0

    .line 9
    invoke-static {v3, v5, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3b
    iget-object v3, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getExternal_player()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SettingActivity;I)V

    invoke-static {p0, v1, v3, v0, v5}, Lcom/nettv/livestore/dlgfragment/ExternalPlayerDlgFragment;->newInstance(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ILcom/nettv/livestore/dlgfragment/ExternalPlayerDlgFragment$ItemPositionListener;)Lcom/nettv/livestore/dlgfragment/ExternalPlayerDlgFragment;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showHideCategoryDlgFragment(I)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_hide_category"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    invoke-static {p0, p1}, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->newInstance(Landroid/content/Context;I)Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->hideCategoryDlgFragment:Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;

    .line 6
    sget-object v1, Lio/realm/Realm$$ExternalSyntheticLambda0;->INSTANCE$19:Lio/realm/Realm$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;->setOnCategoryChangedListener(Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment$OnCategoryChanged;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->hideCategoryDlgFragment:Lcom/nettv/livestore/dlgfragment/HideCategoryDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showLiveChannelSortDlgFragment()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveOrder()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getString_default()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getSort_a_z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getSort_z_a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "fragment_live_sort"

    .line 8
    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_3b

    const/4 v0, 0x0

    .line 9
    invoke-static {v3, v5, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3b
    iget-object v3, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getLive_sort()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;

    const/16 v6, 0x9

    invoke-direct {v5, p0, v6}, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SettingActivity;I)V

    invoke-static {p0, v1, v0, v3, v5}, Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment;->newInstance(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment$ItemPositionListener;)Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showLiveStreamFormatDlgFragment()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveStreamFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "MPEG(ts)"

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "HLS(m3u8)"

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "fragment_live_format"

    .line 7
    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_32

    const/4 v0, 0x0

    .line 8
    invoke-static {v3, v5, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_32
    iget-object v3, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getLive_stream_format()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v6}, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SettingActivity;I)V

    invoke-static {p0, v1, v0, v3, v5}, Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment;->newInstance(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment$ItemPositionListener;)Lcom/nettv/livestore/dlgfragment/LiveSortDlgFragment;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showNoConnectionDlgFragment()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_no_connection"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPlaylist_is_not_working()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->noConnectionDlgFragment:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SettingActivity;I)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->setOnRetryClickListener(Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment$OnRetryClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->noConnectionDlgFragment:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showParentalControlDlgFragment()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_parent"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    new-instance v1, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;

    invoke-direct {v1}, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;-><init>()V

    .line 6
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showSubTitleSettingDlgFragment()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_subtitle_setting"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    invoke-static {p0}, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->newInstance(Landroid/content/Context;)Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showTVDeviceDlgFragment()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_pay_tv"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    new-instance v1, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;

    invoke-direct {v1}, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;-><init>()V

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/SettingActivity$3;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/SettingActivity$3;-><init>(Lcom/nettv/livestore/activities/SettingActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->setOnButtonClickListener(Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$OnButtonClickListener;)V

    .line 7
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showUpdateDlgFragment()V
    .registers 9

    .line 1
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->instance:Lcom/nettv/livestore/apps/LTVApp;

    invoke-virtual {v0}, Lcom/nettv/livestore/apps/LTVApp;->versionCheck()V

    .line 2
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->instance:Lcom/nettv/livestore/apps/LTVApp;

    invoke-virtual {v0}, Lcom/nettv/livestore/apps/LTVApp;->loadVersion()V

    .line 3
    iget-wide v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->api_version:D

    iget-wide v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->current_version:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_26

    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getNew_software_update_available()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getUpdate_now()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getSkip()Ljava/lang/String;

    move-result-object v3

    goto :goto_39

    .line 7
    :cond_26
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getApp_is_up_to_date()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    .line 10
    :goto_39
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    const-string v6, "fragment_update"

    .line 12
    invoke-virtual {v4, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v7

    if-eqz v7, :cond_4e

    const/4 v0, 0x0

    .line 13
    invoke-static {v5, v7, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_4e
    invoke-static {p0, v1, v2, v3, v0}, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->updateDlgFragment:Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;

    .line 15
    new-instance v1, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SettingActivity;I)V

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->setOnUpdateAvailableListener(Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment$UpdateAvailableListener;)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->updateDlgFragment:Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;

    invoke-virtual {v0, v4, v6}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startInstall(Ljava/io/File;)V
    .registers 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v2, 0x10000000

    const-string v3, "application/vnd.android.package-archive"

    const/16 v4, 0x18

    if-le v1, v4, :cond_22

    const-string v1, "com.nettv.livestore.provider"

    .line 3
    invoke-static {p0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2c

    .line 6
    :cond_22
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    :goto_2c
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startReviewFlow()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->reviewInfo:Lcom/google/android/play/core/review/ReviewInfo;

    if-eqz v0, :cond_13

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->reviewManager:Lcom/google/android/play/core/review/ReviewManager;

    invoke-interface {v1, p0, v0}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/SettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SettingActivity;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    :cond_13
    return-void
.end method


# virtual methods
.method public OnGetResponseResult(Lorg/json/JSONObject;I)V
    .registers 6

    if-eqz p1, :cond_8c

    const/16 v0, 0x7d0

    const-string v1, "status"

    if-ne p2, v0, :cond_74

    const/4 p2, 0x2

    const/16 v0, 0x8

    const/4 v2, 0x1

    .line 1
    :try_start_c
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getActivate_success()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/models/AppInfoModel;->setIs_trial(I)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, v2}, Lcom/nettv/livestore/models/AppInfoModel;->setIs_google_pay(Z)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1, v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceIsPlaylistChanged(Z)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceAppInfo(Lcom/nettv/livestore/models/AppInfoModel;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_tv_pay:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_46} :catch_47

    goto :goto_6e

    :catch_47
    nop

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/models/AppInfoModel;->setIs_trial(I)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, v2}, Lcom/nettv/livestore/models/AppInfoModel;->setIs_google_pay(Z)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1, v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceIsPlaylistChanged(Z)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p2, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceAppInfo(Lcom/nettv/livestore/models/AppInfoModel;)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_tv_pay:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_6e
    :goto_6e
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-static {p1}, Lcom/nettv/livestore/utils/Utils;->saveToFile(Lcom/nettv/livestore/models/AppInfoModel;)V

    goto :goto_8c

    :cond_74
    const-string p2, "data"

    .line 18
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 19
    :try_start_7c
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/nettv/livestore/utils/Security;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8c} :catch_8c

    :catch_8c
    :cond_8c
    :goto_8c
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_92

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_69

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_98

    goto/16 :goto_92

    .line 3
    :pswitch_14
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_92

    return v3

    .line 4
    :pswitch_1d
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->recycler_setting:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_92

    iget v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->setting_pos:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_92

    return v3

    .line 5
    :pswitch_2b
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->recycler_setting:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    .line 8
    :cond_3e
    iget v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->setting_pos:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->settingLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_92

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_tv_pay:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    .line 12
    :pswitch_59
    iget v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->setting_pos:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_92

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    .line 15
    :cond_69
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->progress_bar:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7f

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getPlaylist_is_loading()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_92

    .line 17
    :cond_7f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "is_changed"

    const-string v2, ""

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 19
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 21
    :cond_92
    :goto_92
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_98
    .packed-switch 0x13
        :pswitch_59
        :pswitch_2b
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method

.method public final doNextTask(Z)V
    .registers 3

    const/16 v0, 0x8

    if-eqz p1, :cond_1d

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->progress_bar:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferencePlaylistPosition(I)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/HomeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_25

    .line 6
    :cond_1d
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->progress_bar:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->showNoConnectionDlgFragment()V

    :goto_25
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0088

    if-eq p1, v0, :cond_13

    const v0, 0x7f0b00a4

    if-eq p1, v0, :cond_f

    goto :goto_3d

    .line 2
    :cond_f
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->showTVDeviceDlgFragment()V

    goto :goto_3d

    .line 3
    :cond_13
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->progress_bar:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2a

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getPlaylist_is_loading()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3d

    .line 5
    :cond_2a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "is_changed"

    const-string v1, ""

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3d
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 1
    invoke-super {p0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0035

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceAppInfo()Lcom/nettv/livestore/models/AppInfoModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    .line 6
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 7
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SettingActivity;->initView()V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->txt_mac_address:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getMac_address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getDevice_key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SettingActivity;->getSettingLists(Lcom/nettv/livestore/models/WordModels;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->settingLists:Ljava/util/List;

    .line 10
    sget-object p1, Lcom/nettv/livestore/apps/LTVApp;->version_name:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->current_version:D

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel;->getApp_version()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->api_version:D

    .line 12
    new-instance p1, Lcom/nettv/livestore/adapter/SettingRecyclerAdapter;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SettingActivity;->settingLists:Ljava/util/List;

    iget-wide v3, p0, Lcom/nettv/livestore/activities/SettingActivity;->current_version:D

    cmpl-double v5, v0, v3

    if-lez v5, :cond_87

    const/16 v0, 0x10

    goto :goto_88

    :cond_87
    const/4 v0, -0x1

    :goto_88
    new-instance v1, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;

    const/4 v3, 0x7

    invoke-direct {v1, p0, v3}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/nettv/livestore/adapter/SettingRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function3;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->adapter:Lcom/nettv/livestore/adapter/SettingRecyclerAdapter;

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity;->recycler_setting:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->recycler_setting:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_tv_pay:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_tv_pay:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :try_start_b9
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->expire_format:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel;->getExpiredDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->expired_mils:J
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_cb} :catch_cc

    goto :goto_d0

    :catch_cc
    const-wide/16 v1, 0x0

    .line 22
    iput-wide v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->expired_mils:J

    .line 23
    :goto_d0
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel;->getIs_trial()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_f4

    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel;->isIs_google_pay()Z

    move-result p1

    if-nez p1, :cond_f4

    iget-wide v1, p0, Lcom/nettv/livestore/activities/SettingActivity;->expired_mils:J

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x240c8400

    cmp-long p1, v1, v3

    if-lez p1, :cond_f9

    .line 24
    :cond_f4
    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_f9
    return-void
.end method
