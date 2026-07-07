.class public Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;
.super Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;
.source "VOOSMPNielsenTrackingAdaptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPNielsenTrackingAdaptor"


# instance fields
.field private mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

.field private mOptOutUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    .line 48
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mOptOutUrl:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPNielsenTrackingAdaptor"

    const-string v2, "Constructing VOOSMPNielsenTrackingAdaptor"

    .line 52
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->isNielsenSDKAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;)Lcom/nielsen/app/sdk/AppSdk;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    return-object p0
.end method

.method static synthetic access$002(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;Lcom/nielsen/app/sdk/AppSdk;)Lcom/nielsen/app/sdk/AppSdk;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    return-object p1
.end method

.method static synthetic access$100(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mOptOutUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mOptOutUrl:Ljava/lang/String;

    return-object p1
.end method

.method private checkAppSdkInvalid()Z
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    const/4 v1, 0x1

    const-string v2, "@@@VOOSMPNielsenTrackingAdaptor"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "mAppSdk is null!"

    .line 218
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 221
    :cond_0
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/AppSdk;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "mAppSdk is not in a valid state!"

    .line 222
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    return v3
.end method

.method private isDebug()Z
    .locals 4

    .line 163
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    .line 165
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPNielsenTrackingAdaptor"

    invoke-static {v3, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private static isNielsenSDKAvailable()Z
    .locals 6

    const-string v0, "com.nielsen.app.sdk.AppSdk"

    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v2, "com.google.android.gms.common.ConnectionResult"

    const-string v3, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string v4, "com.google.android.gms.common.GooglePlayServicesRepairableException"

    const-string v5, "com.google.android.gms.common.GooglePlayServicesNotAvailableException"

    .line 329
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Nielsen"

    .line 338
    invoke-static {v1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->areClassesAvailable(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPNielsenTrackingAdaptor"

    invoke-static {v3, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private logCallWithJSON(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "@@@VOOSMPNielsenTrackingAdaptor"

    const/4 v1, 0x0

    .line 207
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    .line 208
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    .line 207
    invoke-static {v0, p2, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException caught when dumping JSONObject for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    .line 210
    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setOptOutDialogResult()V
    .locals 6

    const-string v0, "optOutDialogResult"

    .line 144
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPNielsenTrackingAdaptor"

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    if-nez v3, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "mAppSdk is null"

    .line 150
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 153
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current opt-out status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    invoke-virtual {v4}, Lcom/nielsen/app/sdk/AppSdk;->getOptOutStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling mAppSdk.userOptOut("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    invoke-virtual {v3, v0}, Lcom/nielsen/app/sdk/AppSdk;->userOptOut(Ljava/lang/String;)Z

    move-result v3

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAppSdk.userOptOut("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") returned "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/AppSdk;->getOptOutStatus()Z

    move-result v0

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New opt-out status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isOptedOut"

    invoke-virtual {p0, v1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "parameter optOutDialogResult is not set, or empty"

    .line 146
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public appInBackground()V
    .locals 4

    .line 298
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->checkAppSdkInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "context"

    .line 300
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->getContextParam(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPNielsenTrackingAdaptor"

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "appContext is null"

    .line 302
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Calling mAppSdk.appInBackground()"

    .line 305
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    invoke-virtual {v1, v0}, Lcom/nielsen/app/sdk/AppSdk;->appInBackground(Landroid/content/Context;)V

    return-void
.end method

.method public appInForeground()V
    .locals 4

    .line 286
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->checkAppSdkInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "context"

    .line 288
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->getContextParam(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPNielsenTrackingAdaptor"

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "appContext is null"

    .line 290
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Calling mAppSdk.appInForeground()"

    .line 293
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    invoke-virtual {v1, v0}, Lcom/nielsen/app/sdk/AppSdk;->appInForeground(Landroid/content/Context;)V

    return-void
.end method

.method public callAppInBackground()V
    .locals 2

    const-string v0, "trackFgBg"

    const/4 v1, 0x0

    .line 317
    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->appInBackground()V

    :cond_0
    return-void
.end method

.method public callAppInForeground()V
    .locals 2

    const-string v0, "trackFgBg"

    const/4 v1, 0x0

    .line 310
    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->appInForeground()V

    :cond_0
    return-void
.end method

.method public callEnd()V
    .locals 3

    .line 263
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->checkAppSdkInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPNielsenTrackingAdaptor"

    const-string v2, "Calling mAppSdk.end()"

    .line 265
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/AppSdk;->end()V

    return-void
.end method

.method public callLoadMetadata(ZLandroid/os/Parcel;)V
    .locals 2

    .line 242
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->checkAppSdkInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "adMetadata"

    goto :goto_0

    :cond_1
    const-string v0, "contentMetadata"

    :goto_0
    const/4 v1, 0x1

    .line 245
    invoke-virtual {p0, v0, p2, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->getJSONParamWithParcel(Ljava/lang/String;Landroid/os/Parcel;Z)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOOSMPNielsenTrackingAdaptor"

    const-string v0, "metadata is null"

    .line 247
    invoke-static {p2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 249
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAppSdk.loadMetadata("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    const-string p1, "ad"

    goto :goto_1

    :cond_3
    const-string p1, "content"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Metadata)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->logCallWithJSON(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 251
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    invoke-virtual {p1, p2}, Lcom/nielsen/app/sdk/AppSdk;->loadMetadata(Lorg/json/JSONObject;)V

    :goto_2
    return-void
.end method

.method public callPlay(Landroid/os/Parcel;)V
    .locals 2

    .line 229
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->checkAppSdkInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "playConfig"

    .line 232
    invoke-virtual {p0, v1, p1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->getJSONParamWithParcel(Ljava/lang/String;Landroid/os/Parcel;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPNielsenTrackingAdaptor"

    const-string v1, "playConfig is null"

    .line 234
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "mAppSdk.play(playConfig)"

    .line 236
    invoke-direct {p0, v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->logCallWithJSON(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 237
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    invoke-virtual {v0, p1}, Lcom/nielsen/app/sdk/AppSdk;->play(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method public callSendID3(Ljava/lang/String;)V
    .locals 3

    .line 277
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->checkAppSdkInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPNielsenTrackingAdaptor"

    const-string v2, "Calling mAppSdk.sendID3()"

    .line 281
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    invoke-virtual {v0, p1}, Lcom/nielsen/app/sdk/AppSdk;->sendID3(Ljava/lang/String;)V

    return-void
.end method

.method public callSetPlayheadPosition(J)V
    .locals 3

    .line 270
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->checkAppSdkInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling mAppSdk.setPlayheadPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPNielsenTrackingAdaptor"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    invoke-virtual {v0, p1, p2}, Lcom/nielsen/app/sdk/AppSdk;->setPlayheadPosition(J)V

    return-void
.end method

.method public callStop()V
    .locals 3

    .line 256
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->checkAppSdkInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPNielsenTrackingAdaptor"

    const-string v2, "Calling mAppSdk.stop()"

    .line 258
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/AppSdk;->stop()V

    return-void
.end method

.method public execSDKAction(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 6

    .line 107
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->checkAppSdkInvalid()Z

    move-result v0

    const-string v1, "optOutURL"

    const-string v2, "userOptOutURLString"

    const/4 v3, 0x0

    const-string v4, "@@@VOOSMPNielsenTrackingAdaptor"

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOT executing "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mOptOutUrl:Ljava/lang/String;

    .line 111
    invoke-virtual {p0, v1, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 114
    :cond_0
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 116
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Calling AppSdk.userOptOutURLString()"

    .line 117
    invoke-static {v4, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    invoke-virtual {p1}, Lcom/nielsen/app/sdk/AppSdk;->userOptOutURLString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mOptOutUrl:Ljava/lang/String;

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting parameter optOutUrl: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mOptOutUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mOptOutUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    :cond_2
    const-string v0, "setOptOutDialogResult"

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->setOptOutDialogResult()V

    .line 127
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    :cond_3
    const-string v0, "appInBackground"

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->appInBackground()V

    .line 130
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    :cond_4
    const-string v0, "appInForeground"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->appInForeground()V

    .line 133
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 135
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNKNOWN:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method

.method public initializeJavaSDK()Z
    .locals 5

    const-string v0, "initAppSdk"

    const/4 v1, 0x1

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "@@@VOOSMPNielsenTrackingAdaptor"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-string v0, "appSdkConfig"

    .line 70
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->getJSONParam(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "appSdkConfig is null, returning false"

    .line 72
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    const-string v4, "context"

    .line 75
    invoke-virtual {p0, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->getContextParam(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "context is null, returning false"

    .line 77
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 80
    :cond_1
    invoke-virtual {p0, v4, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->initializeNielsenLibrary(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    const-string v0, "appSdk"

    .line 82
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->getParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Parameter \'initAppSdk\' is false, but \'appSdk\' is not set, or is null"

    .line 84
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 89
    :cond_3
    :try_start_0
    check-cast v0, Lcom/nielsen/app/sdk/AppSdk;

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "The value of \'appSdk\' is not an AppSdk"

    .line 91
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public initializeNielsenLibrary(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPNielsenTrackingAdaptor"

    const-string v3, "<<<"

    .line 173
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$1;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$1;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;)V

    .line 193
    new-instance v3, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$2;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$2;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;Landroid/content/Context;Lorg/json/JSONObject;Lcom/nielsen/app/sdk/IAppNotifier;)V

    .line 201
    invoke-virtual {v3}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$2;->start()V

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, ">>>"

    .line 202
    invoke-static {v2, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isSDKAvailable()Z
    .locals 1

    .line 62
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->isNielsenSDKAvailable()Z

    move-result v0

    return v0
.end method

.method public unInitializeJavaSDK()Z
    .locals 1

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mAppSdk:Lcom/nielsen/app/sdk/AppSdk;

    .line 101
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->mOptOutUrl:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method
