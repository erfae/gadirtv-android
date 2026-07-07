.class public Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/cardboard/VrParamsProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProviderVrParamsProvider"


# instance fields
.field private final client:Landroid/content/ContentProviderClient;

.field private final deviceParamsSettingUri:Landroid/net/Uri;

.field private final displayParamsSettingUri:Landroid/net/Uri;

.field private final recentHeadsetsSettingUri:Landroid/net/Uri;

.field private final sdkConfigurationParamsSettingUri:Landroid/net/Uri;

.field private final userPrefsUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->client:Landroid/content/ContentProviderClient;

    const-string p1, "device_params"

    .line 8
    invoke-static {p2, p1}, Lcom/google/vr/cardboard/VrSettingsProviderContract;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->deviceParamsSettingUri:Landroid/net/Uri;

    const-string p1, "user_prefs"

    .line 10
    invoke-static {p2, p1}, Lcom/google/vr/cardboard/VrSettingsProviderContract;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->userPrefsUri:Landroid/net/Uri;

    const-string p1, "phone_params"

    .line 12
    invoke-static {p2, p1}, Lcom/google/vr/cardboard/VrSettingsProviderContract;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->displayParamsSettingUri:Landroid/net/Uri;

    const-string p1, "sdk_configuration_params"

    .line 14
    invoke-static {p2, p1}, Lcom/google/vr/cardboard/VrSettingsProviderContract;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->sdkConfigurationParamsSettingUri:Landroid/net/Uri;

    const-string p1, "recent_headsets"

    .line 16
    invoke-static {p2, p1}, Lcom/google/vr/cardboard/VrSettingsProviderContract;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->recentHeadsetsSettingUri:Landroid/net/Uri;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Authority key must be non-null and non-empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ContentProviderClient must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->client:Landroid/content/ContentProviderClient;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_3

    .line 32
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p2, 0x0

    .line 33
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2
    :try_end_1
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    .line 36
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 38
    :cond_1
    :try_start_2
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p1
    :try_end_2
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_2

    .line 40
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    .line 42
    :cond_3
    :try_start_3
    sget-object p1, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid params result from ContentProvider query: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p3, :cond_4

    .line 44
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    goto :goto_0

    :catch_6
    move-exception p1

    goto :goto_0

    :catch_7
    move-exception p1

    :goto_0
    move-object p3, v0

    .line 47
    :goto_1
    :try_start_4
    sget-object p2, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->TAG:Ljava/lang/String;

    const-string v1, "Error reading params from ContentProvider"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p3, :cond_5

    .line 49
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, p3

    :goto_2
    if-eqz v0, :cond_6

    .line 52
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p1
.end method

.method private writeParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 54
    :try_start_0
    iget-object p1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->client:Landroid/content/ContentProviderClient;

    invoke-virtual {p1, p2, v1, v1}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 55
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    const-string v3, "value"

    .line 57
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 58
    iget-object p1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->client:Landroid/content/ContentProviderClient;

    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    .line 64
    sget-object p2, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->TAG:Ljava/lang/String;

    const-string v1, "Insufficient permissions to write params to ContentProvider"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_1
    move-exception p1

    .line 61
    sget-object p2, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write params to ContentProvider"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->client:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->client:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-void
.end method

.method public readDeviceParams()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 3

    .line 18
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;-><init>()V

    iget-object v1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->deviceParamsSettingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->readParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    return-object v0
.end method

.method public readDisplayParams()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 3

    .line 21
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;-><init>()V

    iget-object v1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->displayParamsSettingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->readParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    return-object v0
.end method

.method public readRecentHeadsets()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParamsList;
    .locals 3

    .line 20
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParamsList;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParamsList;-><init>()V

    iget-object v1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->recentHeadsetsSettingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->readParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParamsList;

    return-object v0
.end method

.method public readSdkConfigurationParams(Lcom/google/vr/sdk/proto/nano/SdkConfiguration$SdkConfigurationRequest;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
    .locals 2

    .line 22
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 23
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->DEFAULT_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    iget-object v1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->sdkConfigurationParamsSettingUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->readParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p1

    check-cast p1, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    return-object p1
.end method

.method public readUserPrefs()Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;
    .locals 3

    .line 24
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;-><init>()V

    iget-object v1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->userPrefsUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->readParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;

    return-object v0
.end method

.method public updateUserPrefs(Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;)Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->userPrefsUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->writeParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public writeDeviceParams(Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;)Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->deviceParamsSettingUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->writeParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
