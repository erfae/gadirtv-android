.class public Lcom/nettv/livestore/activities/ChangePlaylistActivity;
.super Lcom/nettv/livestore/apps/BaseActivity;
.source "ChangePlaylistActivity.java"

# interfaces
.implements Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;


# instance fields
.field public addPlaylistDlgFragment:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

.field public appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

.field public btn_pay:Landroid/widget/Button;

.field public btn_web_site:Landroid/widget/Button;

.field public connectDlgFragment:Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;

.field public exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

.field public expire_format:Ljava/text/SimpleDateFormat;

.field public expired_mils:J

.field public focused_position:I

.field public image_qr:Landroid/widget/ImageView;

.field public is_home:Z

.field public noConnectionDlgFragment:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

.field public notiContent:Landroid/widget/TextView;

.field public notiTitle:Landroid/widget/TextView;

.field public playlist_position:I

.field public portalAdapter:Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public progress_bar:Lpl/droidsonroids/gif/GifImageView;

.field public recycler_playlist:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public selectedModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

.field public str_device_key:Landroid/widget/TextView;

.field public str_mac_address:Landroid/widget/TextView;

.field public str_mac_trial:Landroid/widget/TextView;

.field public str_scan_code:Landroid/widget/TextView;

.field public str_trial:Landroid/widget/TextView;

.field public str_upload:Landroid/widget/TextView;

.field public txt_description:Landroid/widget/TextView;

.field public txt_device_key:Landroid/widget/TextView;

.field public txt_mac_address:Landroid/widget/TextView;

.field public txt_version:Landroid/widget/TextView;

.field public urlModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/AppInfoModel$UrlModel;",
            ">;"
        }
    .end annotation
