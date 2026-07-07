.class public Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;
.super Ljava/lang/Object;
.source "Ncg2SdkWrapperListenerImpl.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Ncg2SdkWrapperImple"


# instance fields
.field private mAcquireLicenseDlg:Landroid/app/AlertDialog;

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsErrorState:Z

.field private mPlayerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mStartPlayerActivityTask:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "playerActivityCls",
            "activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p3, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    .line 42
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mContext:Landroid/content/Context;

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mPlayerClass:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;)Landroid/app/Activity;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;)Ljava/lang/Class;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mPlayerClass:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$302(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;)Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mStartPlayerActivityTask:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;

    return-object p1
.end method

.method static synthetic lambda$showUpdateSecureTimeDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 121
    invoke-static {}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->getInstance()Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->updateSecureTime()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAppFinishedError$2$Ncg2SdkWrapperListenerImpl(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCompletedAcquireLicense$8$Ncg2SdkWrapperListenerImpl(Ljava/lang/String;)V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const-string v1, "Succeeded in acquiring a license"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 253
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->startPlayerActivity(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCompletedUpdateSecureTime$7$Ncg2SdkWrapperListenerImpl()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const-string v1, "Succeeded. Please try again."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$onError$0$Ncg2SdkWrapperListenerImpl(Ljava/lang/String;)V
    .locals 2

    .line 51
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 61
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140083

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public synthetic lambda$onInvalidNcgLicense$4$Ncg2SdkWrapperListenerImpl(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 223
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mAcquireLicenseDlg:Landroid/app/AlertDialog;

    return-void
.end method

.method public synthetic lambda$onInvalidNcgLicense$5$Ncg2SdkWrapperListenerImpl(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 226
    invoke-static {}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->getInstance()Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    move-result-object p2

    iget-object p3, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    .line 228
    invoke-static {}, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->getInstance()Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    move-result-object v0

    iget-object v0, v0, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mUserID:Ljava/lang/String;

    .line 229
    invoke-static {}, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->getInstance()Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    move-result-object v1

    iget-object v1, v1, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mOrderID:Ljava/lang/String;

    .line 226
    invoke-virtual {p2, p3, p1, v0, v1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->acquireLicense(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 230
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mAcquireLicenseDlg:Landroid/app/AlertDialog;

    return-void
.end method

.method public synthetic lambda$onInvalidNcgLicense$6$Ncg2SdkWrapperListenerImpl(Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;Ljava/lang/String;)V
    .locals 3

    .line 131
    sget-object v0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$1;->$SwitchMap$com$inka$ncg2$Ncg2Agent$LicenseValidation:[I

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 197
    iget-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown LicenseValidation : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :pswitch_0
    return-void

    .line 183
    :pswitch_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const-string p2, "onInvalidNcgLicense() : license is valid. incorrect logic."

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 177
    :pswitch_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const-string p2, "OfflineStatusTooLong"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 179
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->showUpdateSecureTimeDialog()V

    return-void

    .line 167
    :pswitch_3
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->getExtraData()Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "AppName"

    .line 168
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "AppPackageName"

    .line 169
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    aput-object p1, v0, v1

    const-string p1, "ScreenRecorderDetected : \nAppName : [%s]\nPackageName : [%s]"

    .line 171
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 173
    iget-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 161
    :pswitch_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const-string p2, "OfflineNotSupported"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 156
    :pswitch_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const-string p2, "NotAuthorizedAppID"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 150
    :pswitch_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const-string p2, "Detected device time modified."

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 152
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->showUpdateSecureTimeDialog()V

    return-void

    .line 144
    :pswitch_7
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const-string p2, "External Display device disallow"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 139
    :pswitch_8
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const-string p2, "Detected Rooting Device"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 203
    :pswitch_9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mAcquireLicenseDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 212
    sget-object v1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->NotExistLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    sget-object v1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ExceededPlayCount:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 217
    :cond_2
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ExpiredLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    :goto_0
    const p1, 0x7f140083

    .line 222
    new-instance v1, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$FLQB3M47vWGnLhtm4JkvcAsdPk0;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$FLQB3M47vWGnLhtm4JkvcAsdPk0;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f1402fe

    .line 224
    new-instance v1, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$H6N39C9upLFxkxPZoZf4HDwnFDs;

    invoke-direct {v1, p0, p2}, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$H6N39C9upLFxkxPZoZf4HDwnFDs;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mAcquireLicenseDlg:Landroid/app/AlertDialog;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$onSecurityError$1$Ncg2SdkWrapperListenerImpl(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$onServerError$9$Ncg2SdkWrapperListenerImpl(I)V
    .locals 3

    .line 263
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "LicenseServer responses an error(errorcode:[%d]) \nYou need to contact the server administrator."

    .line 265
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 283
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140083

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public synthetic lambda$onWebserverError$12$Ncg2SdkWrapperListenerImpl(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 363
    invoke-static {}, Lcom/inka/ncg2/Ncg2SdkFactory;->getNcgAgentInstance()Lcom/inka/ncg2/Ncg2Agent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent;->release()V

    .line 364
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$onWebserverError$13$Ncg2SdkWrapperListenerImpl(ILjava/lang/String;)V
    .locals 3

    .line 344
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mIsErrorState:Z

    if-eqz v0, :cond_0

    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mIsErrorState:Z

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    aput-object p2, v1, v0

    const-string p1, "ERROR CODE : [%d]\nERROR MSG:[%s]\n"

    .line 352
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 356
    :try_start_0
    new-instance p2, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 358
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "NCG Sample"

    .line 359
    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 360
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    .line 361
    new-instance v2, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$yXt_OaHox4M5rgLJX1dS_pUx38Q;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$yXt_OaHox4M5rgLJX1dS_pUx38Q;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;)V

    invoke-virtual {p2, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 369
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onWebserverNotification$10$Ncg2SdkWrapperListenerImpl(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 328
    invoke-static {}, Lcom/inka/ncg2/Ncg2SdkFactory;->getNcgAgentInstance()Lcom/inka/ncg2/Ncg2Agent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent;->release()V

    .line 329
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$onWebserverNotification$11$Ncg2SdkWrapperListenerImpl(ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mIsErrorState:Z

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 319
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    aput-object p2, v1, v0

    const-string p1, "NOTIFY CODE : [%d]\nNOTIFY MSG:[%s]\n"

    .line 317
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 321
    :try_start_0
    new-instance p2, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 323
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "NCG Sample"

    .line 324
    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    .line 326
    new-instance v2, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$tGukpdu0uXaBJ3szwWa-GdJjEf4;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$tGukpdu0uXaBJ3szwWa-GdJjEf4;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;)V

    invoke-virtual {p2, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 334
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAppFinishedError(Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 93
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1400f7

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$GSPu75RyFfapI1bmX-IJUQkKyP0;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$GSPu75RyFfapI1bmX-IJUQkKyP0;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 101
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 103
    invoke-static {}, Lcom/inka/ncg2/Ncg2SdkFactory;->getNcgAgentInstance()Lcom/inka/ncg2/Ncg2Agent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent;->release()V

    return-void
.end method

.method public onCompletedAcquireLicense(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mFilePath"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$yxT5VB23htfABUQgjZWNUg_lqaI;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$yxT5VB23htfABUQgjZWNUg_lqaI;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCompletedUpdateSecureTime()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$9Ic9BfXCgSVKypwsVmZ7yzllSxE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$9Ic9BfXCgSVKypwsVmZ7yzllSxE;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "e",
            "msg"
        }
    .end annotation

    .line 50
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$AluqD_ejOQ9X7jTr-WLqfz35h4g;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$AluqD_ejOQ9X7jTr-WLqfz35h4g;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInvalidNcgLicense(Ljava/lang/String;Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contentPath",
            "lv"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$vGYSMFvw_Q2mUyaw0bLjKaNyKcQ;

    invoke-direct {v1, p0, p2, p1}, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$vGYSMFvw_Q2mUyaw0bLjKaNyKcQ;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSecurityError(Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 71
    new-instance p1, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 74
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1400f7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$R7ayDGWSh0-r08zaYTr15CVDftI;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$R7ayDGWSh0-r08zaYTr15CVDftI;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 82
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 84
    invoke-static {}, Lcom/inka/ncg2/Ncg2SdkFactory;->getNcgAgentInstance()Lcom/inka/ncg2/Ncg2Agent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent;->release()V

    return-void
.end method

.method public onServerError(Lcom/inka/ncg2/Ncg2ServerResponseErrorException;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "e",
            "string",
            "serverErrorCode"
        }
    .end annotation

    .line 261
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$BOl4GpVcfgB7QmpZipIlFH0ggw4;

    invoke-direct {p2, p0, p3}, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$BOl4GpVcfgB7QmpZipIlFH0ggw4;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWebserverError(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "errorCode",
            "errorMessage"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$LgE3RQjt76bMzvWXV725NCgmHWo;

    invoke-direct {v1, p0, p1, p2}, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$LgE3RQjt76bMzvWXV725NCgmHWo;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWebserverNotification(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "notifyCode",
            "notifyMsg"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$xKl61JZGp36rSXvrtlOtOhdIpxw;

    invoke-direct {v1, p0, p1, p2}, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$xKl61JZGp36rSXvrtlOtOhdIpxw;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "msg"
        }
    .end annotation

    .line 107
    new-instance p1, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    iget-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const v0, 0x7f1402fe

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public showUpdateSecureTimeDialog()V
    .locals 3

    .line 115
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    const-string v1, "You need to update secure time.\nTry again after checking online connection."

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    sget-object v1, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$6gPfan3QDtF8IobTonbVgEZv0_o;->INSTANCE:Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$6gPfan3QDtF8IobTonbVgEZv0_o;

    const-string v2, "Update SecureTime"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140083

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public startPlayerActivity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentPath"
        }
    .end annotation

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mIsErrorState:Z

    .line 292
    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mStartPlayerActivityTask:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;

    if-eqz v1, :cond_0

    return-void

    .line 297
    :cond_0
    new-instance v1, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mStartPlayerActivityTask:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;

    .line 298
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt p1, v1, :cond_1

    .line 299
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mStartPlayerActivityTask:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 301
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->mStartPlayerActivityTask:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
