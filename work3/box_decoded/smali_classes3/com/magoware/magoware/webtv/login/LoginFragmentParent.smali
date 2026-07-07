.class public abstract Lcom/magoware/magoware/webtv/login/LoginFragmentParent;
.super Landroidx/fragment/app/Fragment;
.source "LoginFragmentParent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COUNTDOWN_INTERVAL:I = 0x3e8

.field private static final COUNTDOWN_START:I = 0x7530

.field public static final PHONE_LOGIN_REQUEST_CODE:I = 0x21

.field private static final SMS_SIGN_UP_REQUEST_CODE:I = 0x1

.field public static from_GCM:Z

.field public static is_visible:Z

.field private static lock_static:Landroid/os/PowerManager$WakeLock;

.field public static username:Landroid/widget/EditText;

.field private static wifi_lock:Landroid/net/wifi/WifiManager$WifiLock;


# instance fields
.field private final SHOW_CUSTOM_DIALOG_TAG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final URLregex:Ljava/lang/String;

.field private appVersion:Landroid/widget/TextView;

.field private appVersionNameLinear:Landroid/widget/LinearLayout;

.field private application_model:Landroid/widget/TextView;

.field private final avenirMedium:Landroid/graphics/Typeface;

.field private button_guest:Landroid/widget/Button;

.field private conf:Landroid/content/res/Configuration;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private final credentialsReceiver:Landroid/content/BroadcastReceiver;

.field private customDialogTitle:Ljava/lang/String;

.field private dialogTitle:Landroid/widget/TextView;

.field private dm:Landroid/util/DisplayMetrics;

.field private fragment:Landroidx/fragment/app/DialogFragment;

.field private guest_layout:Landroid/widget/RelativeLayout;

.field protected helpString:Landroid/widget/TextView;

.field private isCountDownRunning:Z

.field private isGuestUser:Z

.field private final isLoginWithSms:Z

.field private isMultiCompanySelected:Z

.field private language_code:Ljava/lang/String;

.field protected loginAppsLabel:Landroid/widget/TextView;

.field private loginBackgroundImage:Landroid/widget/ImageView;

.field private loginButton:Landroid/widget/Button;

.field public loginListener:Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;

.field protected loginNetworkLabel:Landroid/widget/TextView;

.field private loginProgressDialog:Landroid/app/ProgressDialog;

.field protected login_all_apps:Landroid/widget/ImageView;

.field protected login_help_icon:Landroid/widget/ImageView;

.field protected login_network_test:Landroid/widget/ImageView;

.field private logoView:Landroid/widget/ImageView;

.field private logoutOtherDevices:Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

.field private logoutProgressDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field private mPassword:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;

.field protected magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private mainActivity:Lcom/magoware/magoware/webtv/MainActivity;

.field private menu_list:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObject;",
            ">;"
        }
    .end annotation
.end field

.field private final networkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private noInternetAlertDialogGeneral:Landroid/app/AlertDialog;

.field private noInternetButtonsLayout:Landroid/widget/LinearLayout;

.field private noInternetDialog:Landroid/app/Dialog;

.field private noInternetProgressLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field protected password:Landroid/widget/EditText;

.field private res:Landroid/content/res/Resources;

.field protected resetPassword:Landroid/widget/TextView;

.field private serverAddress:Landroid/widget/EditText;

.field protected signUpTextView:Landroid/widget/TextView;

.field private splashScreenImage:Landroid/widget/ImageView;

