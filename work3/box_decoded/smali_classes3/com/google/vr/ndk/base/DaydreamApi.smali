.class public Lcom/google/vr/ndk/base/DaydreamApi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final DAYDREAM_CATEGORY:Ljava/lang/String; = "com.google.intent.category.DAYDREAM"

.field private static final EXTRA_KEY_VR_CONTENT_INTENT:Ljava/lang/String; = "vrContentIntent"

.field private static final MIN_API_FOR_EXIT_VR2:I = 0x17

.field private static final MIN_API_FOR_HEADSET_INSERTION:I = 0xb

.field private static final MIN_VRCORE_API_VERSION:I = 0x8

.field private static final TAG:Ljava/lang/String; = "DaydreamApi"

.field private static volatile bootsToVr:Ljava/lang/Boolean;


# instance fields
.field private closed:Z

.field private final connection:Landroid/content/ServiceConnection;

.field private final context:Landroid/content/Context;

.field private daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

.field private queuedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private vrCoreApiVersion:I

.field private vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->queuedRunnables:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$1;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/DaydreamApi$1;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->connection:Landroid/content/ServiceConnection;

    .line 207
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/vr/ndk/base/DaydreamApi;Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/vr/ndk/base/DaydreamApi;Lcom/google/vr/vrcore/common/api/IDaydreamManager;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/vr/ndk/base/DaydreamApi;)Ljava/util/ArrayList;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->queuedRunnables:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/vr/ndk/base/DaydreamApi;)I
    .locals 0

    .line 241
    iget p0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->vrCoreApiVersion:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/vr/ndk/base/DaydreamApi;)Landroid/content/Context;
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/vr/ndk/base/DaydreamApi;)Landroid/content/ServiceConnection;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->connection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static bootsToVr(Landroid/content/Context;)Z
    .locals 2

    .line 98
    sget-object v0, Lcom/google/vr/ndk/base/DaydreamApi;->bootsToVr:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "boots_to_vr"

    .line 100
    invoke-static {p0, v1, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/vr/ndk/base/DaydreamApi;->bootsToVr:Ljava/lang/Boolean;

    .line 101
    :cond_0
    sget-object p0, Lcom/google/vr/ndk/base/DaydreamApi;->bootsToVr:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private checkIntent(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 229
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    new-instance v0, Landroid/content/ActivityNotFoundException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No activity is available to handle intent: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNotClosed()V
    .locals 2

    .line 233
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DaydreamApi object is closed and can no longer be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Landroid/content/Context;)Lcom/google/vr/ndk/base/DaydreamApi;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 3
    invoke-static {p0}, Lcom/google/vr/ndk/base/DaydreamUtils;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DaydreamApi"

    if-nez v0, :cond_0

    const-string p0, "Phone is not Daydream-compatible"

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 6
    :cond_0
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/DaydreamApi;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->init()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const-string p0, "Failed to initialize DaydreamApi object."

    .line 9
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "DaydreamApi must only be used from the main thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createVrIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->setupVrIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 10

    const-string v0, " state from ContentProvider"

    .line 109
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->tryToGetContentProviderClientHandle(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;

    move-result-object p0

    const-string v1, "DaydreamApi"

    if-nez p0, :cond_1

    const-string p0, "No ContentProvider available for "

    .line 111
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_1
    const/4 v2, 0x0

    .line 114
    :try_start_0
    iget-object v3, p0, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->authority:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/google/vr/cardboard/VrSettingsProviderContract;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 115
    iget-object v4, p0, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->client:Landroid/content/ContentProviderClient;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 116
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 117
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 119
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_3
    invoke-virtual {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->close()V

    return v3

    :cond_4
    if-eqz v2, :cond_5

    .line 123
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->close()V

    return p2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 133
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Insufficient permissions to read "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_6

    .line 135
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_6
    invoke-virtual {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->close()V

    return p2

    :catch_1
    move-exception v3

    .line 127
    :try_start_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to read "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_7

    .line 129
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_7
    invoke-virtual {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->close()V

    return p2

    :goto_1
    if-eqz v2, :cond_8

    .line 139
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_8
    invoke-virtual {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->close()V

    throw p1
.end method

.method public static getDaydreamSetupCompleted(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "daydream_setup"

    const/4 v1, 0x0

    .line 96
    invoke-static {p0, v0, v1}, Lcom/google/vr/ndk/base/DaydreamApi;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getRecentHeadsets(Landroid/content/Context;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParamsList;
    .locals 3

    .line 26
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p0

    .line 27
    :try_start_0
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->readRecentHeadsets()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParamsList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "DaydreamApi"

    const-string v2, "Error when getting recent headsets"

    .line 31
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParamsList;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParamsList;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    .line 33
    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParamsList;->params:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    return-object v0

    .line 37
    :goto_0
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    throw v0
.end method

.method public static hasVrContentIntent(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "vrContentIntent"

    .line 198
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isCaptureEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 56
    invoke-static {p0}, Lcom/google/vr/ndk/base/SdkConfigurationReader;->getParams(Landroid/content/Context;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->screenCaptureConfig:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$ScreenCaptureConfig;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p0}, Lcom/google/vr/ndk/base/SdkConfigurationReader;->getParams(Landroid/content/Context;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object p0

    iget-object p0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->screenCaptureConfig:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$ScreenCaptureConfig;

    iget-object p0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$ScreenCaptureConfig;->allowCasting:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDashboardEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "dashboard_enabled"

    const/4 v1, 0x0

    .line 97
    invoke-static {p0, v0, v1}, Lcom/google/vr/ndk/base/DaydreamApi;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isDaydreamReadyPlatform(Landroid/content/Context;)Z
    .locals 0

    .line 11
    invoke-static {p0}, Lcom/google/vr/ndk/base/DaydreamUtils;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isInVrSession(Landroid/content/Context;)Z
    .locals 2

    .line 105
    invoke-static {p0}, Lcom/google/vr/ndk/base/DaydreamUtils;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "is_in_vr_session"

    .line 107
    invoke-static {p0, v0, v1}, Lcom/google/vr/ndk/base/DaydreamApi;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isMetaworldCalibrationDisabledForIthaca(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "skip_ithaca_pairing_flow"

    const/4 v1, 0x0

    .line 59
    invoke-static {p0, v0, v1}, Lcom/google/vr/ndk/base/DaydreamApi;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isUserRightHanded(Landroid/content/Context;)Z
    .locals 1

    .line 38
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p0

    .line 39
    :try_start_0
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->readUserPrefs()Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;->getControllerHandedness()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 42
    :goto_1
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    return v0

    :catchall_0
    move-exception v0

    .line 44
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    throw v0
.end method

.method public static isVrUser(Landroid/content/Context;)Z
    .locals 1

    .line 60
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p0

    .line 61
    :try_start_0
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->readDeviceParams()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 63
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    const/4 p0, 0x0

    return p0

    .line 65
    :cond_0
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    .line 67
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    throw v0
.end method

.method private launchInVr(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 1

    .line 144
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/vr/ndk/base/DaydreamApi$3;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    return-void
.end method

.method private launchTransitionCallbackInVr(Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;)V
    .locals 1

    .line 146
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$4;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/ndk/base/DaydreamApi$4;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;)V

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setDaydreamSetupCompleted(Landroid/content/Context;Z)Z
    .locals 5

    .line 75
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->tryToGetContentProviderClientHandle(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;

    move-result-object p0

    const-string v0, "DaydreamApi"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "No ContentProvider available for Daydream setup."

    .line 77
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->authority:Ljava/lang/String;

    const-string v3, "daydream_setup"

    .line 80
    invoke-static {v2, v3}, Lcom/google/vr/cardboard/VrSettingsProviderContract;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 81
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "value"

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 83
    iget-object p1, p0, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->client:Landroid/content/ContentProviderClient;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    const/4 v1, 0x1

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->close()V

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "Insufficient permissions to indicate Daydream setup completion to ContentProvider"

    .line 92
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    invoke-virtual {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->close()V

    return v1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "Failed to indicate Daydream setup completion to ContentProvider"

    .line 88
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    invoke-virtual {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->close()V

    return v1

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->close()V

    throw p1
.end method

.method public static setUserRightHanded(Landroid/content/Context;Z)V
    .locals 1

    .line 45
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;-><init>()V

    xor-int/lit8 p1, p1, 0x1

    .line 50
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;->setControllerHandedness(I)Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;

    .line 51
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p0

    .line 52
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/vr/cardboard/VrParamsProvider;->updateUserPrefs(Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 55
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    throw p1
.end method

.method public static setVrContentIntent(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "vrContentIntent"

    const/4 v1, 0x1

    .line 196
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setupVrIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    const-string v0, "com.google.intent.category.DAYDREAM"

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14010000

    .line 177
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public static supports2dInVr(Landroid/content/Context;)Z
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/google/vr/ndk/base/SdkConfigurationReader;->getParams(Landroid/content/Context;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object p0

    iget-object p0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowVrcoreCompositing:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->closed:Z

    .line 202
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$12;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/DaydreamApi$12;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;)V

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitFromVr(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->exitFromVr(Landroid/app/Activity;ILandroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public exitFromVr(Landroid/app/Activity;ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    if-nez p3, :cond_0

    .line 183
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 185
    invoke-virtual {p1, p2, p3, v0}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 186
    new-instance p2, Lcom/google/vr/ndk/base/DaydreamApi$7;

    invoke-direct {p2, p0, p1}, Lcom/google/vr/ndk/base/DaydreamApi$7;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;Landroid/app/PendingIntent;)V

    .line 187
    new-instance p3, Lcom/google/vr/ndk/base/DaydreamApi$8;

    invoke-direct {p3, p0, p2, p1, p4}, Lcom/google/vr/ndk/base/DaydreamApi$8;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;Ljava/lang/Runnable;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentViewerType()I
    .locals 3

    .line 12
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 13
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->isDaydreamReadyPlatform(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v0

    .line 16
    :try_start_0
    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->readDeviceParams()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 18
    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    return v1

    .line 20
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/google/vr/ndk/base/DaydreamUtils;->isDaydreamViewer(Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 21
    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    const/4 v0, 0x1

    return v0

    .line 23
    :cond_2
    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    return v1

    :catchall_0
    move-exception v1

    .line 25
    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    throw v1
.end method

.method protected getDaydreamManager()Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    return-object v0
.end method

.method public handleInsertionIntoHeadset([B)V
    .locals 1

    .line 192
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$10;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/ndk/base/DaydreamApi$10;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;[B)V

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleRemovalFromHeadset()V
    .locals 1

    .line 194
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$11;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/DaydreamApi$11;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;)V

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected init()Z
    .locals 6

    const-string v0, "DaydreamApi"

    const/4 v1, 0x0

    .line 209
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getVrCoreClientApiVersion(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/google/vr/ndk/base/DaydreamApi;->vrCoreApiVersion:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    const/16 v3, 0x45

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VrCore out of date, current version: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", required version: 8"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 213
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.vr.vrcore.BIND_SDK_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.vr.vrcore"

    .line 214
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    .line 216
    :goto_0
    iget-object v4, p0, Lcom/google/vr/ndk/base/DaydreamApi;->connection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v5

    :cond_2
    const-string v2, "Unable to bind to VrCoreSdkService"

    .line 218
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 221
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VrCore not available: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method public launchInVr(Landroid/app/PendingIntent;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->launchInVr(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    return-void
.end method

.method public launchInVr(Landroid/content/ComponentName;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    if-eqz p1, :cond_0

    .line 163
    invoke-static {p1}, Lcom/google/vr/ndk/base/DaydreamApi;->createVrIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 164
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/DaydreamApi;->checkIntent(Landroid/content/Intent;)V

    .line 165
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 166
    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 167
    invoke-direct {p0, v0, p1}, Lcom/google/vr/ndk/base/DaydreamApi;->launchInVr(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    return-void

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null argument \'componentName\' passed to launchInVr"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public launchInVr(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    if-eqz p1, :cond_0

    .line 154
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/DaydreamApi;->checkIntent(Landroid/content/Intent;)V

    .line 155
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x48000000    # 131072.0f

    .line 156
    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 158
    invoke-direct {p0, v0, p1}, Lcom/google/vr/ndk/base/DaydreamApi;->launchInVr(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    return-void

    .line 153
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null argument \'intent\' passed to launchInVr"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public launchInVrForResult(Landroid/app/Activity;Landroid/app/PendingIntent;I)V
    .locals 1

    .line 169
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 170
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/vr/ndk/base/DaydreamApi$6;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;Landroid/app/Activity;Landroid/app/PendingIntent;I)V

    .line 171
    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->launchTransitionCallbackInVr(Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;)V

    return-void
.end method

.method public launchVrHomescreen()V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 149
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$5;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/DaydreamApi$5;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;)V

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerDaydreamIntent(Landroid/app/PendingIntent;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 69
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$2;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/ndk/base/DaydreamApi$2;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected runWhenServiceConnected(Ljava/lang/Runnable;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->queuedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInhibitSystemButtons(Landroid/content/ComponentName;Z)V
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 190
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/vr/ndk/base/DaydreamApi$9;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;ZLandroid/content/ComponentName;)V

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterDaydreamIntent()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->registerDaydreamIntent(Landroid/app/PendingIntent;)V

    return-void
.end method
