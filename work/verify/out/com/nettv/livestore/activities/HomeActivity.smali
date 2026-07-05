.class public Lcom/nettv/livestore/activities/HomeActivity;
.super Lcom/nettv/livestore/apps/BaseActivity;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;


# instance fields
.field public accountDlgFragment:Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;

.field public appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

.field public exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

.field public ly_account:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public ly_ads:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public ly_change:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public ly_exit:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public ly_live:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public ly_movie:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public ly_reload:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public ly_series:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public ly_setting:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public noConnectionDlgFragment:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public progressBar:Lpl/droidsonroids/gif/GifImageView;

.field public someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public txt_account:Landroid/widget/TextView;

.field public txt_change:Landroid/widget/TextView;

.field public txt_exit:Landroid/widget/TextView;

.field public txt_live:Landroid/widget/TextView;

.field public txt_movie:Landroid/widget/TextView;

.field public txt_reload:Landroid/widget/TextView;

.field public txt_series:Landroid/widget/TextView;

.field public txt_setting:Landroid/widget/TextView;

.field public txt_time:Landroid/widget/TextView;

.field public txt_version:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$8dLAsCLnIoqSTMXsrWtSMZ_1ncw(Lcom/nettv/livestore/activities/HomeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->lambda$showAccountDlgFragment$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ELz0JjTlgDxxQENyNhYjh8135yw(Lcom/nettv/livestore/activities/HomeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->lambda$showNoConnectionDlgFragment$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$N2B7_VhhC-MIHlP61VesE08sdBw(Lcom/nettv/livestore/activities/HomeActivity;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/HomeActivity;->lambda$new$0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nettv/livestore/activities/HomeActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/apps/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 3
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/nettv/livestore/activities/HomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/HomeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/HomeActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private changeStringsInApp()V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getLive_tv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_movie:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_series:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_account:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_change:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getChange_playlist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_setting:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getSettings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_reload:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getReload_portal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_exit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getExit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getCurrentPlaylistExpiredDate()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    const-string v1, "Undefined."

    if-eqz v0, :cond_b

    return-object v1

    .line 2
    :cond_b
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLoginModel()Lcom/nettv/livestore/models/LoginModel;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 3
    invoke-virtual {v0}, Lcom/nettv/livestore/models/LoginModel;->getExp_date()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/nettv/livestore/utils/Utils;->getDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    return-object v1
.end method

.method private initView()V
    .registers 2

    const v0, 0x7f0b03fe

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_time:Landroid/widget/TextView;

    const v0, 0x7f0b0245

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_live:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0249

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_movie:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0250

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_series:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b022f

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_account:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0239

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_change:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0251

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_setting:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b024c

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_ads:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b052f

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_reload:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0240

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_exit:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b03dc

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_live:Landroid/widget/TextView;

    const v0, 0x7f0b03e2

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_movie:Landroid/widget/TextView;

    const v0, 0x7f0b03f7

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_series:Landroid/widget/TextView;

    const v0, 0x7f0b03b6

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_account:Landroid/widget/TextView;

    const v0, 0x7f0b03c2

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_change:Landroid/widget/TextView;

    const v0, 0x7f0b03f8

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_setting:Landroid/widget/TextView;

    const v0, 0x7f0b03f1

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_reload:Landroid/widget/TextView;

    const v0, 0x7f0b03d1

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_exit:Landroid/widget/TextView;

    const v0, 0x7f0b0402

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_version:Landroid/widget/TextView;

    const v0, 0x7f0b02e2

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->progressBar:Lpl/droidsonroids/gif/GifImageView;

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_live:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_movie:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_series:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_account:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_change:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_setting:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_reload:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_exit:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_ads:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/activity/result/ActivityResult;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 2
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 3
    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->changeStringsInApp()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$showAccountDlgFragment$1()V
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->accountDlgFragment:Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showNoConnectionDlgFragment$2()V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_home"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private reloadPortal()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->progressBar:Lpl/droidsonroids/gif/GifImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getPlaylistPosition(Landroid/content/Context;)I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/HomeActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceAppInfo()Lcom/nettv/livestore/models/AppInfoModel;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/nettv/livestore/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6e

    .line 5
    invoke-virtual {v2}, Lcom/nettv/livestore/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    .line 6
    iget-object v2, p0, Lcom/nettv/livestore/activities/HomeActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLastPlaylistDate(J)V

    .line 7
    invoke-virtual {v0}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 8
    iget-object v2, p0, Lcom/nettv/livestore/activities/HomeActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceISM3U(Z)V

    .line 9
    invoke-virtual {v0}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p0, v0, v1}, Lcom/nettv/livestore/apps/BaseActivity;->goToLogin(Ljava/lang/String;Lcom/nettv/livestore/models/WordModels;)V

    goto :goto_6e

    .line 10
    :cond_46
    invoke-virtual {v0}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nettv/livestore/helper/GetSharedInfo;->checkXUILink(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 11
    iget-object v2, p0, Lcom/nettv/livestore/activities/HomeActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceISM3U(Z)V

    .line 12
    invoke-virtual {v0}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p0, v0, v1}, Lcom/nettv/livestore/apps/BaseActivity;->goToXUILogin(Ljava/lang/String;Lcom/nettv/livestore/models/WordModels;)V

    goto :goto_6e

    .line 13
    :cond_5f
    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceISM3U(Z)V

    .line 14
    invoke-virtual {v0}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p0, v0, v1}, Lcom/nettv/livestore/apps/BaseActivity;->reloadM3UData(Ljava/lang/String;Lcom/nettv/livestore/models/WordModels;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method private showAccountDlgFragment()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_account"

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
    invoke-static {p0}, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->newInstance(Landroid/content/Context;)Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->accountDlgFragment:Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/HomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/HomeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/HomeActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;->setOnPayButtonClickListener(Lcom/nettv/livestore/dlgfragment/AccountDlgFragment$PayButtonClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->accountDlgFragment:Lcom/nettv/livestore/dlgfragment/AccountDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showExitDlgFragment()V
    .registers 7

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

    if-eqz v3, :cond_15

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getExit()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getExit_description()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/HomeActivity$1;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/HomeActivity$1;-><init>(Lcom/nettv/livestore/activities/HomeActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->setOkButtonClickListener(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showNoConnectionDlgFragment()V
    .registers 5

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
    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPlaylist_is_not_working()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->noConnectionDlgFragment:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/HomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/HomeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/HomeActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->setOnRetryClickListener(Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment$OnRetryClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->noConnectionDlgFragment:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showWaitToast()V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getPlaylist_is_loading()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private syncParentControl()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMacAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceParentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nettv/livestore/utils/Security;->getParentData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/nettv/livestore/remote/GetDataRequest;

    const/16 v2, 0xbb8

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/remote/GetDataRequest;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-static {v0}, Lcom/nettv/livestore/utils/Security;->getJsonData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/nettv/livestore/apps/Constants;->second_update_control:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nettv/livestore/remote/GetDataRequest;->getResponse(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p0}, Lcom/nettv/livestore/remote/GetDataRequest;->setOnGetResponseListener(Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;)V

    return-void
.end method


# virtual methods
.method public OnGetResponseResult(Lorg/json/JSONObject;I)V
    .registers 3

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_12

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 3
    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->showExitDlgFragment()V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_12
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final doNextTask(Z)V
    .registers 7

    const/16 v0, 0x8

    if-eqz p1, :cond_24

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLastPlaylistDate(J)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->progressBar:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getPortal_loaded_successfully()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2c

    .line 4
    :cond_24
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->progressBar:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->showNoConnectionDlgFragment()V

    :goto_2c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_102

    goto/16 :goto_100

    .line 2
    :sswitch_9
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->progressBar:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_16

    .line 3
    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->showWaitToast()V

    goto/16 :goto_100

    .line 4
    :cond_16
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/SettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto/16 :goto_100

    .line 5
    :sswitch_24
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->progressBar:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_31

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->showWaitToast()V

    goto/16 :goto_100

    .line 7
    :cond_31
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceIsGrid()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 8
    sget-object p1, Lcom/nettv/livestore/apps/HomeType;->series:Lcom/nettv/livestore/apps/HomeType;

    sput-object p1, Lcom/nettv/livestore/apps/LTVApp;->homeType:Lcom/nettv/livestore/apps/HomeType;

    .line 9
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/CategoryActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_100

    .line 11
    :cond_49
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/SeriesActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_100

    .line 13
    :sswitch_55
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->progressBar:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_62

    .line 14
    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->showWaitToast()V

    goto/16 :goto_100

    .line 15
    :cond_62
    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->reloadPortal()V

    goto/16 :goto_100

    .line 16
    :sswitch_67
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->progressBar:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_74

    .line 17
    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->showWaitToast()V

    goto/16 :goto_100

    .line 18
    :cond_74
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceIsGrid()Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 19
    sget-object p1, Lcom/nettv/livestore/apps/HomeType;->movies:Lcom/nettv/livestore/apps/HomeType;

    sput-object p1, Lcom/nettv/livestore/apps/LTVApp;->homeType:Lcom/nettv/livestore/apps/HomeType;

    .line 20
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/CategoryActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_100

    .line 22
    :cond_8c
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/MovieActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_100

    .line 24
    :sswitch_97
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->progressBar:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a3

    .line 25
    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->showWaitToast()V

    goto :goto_100

    .line 26
    :cond_a3
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceIsGrid()Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 27
    sget-object p1, Lcom/nettv/livestore/apps/HomeType;->live:Lcom/nettv/livestore/apps/HomeType;

    sput-object p1, Lcom/nettv/livestore/apps/LTVApp;->homeType:Lcom/nettv/livestore/apps/HomeType;

    .line 28
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/CategoryActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_100

    .line 30
    :cond_ba
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_cb

    .line 31
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/LiveActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_100

    .line 33
    :cond_cb
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_100

    .line 35
    :sswitch_d6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->showExitDlgFragment()V

    goto :goto_100

    :sswitch_da
    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->setStop(Z)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "is_home"

    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_100

    .line 42
    :sswitch_f6
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/SportActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_100
    return-void

    nop

    :sswitch_data_102
    .sparse-switch
        0x7f0b022f -> :sswitch_f6
        0x7f0b0239 -> :sswitch_da
        0x7f0b0240 -> :sswitch_d6
        0x7f0b0245 -> :sswitch_97
        0x7f0b0249 -> :sswitch_67
        0x7f0b024c -> :sswitch_55
        0x7f0b0250 -> :sswitch_24
        0x7f0b0251 -> :sswitch_9
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0022

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceAppInfo()Lcom/nettv/livestore/models/AppInfoModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->initView()V

    .line 7
    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->changeStringsInApp()V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_time:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/activities/HomeActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getCurrent_expired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->getCurrentPlaylistExpiredDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget-object p1, Lcom/nettv/livestore/apps/LTVApp;->instance:Lcom/nettv/livestore/apps/LTVApp;

    invoke-virtual {p1}, Lcom/nettv/livestore/apps/LTVApp;->versionCheck()V

    .line 10
    sget-object p1, Lcom/nettv/livestore/apps/LTVApp;->instance:Lcom/nettv/livestore/apps/LTVApp;

    invoke-virtual {p1}, Lcom/nettv/livestore/apps/LTVApp;->loadVersion()V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->txt_version:Landroid/widget/TextView;

    const-string v0, "v"

    .line 12
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13
    sget-object v1, Lcom/nettv/livestore/apps/LTVApp;->version_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel;->getParent_synced()I

    move-result p1

    if-nez p1, :cond_6b

    .line 15
    invoke-direct {p0}, Lcom/nettv/livestore/activities/HomeActivity;->syncParentControl()V

    .line 16
    :cond_6b
    iget-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity;->ly_live:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const v0, 0x7f0b053f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance p0, Lcom/nettv/livestore/activities/Bet3AdsActivity;

    invoke-direct {p0}, Lcom/nettv/livestore/activities/Bet3AdsActivity;-><init>()V

    invoke-virtual {v1, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string p1, "http://theths.co.uk/latestapps/ibo/api/main_movies.php"

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/high16 p0, 0x7f000000

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