.end field

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$4ZEof_bjPPoffykl5l5zklL6qms(Lcom/nettv/livestore/activities/ChangePlaylistActivity;ILcom/nettv/livestore/models/AppInfoModel$UrlModel;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->lambda$showConnectDlgFragment$1(ILcom/nettv/livestore/models/AppInfoModel$UrlModel;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6OGnUsSYqtLsSMoirrqD3GCLXNE(Lcom/nettv/livestore/activities/ChangePlaylistActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->lambda$initView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9YgBcxxgg3-8WhT1GBG8u4CEJG8(Lcom/nettv/livestore/activities/ChangePlaylistActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->lambda$showNoConnectionDlgFragment$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$UcEd45ZHmjPWb5m9nJZxKOCW6JU(Lcom/nettv/livestore/activities/ChangePlaylistActivity;Lcom/nettv/livestore/models/AppInfoModel$UrlModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->lambda$onCreate$0(Lcom/nettv/livestore/models/AppInfoModel$UrlModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/apps/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->expire_format:Ljava/text/SimpleDateFormat;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->expired_mils:J

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->urlModelList:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->playlist_position:I

    iput v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->focused_position:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->selectedModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    .line 8
    iput-boolean v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->is_home:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/ChangePlaylistActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->changePlaylistView()V

    return-void
.end method

.method private changePlaylistView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceAppInfo()Lcom/nettv/livestore/models/AppInfoModel;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    .line 2
    invoke-virtual {v0}, Lcom/nettv/livestore/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->urlModelList:Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->portalAdapter:Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method private checkDescription()V
    .locals 10

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->expire_format:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/AppInfoModel;->getExpiredDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->expired_mils:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iput-wide v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->expired_mils:J

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    const/4 v3, 0x4

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v2}, Lcom/nettv/livestore/models/AppInfoModel;->getIs_trial()I

    move-result v2

    const/4 v4, 0x2

    const/16 v5, 0x8

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/AppInfoModel;->isIs_google_pay()Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v6, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->expired_mils:J

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x240c8400

    cmp-long v2, v6, v8

    if-lez v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-wide v6, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->expired_mils:J

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v2, v6, v0

    if-lez v2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_mac_trial:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getTv_is_trial()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_trial:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getStr_trial_description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_trial:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_mac_trial:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getTv_mac_expired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_trial:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 13
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_mac_trial:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getMac_activated()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->txt_description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getEnjoy_tv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_trial:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_3
    :goto_2
    invoke-static {}, Lcom/nettv/livestore/utils/Utils;->IsAmazonDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private deletePlaylist(Lcom/nettv/livestore/models/AppInfoModel$UrlModel;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_delete"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getDelete_playlist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getWant_delete_playlist()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    move-result-object v1

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/ChangePlaylistActivity$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/nettv/livestore/activities/ChangePlaylistActivity$1;-><init>(Lcom/nettv/livestore/activities/ChangePlaylistActivity;Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;Lcom/nettv/livestore/models/AppInfoModel$UrlModel;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->setOkButtonClickListener(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;)V

    .line 7
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .locals 6

    const v0, 0x7f0b02f1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->recycler_playlist:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b03df

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->txt_mac_address:Landroid/widget/TextView;

    const v0, 0x7f0b0369

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_mac_trial:Landroid/widget/TextView;

    const v0, 0x7f0b0375

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_trial:Landroid/widget/TextView;

    const v0, 0x7f0b036f

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_scan_code:Landroid/widget/TextView;

    const v0, 0x7f0b035e

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_device_key:Landroid/widget/TextView;

    const v0, 0x7f0b03cb

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->txt_description:Landroid/widget/TextView;

    const v0, 0x7f0b0368

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_mac_address:Landroid/widget/TextView;

    const v0, 0x7f0b03cc

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->txt_device_key:Landroid/widget/TextView;

    const v0, 0x7f0b0402

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->txt_version:Landroid/widget/TextView;

    const v0, 0x7f0b02bd

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->notiTitle:Landroid/widget/TextView;

    const v0, 0x7f0b02bc

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->notiContent:Landroid/widget/TextView;

    const v0, 0x7f0b0376

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_upload:Landroid/widget/TextView;

    const v0, 0x7f0b00a6

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_web_site:Landroid/widget/Button;

    const v0, 0x7f0b01dd

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->image_qr:Landroid/widget/ImageView;

    const v0, 0x7f0b02e2

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->progress_bar:Lpl/droidsonroids/gif/GifImageView;

    const v0, 0x7f0b0097

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_pay:Landroid/widget/Button;

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_web_site:Landroid/widget/Button;

    new-instance v1, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->recycler_playlist:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->recycler_playlist:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v4}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->recycler_playlist:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v3, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v2, v0, v4

    .line 23
    iget-object v2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->recycler_playlist:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v3, Lcom/nettv/livestore/activities/ChangePlaylistActivity$3;

    invoke-direct {v3, v0}, Lcom/nettv/livestore/activities/ChangePlaylistActivity$3;-><init>([Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 24
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->image_qr:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_web_site:Landroid/widget/Button;

    .line 26
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_scan_code:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->recycler_playlist:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v5, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->recycler_playlist:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 29
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->image_qr:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_web_site:Landroid/widget/Button;

    .line 31
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_scan_code:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_web_site:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getOpen_website()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->notiTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel;->getNoteTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->notiContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel;->getNoteContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_upload:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getTo_add_manage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_mac_address:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getMac_address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->txt_mac_address:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->txt_device_key:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_scan_code:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getScan_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->str_device_key:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getDevice_key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->instance:Lcom/nettv/livestore/apps/LTVApp;

    invoke-virtual {v0}, Lcom/nettv/livestore/apps/LTVApp;->versionCheck()V

    .line 42
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->instance:Lcom/nettv/livestore/apps/LTVApp;

    invoke-virtual {v0}, Lcom/nettv/livestore/apps/LTVApp;->loadVersion()V

    .line 43
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->txt_version:Landroid/widget/TextView;

    const-string v1, "v"

    .line 44
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    sget-object v2, Lcom/nettv/livestore/apps/LTVApp;->version_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$initView$3(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v0, 0x10808000

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/nettv/livestore/models/AppInfoModel$UrlModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->urlModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p3, v0, :cond_0

    const/4 p1, -0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->showAddPlaylistDlgFragment(I)V

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->selectedModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    .line 5
    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, "0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->selectedModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->loadingData(Lcom/nettv/livestore/models/AppInfoModel$UrlModel;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->selectedModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->showConnectDlgFragment(Lcom/nettv/livestore/models/AppInfoModel$UrlModel;I)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->focused_position:I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$showConnectDlgFragment$1(ILcom/nettv/livestore/models/AppInfoModel$UrlModel;I)V
    .locals 1

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p2}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->deletePlaylist(Lcom/nettv/livestore/models/AppInfoModel$UrlModel;)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getIs_protected()Ljava/lang/String;

    move-result-object p2

    const-string p3, "1"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getPlaylist_protected()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->showAddPlaylistDlgFragment(I)V

    goto :goto_0

    .line 5
    :cond_3
    iget-boolean p3, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->is_home:Z

    if-eqz p3, :cond_4

    iget p3, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->playlist_position:I

    if-ne p3, p1, :cond_4

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/nettv/livestore/activities/HomeActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 9
    :cond_4
    iput p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->playlist_position:I

    .line 10
    invoke-direct {p0, p2}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->loadingData(Lcom/nettv/livestore/models/AppInfoModel$UrlModel;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showNoConnectionDlgFragment$2()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->playlist_position:I

    return-void
.end method

.method private loadingData(Lcom/nettv/livestore/models/AppInfoModel$UrlModel;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->progress_bar:Lpl/droidsonroids/gif/GifImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->playlist_position:I

    const/4 v1, 0x1

    if-ne v2, v1, :cond_no_swap

    :try_start_swap
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://gadir.co:80"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_swap
    .catch Ljava/lang/Exception; {:try_start_swap .. :try_end_swap} :catch_swap

    goto :cond_no_swap

    :catch_swap
    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_no_swap
    const/4 v1, 0x0

    .line 2
    const-string v2, "username"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceISM3U(Z)V

    .line 4
    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p0, p1, v0}, Lcom/nettv/livestore/apps/BaseActivity;->goToLogin(Ljava/lang/String;Lcom/nettv/livestore/models/WordModels;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nettv/livestore/helper/GetSharedInfo;->checkXUILink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceISM3U(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p0, p1, v0}, Lcom/nettv/livestore/apps/BaseActivity;->goToXUILogin(Ljava/lang/String;Lcom/nettv/livestore/models/WordModels;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceISM3U(Z)V

    .line 9
    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p0, p1, v0}, Lcom/nettv/livestore/apps/BaseActivity;->reloadM3UData(Ljava/lang/String;Lcom/nettv/livestore/models/WordModels;)V

    :goto_0
    return-void
.end method

.method private showAddPlaylistDlgFragment(I)V
    .locals 4

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

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v1, Lcom/nettv/livestore/activities/ChangePlaylistActivity$2;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/ChangePlaylistActivity$2;-><init>(Lcom/nettv/livestore/activities/ChangePlaylistActivity;)V

    invoke-static {p0, p1, v1}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->newInstance(Landroid/content/Context;ILcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$SuccessAddedListener;)Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->addPlaylistDlgFragment:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    .line 6
    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showConnectDlgFragment(Lcom/nettv/livestore/models/AppInfoModel$UrlModel;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_connect"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->connectDlgFragment:Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, p1}, Lcom/nettv/livestore/activities/ChangePlaylistActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/ChangePlaylistActivity;ILcom/nettv/livestore/models/AppInfoModel$UrlModel;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;->setSelectListener(Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment$SelectList;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->connectDlgFragment:Lcom/nettv/livestore/dlgfragment/ConnectDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showExitDlgFragment()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_exit"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getExit()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getExit_description()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/ChangePlaylistActivity$4;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/ChangePlaylistActivity$4;-><init>(Lcom/nettv/livestore/activities/ChangePlaylistActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->setOkButtonClickListener(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showNoConnectionDlgFragment()V
    .locals 5

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

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 6
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPlaylist_is_not_working()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->noConnectionDlgFragment:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    .line 8
    new-instance v3, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v4}, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->setOnRetryClickListener(Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment$OnRetryClickListener;)V

    .line 9
    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->noConnectionDlgFragment:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public OnGetResponseResult(Lorg/json/JSONObject;I)V
    .locals 3

    if-eqz p1, :cond_1

    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->selectedModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    if-eqz p1, :cond_1

    .line 2
    iget-object p2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->urlModelList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->portalAdapter:Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;

    iget-object p2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->urlModelList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->setData(Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    iget-object p2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->urlModelList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/models/AppInfoModel;->setResult(Ljava/util/List;)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceAppInfo(Lcom/nettv/livestore/models/AppInfoModel;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-static {p1}, Lcom/nettv/livestore/utils/Utils;->saveToFile(Lcom/nettv/livestore/models/AppInfoModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_1
    const-string v2, "status"

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getActivate_success()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/models/AppInfoModel;->setIs_trial(I)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/models/AppInfoModel;->setIs_google_pay(Z)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceIsPlaylistChanged(Z)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceAppInfo(Lcom/nettv/livestore/models/AppInfoModel;)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/models/AppInfoModel;->setIs_trial(I)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/models/AppInfoModel;->setIs_google_pay(Z)V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceIsPlaylistChanged(Z)V

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceAppInfo(Lcom/nettv/livestore/models/AppInfoModel;)V

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :catch_1
    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->focused_position:I

    rem-int/lit8 v1, v0, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->urlModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 6
    :pswitch_1
    iget v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->focused_position:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->urlModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-le v0, v1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 9
    :pswitch_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_pay:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->recycler_playlist:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 12
    :cond_1
    iget-boolean v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->is_home:Z

    if-eqz v0, :cond_2

    .line 13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 16
    :cond_2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->showExitDlgFragment()V

    return v2

    .line 17
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final doNextTask(Z)V
    .locals 4

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->progress_bar:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLastPlaylistDate(J)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->playlist_position:I

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferencePlaylistPosition(I)V

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/HomeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->progress_bar:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-direct {p0}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->showNoConnectionDlgFragment()V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0e0020

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0e0021

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 6
    :goto_0
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 7
    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceAppInfo()Lcom/nettv/livestore/models/AppInfoModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->urlModelList:Ljava/util/List;

    .line 9
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getPlaylistPosition(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->playlist_position:I

    .line 10
    iput p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->focused_position:I

    .line 11
    :cond_1
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 12
    invoke-direct {p0}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->initView()V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_home"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->is_home:Z

    .line 14
    invoke-virtual {p0, v1}, Lcom/nettv/livestore/apps/BaseActivity;->setStop(Z)V

    .line 15
    invoke-static {v1}, Lcom/nettv/livestore/apps/BaseActivity;->setBusy(Z)V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->urlModelList:Ljava/util/List;

    if-nez p1, :cond_2

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->urlModelList:Ljava/util/List;

    .line 18
    :cond_2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->checkDescription()V

    .line 19
    new-instance p1, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->urlModelList:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->playlist_position:I

    new-instance v3, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0, p0, v2, v3}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;-><init>(Ljava/util/List;Landroid/content/Context;ILkotlin/jvm/functions/Function3;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->portalAdapter:Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->recycler_playlist:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->portalAdapter:Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->recycler_playlist:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->recycler_playlist:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->playlist_position:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    return-void
.end method
