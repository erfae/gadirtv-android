.class public Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AccountDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/AccountDlgFragment$PayButtonClickListener;
    }
.end annotation


# instance fields
.field public appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

.field public btn_pay:Landroid/widget/Button;

.field public context:Landroid/content/Context;

.field public expire_format:Ljava/text/SimpleDateFormat;

.field public expired_mils:J

.field public listener:Lcom/nettv/livestore/dlgfragment/AccountDlgFragment$PayButtonClickListener;

.field public loginModel:Lcom/nettv/livestore/models/LoginModel;

.field public sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public str_account:Landroid/widget/TextView;

.field public str_device_key:Landroid/widget/TextView;

.field public str_expire:Landroid/widget/TextView;

.field public str_mac:Landroid/widget/TextView;

.field public str_playlist_expire:Landroid/widget/TextView;

.field public str_state:Landroid/widget/TextView;

.field public str_username:Landroid/widget/TextView;

.field public txt_active_con:Landroid/widget/TextView;

.field public txt_device_key:Landroid/widget/TextView;

.field public txt_expire:Landroid/widget/TextView;

.field public txt_mac:Landroid/widget/TextView;

.field public txt_max_con:Landroid/widget/TextView;

.field public txt_playlist_expire:Landroid/widget/TextView;

.field public txt_state:Landroid/widget/TextView;

.field public txt_username:Landroid/widget/TextView;

.field public view_click:Landroid/view/View;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$ScmJvofvmXiO6cLbpbFTOSk0p6o(Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jqYcQJk8VaB4lOtvRPk6lr1Xi1k(Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->expire_format:Ljava/text/SimpleDateFormat;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->expired_mils:J

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f0b0354

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->str_account:Landroid/widget/TextView;

    const v0, 0x7f0b0378

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->str_username:Landroid/widget/TextView;

    const v0, 0x7f0b0367

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->str_mac:Landroid/widget/TextView;

    const v0, 0x7f0b0372

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->str_state:Landroid/widget/TextView;

    const v0, 0x7f0b0361

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->str_expire:Landroid/widget/TextView;

    const v0, 0x7f0b035e

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->str_device_key:Landroid/widget/TextView;

    const v0, 0x7f0b035d

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0b036a

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0b036e

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->str_playlist_expire:Landroid/widget/TextView;

    const v0, 0x7f0b0419

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->view_click:Landroid/view/View;

    const v0, 0x7f0b0401

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_username:Landroid/widget/TextView;

    const v0, 0x7f0b03de

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_mac:Landroid/widget/TextView;

    const v0, 0x7f0b03fa

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_state:Landroid/widget/TextView;

    const v0, 0x7f0b03d2

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_expire:Landroid/widget/TextView;

    const v0, 0x7f0b03cc

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_device_key:Landroid/widget/TextView;

    const v0, 0x7f0b03c6

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_active_con:Landroid/widget/TextView;

    const v0, 0x7f0b03e0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_max_con:Landroid/widget/TextView;

    const v0, 0x7f0b03eb

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_playlist_expire:Landroid/widget/TextView;

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->view_click:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0097

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->btn_pay:Landroid/widget/Button;

    .line 21
    new-instance v0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/AccountDlgFragment$PayButtonClickListener;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment$PayButtonClickListener;->onPayButtonClicked()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;
    .registers 2

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f14013e

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    const p3, 0x7f0e0055

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->initView(Landroid/view/View;)V

    .line 3
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 4
    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceAppInfo()Lcom/nettv/livestore/models/AppInfoModel;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLoginModel()Lcom/nettv/livestore/models/LoginModel;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->loginModel:Lcom/nettv/livestore/models/LoginModel;

    .line 6
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p2

    if-eqz p2, :cond_41

    .line 7
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_username:Landroid/widget/TextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_active_con:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_max_con:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_playlist_expire:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_73

    .line 11
    :cond_41
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->loginModel:Lcom/nettv/livestore/models/LoginModel;

    if-eqz p2, :cond_73

    .line 12
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_username:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/LoginModel;->getUsername()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_active_con:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->loginModel:Lcom/nettv/livestore/models/LoginModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/LoginModel;->getActive_cons()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_max_con:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->loginModel:Lcom/nettv/livestore/models/LoginModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/LoginModel;->getMax_connections()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_playlist_expire:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->loginModel:Lcom/nettv/livestore/models/LoginModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/LoginModel;->getExp_date()Ljava/lang/Long;

    move-result-object p3

    invoke-static {p3}, Lcom/nettv/livestore/utils/Utils;->getDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_73
    :goto_73
    :try_start_73
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->expire_format:Ljava/text/SimpleDateFormat;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/AppInfoModel;->getExpiredDate()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 17
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->expired_mils:J
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    const-wide/16 p2, 0x0

    .line 18
    iput-wide p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->expired_mils:J

    .line 19
    :goto_8a
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_mac:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMacAddress()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/AppInfoModel;->getIs_trial()I

    move-result p2

    const/4 p3, 0x2

    const/16 v0, 0x8

    if-eq p2, p3, :cond_c9

    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/AppInfoModel;->isIs_google_pay()Z

    move-result p2

    if-nez p2, :cond_c9

    iget-wide p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->expired_mils:J

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sub-long/2addr p2, v1

    const-wide/32 v1, 0x240c8400

    cmp-long v3, p2, v1

    if-lez v3, :cond_bc

    goto :goto_c9

    .line 21
    :cond_bc
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_state:Landroid/widget/TextView;

    const-string p3, "Free Trial"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d5

    .line 23
    :cond_c9
    :goto_c9
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_state:Landroid/widget/TextView;

    const-string p3, "Activate"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :goto_d5
    invoke-static {}, Lcom/nettv/livestore/utils/Utils;->IsAmazonDevice()Z

    move-result p2

    if-eqz p2, :cond_e0

    .line 26
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->btn_pay:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :cond_e0
    :try_start_e0
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_expire:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/AppInfoModel;->getExpiredDate()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_eb} :catch_ec

    goto :goto_f3

    .line 28
    :catch_ec
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_expire:Landroid/widget/TextView;

    const-string p3, "unlimited"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :goto_f3
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->txt_device_key:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/AppInfoModel;->getDevice_key()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 31
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->str_account:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getAccount()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->str_username:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getUsername()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->str_mac:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getMac_address()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->str_expire:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getExpire_date()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->str_state:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getApp_status()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->str_device_key:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getDevice_key()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->str_playlist_expire:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getPlaylist_expire_date()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->btn_pay:Landroid/widget/Button;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getPay_with_google_pay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(\u20ac"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/AppInfoModel;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public setOnPayButtonClickListener(Lcom/nettv/livestore/dlgfragment/AccountDlgFragment$PayButtonClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/AccountDlgFragment$PayButtonClickListener;

    return-void
.end method