.field private version_txt:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 123
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 134
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Avenir-Medium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->avenirMedium:Landroid/graphics/Typeface;

    const-string v0, "^(https?|ftp|http)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]"

    .line 142
    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->URLregex:Ljava/lang/String;

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->isGuestUser:Z

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->isCountDownRunning:Z

    .line 171
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->isLoginWithSms:Z

    .line 172
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->isMultiCompanySelected:Z

    const-string v0, "LoginFragment"

    .line 175
    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->TAG:Ljava/lang/String;

    const-string v0, "show_custom_dialog_tag"

    .line 176
    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->SHOW_CUSTOM_DIALOG_TAG:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$1;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    new-instance v0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$2;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$2;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->credentialsReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroid/os/CountDownTimer;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->isCountDownRunning:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroid/widget/LinearLayout;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->noInternetButtonsLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Z)Z
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->isCountDownRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Landroid/app/Dialog;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->dismissDialogWithTryCatch(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroid/app/Dialog;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->noInternetDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Ljava/util/HashMap;
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getLoginParameters()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mUsername:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->tryLogin(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroid/widget/TextView;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->dialogTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->noInternetProgressLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method private activateNoInternetProcedure()V
    .locals 4

    .line 1087
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->isCountDownRunning:Z

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->noInternetDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1091
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->noInternetDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1093
    :cond_1
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1094
    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->noInternetDialog:Landroid/app/Dialog;

    .line 1095
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->showNoInternetDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->noInternetDialog:Landroid/app/Dialog;

    .line 1096
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1097
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 1099
    :cond_2
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1100
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->showGeneralAlertDialogNoInternet()V

    :cond_3
    :goto_0
    return-void
.end method

.method private checkServerAddress(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "server"
        }
    .end annotation

    const-string v0, ""

    .line 1198
    invoke-static {p1, v0}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "^(https?|ftp|http)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]"

    invoke-static {p1, v1}, Lcom/framework/utilityframe/utility/utility;->MatchCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1199
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SERVER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1200
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SERVER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1202
    :cond_1
    sget-object v1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SERVER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1203
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SERVER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_2
    const/4 v1, 0x1

    .line 1204
    sput-boolean v1, Lcom/magoware/magoware/webtv/global/Global;->first_time_run:Z

    .line 1205
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1206
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 1207
    :cond_3
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1208
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 1209
    :cond_4
    invoke-static {p1, v0}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1210
    sget-object p1, Lcom/magoware/magoware/webtv/util/Server;->currentServer:Ljava/lang/String;

    sput-object p1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    .line 1211
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SERVER:Ljava/lang/String;

    sget-object v1, Lcom/magoware/magoware/webtv/util/Server;->currentServer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1213
    :cond_5
    sput-object p1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    .line 1214
    sput-object p1, Lcom/magoware/magoware/webtv/util/Server;->Log_Server:Ljava/lang/String;

    .line 1215
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1218
    :cond_6
    invoke-static {p1, v0}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1219
    sget-object p1, Lcom/magoware/magoware/webtv/util/Server;->currentServer:Ljava/lang/String;

    sput-object p1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    .line 1220
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SERVER:Ljava/lang/String;

    sget-object v1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public static convertImplicitIntentToExplicitIntent(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "implicitIntent",
            "context"
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 217
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 221
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 223
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private disableWIFISleep()V
    .locals 3

    .line 480
    :try_start_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sleep_policy"

    const/4 v2, 0x2

    .line 481
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 485
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private dismissDialogWithTryCatch(Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 991
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 997
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 995
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 993
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private dismissLoginProgressDialog()V
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 1237
    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private displayAppModel()V
    .locals 6

    .line 1116
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isHomePageView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1117
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b06bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->version_txt:Landroid/widget/TextView;

    .line 1118
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->application_model:Landroid/widget/TextView;

    .line 1119
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b00c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->appVersionNameLinear:Landroid/widget/LinearLayout;

    .line 1121
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->version_txt:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f140477

    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    goto :goto_1

    :pswitch_1
    const-string v3, "4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :pswitch_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_3
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 1131
    :pswitch_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->application_model:Landroid/widget/TextView;

    const-string v1, " -S-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1128
    :pswitch_5
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->application_model:Landroid/widget/TextView;

    const-string v1, " -M-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1125
    :pswitch_6
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->application_model:Landroid/widget/TextView;

    const-string v1, " -B-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private findViews()V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b03bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoView:Landroid/widget/ImageView;

    .line 630
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b06b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->username:Landroid/widget/EditText;

    .line 631
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b0521

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->password:Landroid/widget/EditText;

    .line 633
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b0539

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->resetPassword:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 634
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b05aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->serverAddress:Landroid/widget/EditText;

    .line 636
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b03b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginButton:Landroid/widget/Button;

    .line 637
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b03b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginBackgroundImage:Landroid/widget/ImageView;

    .line 638
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b0113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->button_guest:Landroid/widget/Button;

    .line 639
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b02f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->guest_layout:Landroid/widget/RelativeLayout;

    .line 641
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b00c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->appVersion:Landroid/widget/TextView;

    return-void
.end method

.method private fromGCMLogin()V
    .locals 3

    .line 1020
    sget-boolean v0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->from_GCM:Z

    if-eqz v0, :cond_2

    .line 1021
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1022
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isHomePageView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 1024
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1025
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/homepage/smarttv/MainActivity2SmartTv;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 1027
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const v1, 0x10008000

    .line 1029
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1030
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 1032
    sput-boolean v0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->from_GCM:Z

    :cond_2
    return-void
.end method

.method private getDeviceMenu()V
    .locals 5

    .line 850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 852
    iget-object v2, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getDeviceMenuObservable()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$EGI5S3cMEcm9TPzATI8au43ljak;

    invoke-direct {v4, p0, v0, v1}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$EGI5S3cMEcm9TPzATI8au43ljak;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;J)V

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getLoginParameters()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 515
    sget-boolean v0, Lcom/magoware/magoware/webtv/global/Global;->first_time_run:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mUsername:Ljava/lang/String;

    .line 516
    invoke-static {}, Lcom/magoware/magoware/webtv/login/Login;->getEncryptedUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getAuthParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 517
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getLoginParametersForFirstTimeRun()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getLoginParametersForFirstTimeRun()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1038
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->TIBOUSERNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->TIBOUSERNAME:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mUsername:Ljava/lang/String;

    .line 1040
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->TIBOPASSWORD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mPassword:Ljava/lang/String;

    .line 1041
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->TIBOUSERNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 1043
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->REMOTE_LOGIN_USER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 1044
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->REMOTE_LOGIN_USER:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mUsername:Ljava/lang/String;

    .line 1045
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->REMOTE_LOGIN_PASS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mPassword:Ljava/lang/String;

    .line 1046
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->REMOTE_LOGIN_USER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 1047
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->REMOTE_LOGIN_PASS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 1050
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1051
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    .line 1052
    sput-boolean v0, Lcom/magoware/magoware/webtv/global/Global;->first_time_run:Z

    .line 1054
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mUsername:Ljava/lang/String;

    .line 1055
    iget-object v2, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mPassword:Ljava/lang/String;

    .line 1056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1058
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1059
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1061
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "username="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";password="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";boxid="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";appid="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";timestamp="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";mac_address="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1065
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TUTVNOW:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->getLocale()Ljava/util/Locale;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    .line 1067
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1068
    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->COMPANY_ID:Ljava/lang/String;

    sget v5, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "auth"

    .line 1069
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    const-string v4, "macaddress"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    const-string v4, "appid"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appversion"

    .line 1072
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "api_version"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "language"

    .line 1074
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getNetType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ntype"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v0, Lcom/magoware/magoware/webtv/global/Global;->operating_system:Ljava/lang/String;

    const-string v1, "os"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    sget-object v0, Lcom/magoware/magoware/webtv/global/Global;->screensize:Ljava/lang/String;

    const-string v1, "screensize"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v0, Lcom/magoware/magoware/webtv/global/Global;->devicebrand:Ljava/lang/String;

    const-string v1, "devicebrand"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object v0, Lcom/magoware/magoware/webtv/global/Global;->firmware_version:Ljava/lang/String;

    const-string v1, "firmwareversion"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isHDMIPluggedIn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hdmi"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->getTimezone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_timezone"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    sget-object v0, Lcom/magoware/magoware/webtv/global/Global;->applicationName:Ljava/lang/String;

    const-string v1, "app_name"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method private getSmsCode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "username"
        }
    .end annotation

    .line 751
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getSmsCodeObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$tAuMUzC_aQ_efRLaDAY-GPW3ydo;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$tAuMUzC_aQ_efRLaDAY-GPW3ydo;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initGoTvLoginScreen()V
    .locals 4

    .line 965
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GOTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 967
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 968
    sget-object v1, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->username:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 969
    sget-object v1, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->username:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 971
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->TIBOPASSWORD:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mPassword:Ljava/lang/String;

    .line 972
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mPassword:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mPassword:Ljava/lang/String;

    .line 973
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->password:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private initMobileView()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b05d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 660
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$W884ZXbqsUwlHt3K43QDX14rGV8;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$W884ZXbqsUwlHt3K43QDX14rGV8;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b03ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$6MoLhD4Wciju8tChQ1_xFEji4ys;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$6MoLhD4Wciju8tChQ1_xFEji4ys;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showLogOutDevicesDialog$21(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$showLogOutDevicesDialog$23(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$showQrCode$16(Landroid/widget/ImageView;Lcom/google/firebase/iid/InstanceIdResult;)V
    .locals 4

    .line 716
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->get()Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/firebase/iid/InstanceIdResult;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->getQRCodeData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 718
    new-instance v0, Landroidmads/library/qrgenearator/QRGEncoder;

    sget v1, Lcom/magoware/magoware/webtv/global/Global;->screenHeight:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    const/4 v2, 0x0

    const-string v3, "TEXT_TYPE"

    invoke-direct {v0, p1, v2, v3, v1}, Landroidmads/library/qrgenearator/QRGEncoder;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    const/high16 p1, -0x1000000

    .line 719
    invoke-virtual {v0, p1}, Landroidmads/library/qrgenearator/QRGEncoder;->setColorBlack(I)V

    const/4 p1, -0x1

    .line 720
    invoke-virtual {v0, p1}, Landroidmads/library/qrgenearator/QRGEncoder;->setColorWhite(I)V

    .line 722
    :try_start_0
    invoke-virtual {v0}, Landroidmads/library/qrgenearator/QRGEncoder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 723
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 725
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private logOutOtherDevices()V
    .locals 5

    .line 890
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mainActivity:Lcom/magoware/magoware/webtv/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14024b

    .line 891
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 893
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 894
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 898
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->username:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 899
    iget-object v2, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 901
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->REMOTE_LOGIN_USER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 902
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->REMOTE_LOGIN_USER:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->REMOTE_LOGIN_PASS:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 905
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->get()Lcom/magoware/magoware/webtv/util/NetworkUtils;

    move-result-object v1

    invoke-static {v0, v2}, Lcom/magoware/magoware/webtv/util/Utils;->getAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->httpRequestParameters(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 906
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->logoutOtherDevicesObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$jCrpbi_uGTsaaSCwlJTLM_Mf_fs;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$jCrpbi_uGTsaaSCwlJTLM_Mf_fs;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private login(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "params",
            "_username",
            "_password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 760
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->openLoginProgressDialog()V

    .line 764
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    const-string v1, "apiv2/credentials/login"

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->loginObservable(Ljava/lang/String;Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$EbTR6aZNXe79jmMnjBxBgKWFBpY;

    invoke-direct {v1, p0, p2, p3}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$EbTR6aZNXe79jmMnjBxBgKWFBpY;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private loginMultiCompany(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "params",
            "_username",
            "_password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, p2, p3}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->loginMultiCompany(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$4pMCEX-9_nsXzQeRoo_gPGxFwWo;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$4pMCEX-9_nsXzQeRoo_gPGxFwWo;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private openLoginProgressDialog()V
    .locals 2

    .line 1225
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f140476

    .line 1226
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1227
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1228
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1229
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method private proceedToNextActivity()V
    .locals 1

    .line 1010
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->fromGCMLogin()V

    .line 1011
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/login/Login;->getIntentForSuccessfulLogin(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1012
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->startActivity(Landroid/content/Intent;)V

    .line 1013
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private sendFirebaseToken()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Long;

    .line 570
    invoke-static {v0}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->httpRequestParameters([Ljava/lang/Long;)Ljava/util/HashMap;

    move-result-object v0

    .line 571
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$y1pA1Vr2wirjsJLuwUh7B_GGnSA;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$y1pA1Vr2wirjsJLuwUh7B_GGnSA;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Ljava/util/HashMap;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private sendToSettingsDialog()V
    .locals 4

    .line 734
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1500f3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1403b7

    .line 735
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1400c8

    .line 736
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$Q7qsHDXKVAOXG-EQsKKeBnpeP4M;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$Q7qsHDXKVAOXG-EQsKKeBnpeP4M;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    const v2, 0x7f1402ff

    .line 737
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$riTxeoCT9wKKvlbD21RPnR1IU9I;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$riTxeoCT9wKKvlbD21RPnR1IU9I;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    const v2, 0x7f140083

    .line 739
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private setOnClickListeners()V
    .locals 2

    .line 1138
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginButton:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$33u9V4x-R4RqbzgzDfgj_yVkPiM;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$33u9V4x-R4RqbzgzDfgj_yVkPiM;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1155
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->button_guest:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$NmB9dWiZ-TXC8wdTwPNaFgJ6xFY;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$NmB9dWiZ-TXC8wdTwPNaFgJ6xFY;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1160
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->resetPassword:Landroid/widget/TextView;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$tlONn_FTE-o7EWCJABAFA_Gm3Lo;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$tlONn_FTE-o7EWCJABAFA_Gm3Lo;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showAppLogo()V
    .locals 4

    .line 268
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->LINEATV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginBackgroundImage:Landroid/widget/ImageView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 270
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isHomePageView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOGO_URL:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f0802eb

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 275
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOGO_URL:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 277
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 278
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v3, 0x1

    .line 279
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    .line 280
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 281
    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 282
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoView:Landroid/widget/ImageView;

    .line 283
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showGeneralAlertDialogNoInternet()V
    .locals 3

    .line 1002
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 1003
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14044f

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1004
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f140271

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    const/4 v2, 0x0

    .line 1005
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1006
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->noInternetAlertDialogGeneral:Landroid/app/AlertDialog;

    return-void
.end method

.method private showLogOutDevicesDialog(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 801
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutOtherDevices:Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    .line 802
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    const v1, 0x7f140257

    if-eqz v0, :cond_0

    .line 803
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutOtherDevices:Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f140256

    .line 804
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 805
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1403f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$rHhpNjCifgu-irtBbhyiNgOo_V8;->INSTANCE:Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$rHhpNjCifgu-irtBbhyiNgOo_V8;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 809
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 810
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutOtherDevices:Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 811
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 v0, -0x1

    .line 812
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 813
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0601f0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 814
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060086

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutOtherDevices:Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 817
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f14049c

    .line 818
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$Y6QMPKrzYFYViTx6zJ0WlzzYTvI;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$Y6QMPKrzYFYViTx6zJ0WlzzYTvI;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1402e2

    .line 820
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$nw0SOIFpdoOlVq9zwpHBNtncqxs;->INSTANCE:Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$nw0SOIFpdoOlVq9zwpHBNtncqxs;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 824
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method

.method private startCountDownTimer(Landroid/app/Dialog;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1243
    new-instance v7, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$3;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$3;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;JJLandroid/app/Dialog;)V

    iput-object v7, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->countDownTimer:Landroid/os/CountDownTimer;

    .line 1262
    invoke-virtual {v7}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const/4 p1, 0x1

    .line 1263
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->isCountDownRunning:Z

    return-void
.end method

.method private tryLogin(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "_username",
            "_password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 561
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->sendFirebaseToken()V

    .line 562
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->isMultiCompanySelected:Z

    if-nez v0, :cond_0

    .line 563
    invoke-direct {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginMultiCompany(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private validUsername(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "username"
        }
    .end annotation

    .line 922
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 923
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 925
    array-length v0, p1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f140323

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v3

    .line 929
    :cond_0
    aget-object v0, p1, v3

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->validUsernameCharNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->validUsernameNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->validUsernameNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 932
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private validUsernameCharNumber(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "charNumber"
        }
    .end annotation

    .line 936
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 940
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aget-char v2, v2, v1

    .line 941
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 942
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f140323

    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 946
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->validUsernameNumber(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private validUsernameNumber(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 950
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 951
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 955
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    aget-char v4, p1, v2

    .line 956
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 957
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f140323

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method


# virtual methods
.method protected customViewViala(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    return-void
.end method

.method protected customizeSTVLoginFromBox()V
    .locals 3

    .line 1186
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_help_icon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1187
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->helpString:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1189
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_help_icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    .line 1190
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 1191
    iget-object v2, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_help_icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_all_apps:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1194
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginAppsLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected abstract customizeViewForMagoware()V
.end method

.method protected abstract customizeViewForTibo()V
.end method

.method protected abstract customizeViewForYESNET()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 606
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 608
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 609
    sput-boolean v1, Lcom/magoware/magoware/webtv/homepage/smarttv/MainActivity2SmartTv;->force_remote:Z

    .line 610
    sput-boolean v0, Lcom/magoware/magoware/webtv/homepage/smarttv/MainActivity2SmartTv;->force_local:Z

    goto :goto_0

    .line 612
    :cond_0
    sput-boolean v1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->force_remote:Z

    .line 613
    sput-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->force_local:Z

    .line 615
    :goto_0
    sput-boolean v1, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->is_visible:Z

    return v0

    .line 619
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    .line 620
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->resetPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 625
    :cond_2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getAppVersion()Landroid/widget/TextView;
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->appVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getAuthParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 829
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 830
    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->COMPANY_ID:Ljava/lang/String;

    sget v2, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/util/Utils;->getAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "auth"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    const-string p2, "macaddress"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    sget-object p1, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    const-string p2, "appid"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string p2, "appversion"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getAndroidVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "api_version"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "language"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getNetType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ntype"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->operating_system:Ljava/lang/String;

    const-string p2, "os"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->screensize:Ljava/lang/String;

    const-string p2, "screensize"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->devicebrand:Ljava/lang/String;

    const-string p2, "devicebrand"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->firmware_version:Ljava/lang/String;

    const-string p2, "firmwareversion"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isHDMIPluggedIn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "hdmi"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->getTimezone()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "device_timezone"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->applicationName:Ljava/lang/String;

    const-string p2, "app_name"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getLayoutView()Landroid/view/View;
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    return-object v0
.end method

.method public getLoginButton()Landroid/widget/Button;
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getLoginListener()Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginListener:Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;

    return-object v0
.end method

.method public getLogoView()Landroid/widget/ImageView;
    .locals 1

    .line 1267
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getMainActivity()Lcom/magoware/magoware/webtv/MainActivity;
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mainActivity:Lcom/magoware/magoware/webtv/MainActivity;

    return-object v0
.end method

.method protected getOrientation()I
    .locals 1

    .line 978
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getServerAddress()Landroid/widget/EditText;
    .locals 1

    .line 1275
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->serverAddress:Landroid/widget/EditText;

    return-object v0
.end method

.method protected initTvView()V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginAppsLabel:Landroid/widget/TextView;

    .line 671
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b03b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginNetworkLabel:Landroid/widget/TextView;

    .line 672
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b03b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->helpString:Landroid/widget/TextView;

    .line 673
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b03b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_all_apps:Landroid/widget/ImageView;

    .line 674
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b03b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_network_test:Landroid/widget/ImageView;

    .line 675
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b03b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_help_icon:Landroid/widget/ImageView;

    .line 676
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b05d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->signUpTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 677
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->signUpTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$op4sba-mXfdHHPUm-U9tAClHK94;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$op4sba-mXfdHHPUm-U9tAClHK94;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->showQrCode()V

    .line 683
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->customizeSTVLoginFromBox()V

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_all_apps:Landroid/widget/ImageView;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$FqED3ULI2vEagHofi2UtdJf9SJ8;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$FqED3ULI2vEagHofi2UtdJf9SJ8;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 691
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_network_test:Landroid/widget/ImageView;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$iqxzGl6q7-YPPcagPEe5ruhNPQc;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$iqxzGl6q7-YPPcagPEe5ruhNPQc;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 695
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_help_icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$d1UrjrJsE80u8fz4qJKz8kJTYwY;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$d1UrjrJsE80u8fz4qJKz8kJTYwY;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 699
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_all_apps:Landroid/widget/ImageView;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$Dhm7WM5TyZdcCu7NQJHHxUBnhU4;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$Dhm7WM5TyZdcCu7NQJHHxUBnhU4;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_help_icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$9oET0lvsrjlGefkgfYjeNRDAY7U;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$9oET0lvsrjlGefkgfYjeNRDAY7U;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_network_test:Landroid/widget/ImageView;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$7GthK1w6LusCeRwfv1fnxN2zNWI;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$7GthK1w6LusCeRwfv1fnxN2zNWI;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .locals 1

    .line 645
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->setMenuBackgroundImage(I)V

    .line 646
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->showKeyboard()V

    .line 647
    invoke-static {}, Lcom/magoware/magoware/webtv/login/Login;->initVariables()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->userAuthentication()V

    .line 651
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 654
    :cond_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->initMobileView()V

    goto :goto_1

    .line 652
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->initTvView()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$getDeviceMenu$24$LoginFragmentParent(JLcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 3

    if-eqz p3, :cond_6

    .line 854
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 855
    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->menu_list:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget p3, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v0, 0x12c

    if-ge p3, v0, :cond_1

    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->menu_list:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget-object p3, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 856
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p3

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 857
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 859
    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->menu_list:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget-object p3, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    .line 860
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 862
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    .line 863
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 864
    invoke-static {p1, p2, v1, v2}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logMainMenuLoadingTime(JJ)V

    .line 866
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->menu_list:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    .line 867
    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->icon:Ljava/lang/String;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/util/Utils;->getFilenameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 868
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/fragment/app/FragmentActivity;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    .line 871
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->menu_list:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->menu_list:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 872
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->clearAll()V

    .line 873
    :cond_2
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->TIBOUSERNAME:Ljava/lang/String;

    sget-object p3, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->username:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->TIBOPASSWORD:Ljava/lang/String;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->password:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SERVER:Ljava/lang/String;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->serverAddress:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getVisibility()I

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->serverAddress:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_3
    sget-object p3, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, p2, p3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 878
    :cond_4
    iget-object p1, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 879
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->clearAll()V

    .line 880
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->TIBOUSERNAME:Ljava/lang/String;

    sget-object p3, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->username:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->TIBOPASSWORD:Ljava/lang/String;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->password:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SERVER:Ljava/lang/String;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->serverAddress:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getVisibility()I

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->serverAddress:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_5
    sget-object p3, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, p2, p3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public synthetic lambda$getSmsCode$19$LoginFragmentParent(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 752
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "username"

    .line 753
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 754
    invoke-virtual {p0, p2, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$initMobileView$7$LoginFragmentParent(Landroid/view/View;)V
    .locals 0

    .line 661
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginListener:Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;->onSignUpSelected()V

    return-void
.end method

.method public synthetic lambda$initMobileView$8$LoginFragmentParent(Landroid/view/View;)V
    .locals 0

    .line 664
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getMainActivity()Lcom/magoware/magoware/webtv/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/MainActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initTvView$10$LoginFragmentParent(Landroid/view/View;Z)V
    .locals 1

    .line 688
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_all_apps:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08027f

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08027e

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic lambda$initTvView$11$LoginFragmentParent(Landroid/view/View;Z)V
    .locals 1

    .line 692
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_network_test:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080287

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080286

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic lambda$initTvView$12$LoginFragmentParent(Landroid/view/View;Z)V
    .locals 1

    .line 696
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login_help_icon:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080285

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080284

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic lambda$initTvView$13$LoginFragmentParent(Landroid/view/View;)V
    .locals 0

    .line 699
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginListener:Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;->onAllAppsSelected()V

    return-void
.end method

.method public synthetic lambda$initTvView$14$LoginFragmentParent(Landroid/view/View;)V
    .locals 0

    .line 700
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginListener:Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;->onHelpSelected()V

    return-void
.end method

.method public synthetic lambda$initTvView$15$LoginFragmentParent(Landroid/view/View;)V
    .locals 0

    .line 702
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginListener:Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;->onNetworkTestSelected()V

    return-void
.end method

.method public synthetic lambda$initTvView$9$LoginFragmentParent(Landroid/view/View;)V
    .locals 0

    .line 679
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginListener:Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;->onSignUpSelected()V

    return-void
.end method

.method public synthetic lambda$logOutOtherDevices$25$LoginFragmentParent(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 908
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 909
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->userAuthentication()V

    goto :goto_0

    .line 911
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 914
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 915
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    .line 916
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    :cond_2
    return-void
.end method

.method public synthetic lambda$login$20$LoginFragmentParent(Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 7

    if-eqz p3, :cond_4

    .line 766
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 767
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 768
    iget v0, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v2, 0xc8

    const-string v3, ""

    if-ne v0, v2, :cond_0

    iget-object v0, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 770
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    iget-object v4, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/LoginObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->encryption_key:Ljava/lang/String;

    .line 771
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v5

    sget-object v6, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTED_LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 770
    invoke-static {v4, v3}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 773
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 775
    :goto_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->TIBOUSERNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 776
    iget-object p3, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/magoware/magoware/webtv/database/objects/LoginObject;

    iget-object p3, p3, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->encryption_key:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->processSuccessfulLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 777
    :cond_0
    iget v0, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v2, 0x12c

    if-le v0, v2, :cond_4

    iget-object v0, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 778
    iget v0, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v2, 0x2c1

    if-ne v0, v2, :cond_1

    .line 779
    iget-object p1, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->showLogOutDevicesDialog(Ljava/lang/String;)V

    goto :goto_1

    .line 780
    :cond_1
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v2, 0x2bf

    if-ne v0, v2, :cond_2

    .line 781
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getSmsCode(Ljava/lang/String;)V

    goto :goto_1

    .line 783
    :cond_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 784
    iget-object v0, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->error_description:Ljava/lang/String;

    iget p3, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-static {p1, p2, v0, p3}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logLoginErrors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 791
    :cond_3
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 795
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->dismissLoginProgressDialog()V

    return-void
.end method

.method public synthetic lambda$loginMultiCompany$4$LoginFragmentParent(Ljava/util/ArrayList;Landroid/view/View;I)V
    .locals 1

    .line 544
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->getId()I

    move-result p2

    sput p2, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    .line 545
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p2

    sget v0, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    invoke-virtual {p2, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setCompanyId(I)V

    .line 546
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p2

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->getNewEncryptionKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 547
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->isMultiCompanySelected:Z

    .line 548
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->userAuthentication()V

    return-void
.end method

.method public synthetic lambda$loginMultiCompany$5$LoginFragmentParent(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p4, :cond_4

    .line 527
    invoke-virtual {p4}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 529
    iget v0, p4, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_2

    .line 531
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 532
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 533
    iget-object p2, p4, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/magoware/magoware/webtv/database/objects/LoginObject;

    .line 534
    new-instance p4, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;

    iget v0, p3, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->id:I

    iget-object v1, p3, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->company_name:Ljava/lang/String;

    iget-object p3, p3, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->new_encryption_key:Ljava/lang/String;

    invoke-direct {p4, v0, v1, p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    .line 537
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->getId()I

    move-result p1

    sput p1, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    .line 538
    iput-boolean p3, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->isMultiCompanySelected:Z

    .line 539
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->userAuthentication()V

    return-void

    .line 542
    :cond_1
    new-instance p2, Lcom/magoware/magoware/webtv/custom_views/MultiCompanyDialog;

    invoke-direct {p2}, Lcom/magoware/magoware/webtv/custom_views/MultiCompanyDialog;-><init>()V

    .line 543
    new-instance p3, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$hixiWV1_fMiyky4RH3BMRkmCGhQ;

    invoke-direct {p3, p0, p1}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$hixiWV1_fMiyky4RH3BMRkmCGhQ;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Ljava/util/ArrayList;)V

    invoke-virtual {p2, p1, p3}, Lcom/magoware/magoware/webtv/custom_views/MultiCompanyDialog;->setCompanies(Ljava/util/ArrayList;Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;)V

    .line 550
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p3, "MultiCompanyDialog"

    invoke-virtual {p2, p1, p3}, Lcom/magoware/magoware/webtv/custom_views/MultiCompanyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 552
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->login(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 555
    :cond_3
    iget-object p1, p4, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic lambda$onCreateView$0$LoginFragmentParent(Z)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getDeviceMenu()V

    return-void
.end method

.method public synthetic lambda$sendFirebaseToken$6$LoginFragmentParent(Ljava/util/HashMap;Lcom/google/firebase/iid/InstanceIdResult;)V
    .locals 1

    .line 572
    invoke-interface {p2}, Lcom/google/firebase/iid/InstanceIdResult;->getToken()Ljava/lang/String;

    move-result-object p2

    const-string v0, "google_app_id"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object p2, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->setFirebaseIdObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public synthetic lambda$sendToSettingsDialog$17$LoginFragmentParent(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 738
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.DATE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$sendToSettingsDialog$18$LoginFragmentParent(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 740
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 742
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 743
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    .line 744
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public synthetic lambda$setOnClickListeners$26$LoginFragmentParent(Landroid/view/View;)V
    .locals 1

    .line 1139
    sget-object p1, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->username:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->validUsername(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1140
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1141
    sput p1, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    .line 1142
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget v0, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setCompanyId(I)V

    const/4 p1, 0x0

    .line 1143
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->isMultiCompanySelected:Z

    .line 1145
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->userAuthentication()V

    .line 1147
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1148
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getTimezoneObservable()V

    goto :goto_0

    :cond_1
    const p1, 0x7f140374

    .line 1151
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$setOnClickListeners$27$LoginFragmentParent(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1156
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->isGuestUser:Z

    .line 1157
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->userAuthentication()V

    return-void
.end method

.method public synthetic lambda$setOnClickListeners$28$LoginFragmentParent(Landroid/view/View;)V
    .locals 2

    .line 1162
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1163
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1165
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1166
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 1167
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1169
    :goto_0
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$showLogOutDevicesDialog$22$LoginFragmentParent(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 819
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logOutOtherDevices()V

    return-void
.end method

.method public synthetic lambda$showNoInternetDialog$1$LoginFragmentParent(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 307
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->dismissDialogWithTryCatch(Landroid/app/Dialog;)V

    .line 308
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->userAuthentication()V

    return-void
.end method

.method public synthetic lambda$showNoInternetDialog$2$LoginFragmentParent(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 315
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x7b

    invoke-virtual {p0, p2, v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->startActivityForResult(Landroid/content/Intent;I)V

    .line 316
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->dismissDialogWithTryCatch(Landroid/app/Dialog;)V

    return-void
.end method

.method public synthetic lambda$showNoInternetDialog$3$LoginFragmentParent(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 323
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->dismissDialogWithTryCatch(Landroid/app/Dialog;)V

    return-void
.end method

.method protected lockWifi()V
    .locals 3

    .line 1106
    :try_start_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    const-string v2, "Magoware WIFI"

    .line 1107
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->wifi_lock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    .line 1108
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 1109
    sget-object v0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->wifi_lock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
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

    .line 433
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    if-nez p2, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f140344

    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x7b

    if-ne p1, p2, :cond_2

    .line 439
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->userAuthentication()V

    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->showNoInternetDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->noInternetDialog:Landroid/app/Dialog;

    :cond_2
    :goto_0
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

    .line 412
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 413
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mContext:Landroid/content/Context;

    .line 414
    check-cast p1, Lcom/magoware/magoware/webtv/MainActivity;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mainActivity:Lcom/magoware/magoware/webtv/MainActivity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b03b5

    if-ne p1, v0, :cond_0

    .line 427
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginListener:Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;->onHelpSelected()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 419
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 420
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 421
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->setMenuBackgroundImage(I)V

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

    .line 229
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 230
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

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

    .line 235
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const p3, 0x7f0e0137

    .line 236
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    goto :goto_1

    .line 238
    :cond_0
    sget-object p3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p3}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7f0e0139

    goto :goto_0

    :cond_1
    const p3, 0x7f0e0138

    :goto_0
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    .line 241
    :goto_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->findViews()V

    const/4 p1, 0x1

    .line 243
    sput-boolean p1, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->is_visible:Z

    .line 245
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->setTextViewDesign()V

    .line 246
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->lockWifi()V

    .line 247
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->displayAppModel()V

    .line 248
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->disableWIFISleep()V

    .line 249
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->setOnClickListeners()V

    .line 251
    sget-boolean p1, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->from_GCM:Z

    if-eqz p1, :cond_2

    .line 252
    new-instance p1, Lcom/magoware/magoware/webtv/login/ClearIconsAsyncTask;

    new-instance p2, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$1fMsDUXSM0f9s8gD1APQdwerO3E;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$1fMsDUXSM0f9s8gD1APQdwerO3E;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V

    invoke-direct {p1, p2}, Lcom/magoware/magoware/webtv/login/ClearIconsAsyncTask;-><init>(Lcom/magoware/magoware/webtv/util/ClearIconsListener;)V

    new-array p2, v0, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/login/ClearIconsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    :cond_2
    sget-object p1, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->username:Landroid/widget/EditText;

    invoke-static {}, Lcom/magoware/magoware/webtv/login/Login;->getSavedUsername()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->password:Landroid/widget/EditText;

    invoke-static {}, Lcom/magoware/magoware/webtv/login/Login;->getSavedPassword()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->serverAddress:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->customViewViala(Landroid/view/View;)V

    .line 260
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->customizeViewForTibo()V

    .line 261
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->customizeViewForYESNET()V

    .line 262
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->initView()V

    .line 264
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 397
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 399
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 401
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 405
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    .line 407
    :cond_1
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutOtherDevices:Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 343
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 344
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 346
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 350
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    .line 352
    :cond_1
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutOtherDevices:Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 357
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 359
    sget-boolean v0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->signup_success:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->signup_username:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->signup_pass:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 360
    sput-boolean v0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->signup_success:Z

    .line 361
    sget-object v0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->username:Landroid/widget/EditText;

    sget-object v1, Lcom/magoware/magoware/webtv/login/SignUpFragment;->signup_username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 363
    sput-object v0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->signup_username:Ljava/lang/String;

    .line 364
    sput-object v0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->signup_pass:Ljava/lang/String;

    .line 366
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->REMOTE_LOGIN_USER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->userAuthentication()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 335
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 336
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->credentialsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "credentials_filter"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 373
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 374
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->noInternetAlertDialogGeneral:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->noInternetAlertDialogGeneral:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->dismissDialogWithTryCatch(Landroid/app/Dialog;)V

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 382
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginProgressDialog:Landroid/app/ProgressDialog;

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 386
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutProgressDialog:Landroid/app/ProgressDialog;

    .line 388
    :cond_3
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->logoutOtherDevices:Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    .line 390
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 391
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->credentialsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    return-void
.end method

.method protected processSuccessfulLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "username",
            "password",
            "encryptionKey"
        }
    .end annotation

    .line 578
    sget-boolean v0, Lcom/magoware/magoware/webtv/global/Global;->first_time_run:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 579
    invoke-static {}, Lcom/magoware/magoware/webtv/login/Login;->defineGlobals()V

    .line 580
    sput-boolean v1, Lcom/magoware/magoware/webtv/global/Global;->first_time_run:Z

    .line 583
    :cond_0
    invoke-static {p3}, Lcom/magoware/magoware/webtv/login/Login;->setEncryptionKey(Ljava/lang/String;)V

    .line 584
    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/login/Login;->saveLoginParamsToPrefs(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SERVER:Ljava/lang/String;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->serverAddress:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->serverAddress:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->DATAVERSION:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->BOXID:Ljava/lang/String;

    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/MagowareApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "android_id"

    invoke-static {p3, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 591
    sput-boolean p2, Lcom/magoware/magoware/webtv/homepage/smarttv/MainActivity2SmartTv;->force_remote:Z

    .line 592
    sput-boolean v1, Lcom/magoware/magoware/webtv/homepage/smarttv/MainActivity2SmartTv;->force_local:Z

    goto :goto_1

    .line 594
    :cond_2
    sput-boolean p2, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->force_remote:Z

    .line 595
    sput-boolean v1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->force_local:Z

    .line 597
    :goto_1
    sput-boolean v1, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->is_visible:Z

    .line 598
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 599
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 602
    :cond_3
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->proceedToNextActivity()V

    return-void
.end method

.method public setLoginListener(Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginListener"
        }
    .end annotation

    .line 448
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginListener:Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;

    return-void
.end method

.method protected setMenuBackgroundImage(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 456
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isHomePageView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v0, 0x7f0b03b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 458
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060091

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 460
    :cond_0
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 461
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 462
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->getDefaultBackgroundImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 464
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 465
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 466
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->getBackgroundImageUrl(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginBackgroundImage:Landroid/widget/ImageView;

    .line 467
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    return-void
.end method

.method protected setTextViewDesign()V
    .locals 2

    .line 983
    sget-object v0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->username:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->avenirMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 984
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->password:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->avenirMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 985
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->loginButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->avenirMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setVisibilityAppVersionNameLinear(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1174
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->appVersionNameLinear:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected showKeyboard()V
    .locals 2

    .line 472
    sget-object v0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 473
    sget-object v0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->username:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public showNoInternetDialog()Landroid/app/Dialog;
    .locals 4

    .line 292
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 293
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v1, 0x0

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    const v2, 0x7f0e018a

    .line 295
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f0b04b4

    .line 297
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->noInternetProgressLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 298
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    const v1, 0x7f0b04b3

    .line 299
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->noInternetButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    .line 300
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0b0203

    .line 302
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->dialogTitle:Landroid/widget/TextView;

    const v1, 0x7f0b0202

    .line 304
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f14037d

    .line 305
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 306
    new-instance v2, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$8_L9pOxIrR878ENQcoVKsUH1-6I;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$8_L9pOxIrR878ENQcoVKsUH1-6I;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    const v1, 0x7f0b0201

    .line 312
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f1400c9

    .line 313
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 314
    new-instance v2, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$1udDfn9q6VZwhWnYfnUeE2NtKqY;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$1udDfn9q6VZwhWnYfnUeE2NtKqY;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    const v2, 0x7f0b0200

    .line 320
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f140083

    .line 321
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 322
    new-instance v3, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$vzIIGyRQVcqhionhtaWbSfVrPPs;

    invoke-direct {v3, p0, v0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$vzIIGyRQVcqhionhtaWbSfVrPPs;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->startCountDownTimer(Landroid/app/Dialog;)V

    .line 328
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 329
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    return-object v0
.end method

.method protected showQrCode()V
    .locals 5

    .line 707
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v1, 0x7f0b0524

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 708
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v2, 0x7f0b0523

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 709
    iget-object v2, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->view:Landroid/view/View;

    const v3, 0x7f0b0640

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 711
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isLoginWithQrCodeAvailable()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 712
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 713
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$f2OR0tCjPZwtR_0tg9JfBfNNMIU;

    invoke-direct {v3, v1}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$f2OR0tCjPZwtR_0tg9JfBfNNMIU;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 729
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected userAuthentication()V
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->serverAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->serverAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    .line 492
    :goto_0
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->isGuestUser:Z

    if-eqz v1, :cond_1

    const-string v1, "guest"

    .line 493
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mUsername:Ljava/lang/String;

    .line 494
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mPassword:Ljava/lang/String;

    goto :goto_1

    .line 499
    :cond_1
    sget-object v1, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->username:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mUsername:Ljava/lang/String;

    .line 500
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mPassword:Ljava/lang/String;

    .line 503
    :goto_1
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->checkServerAddress(Ljava/lang/String;)V

    .line 505
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getLoginParameters()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->tryLogin(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 508
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->activateNoInternetProcedure()V

    :goto_2
    return-void
.end method
