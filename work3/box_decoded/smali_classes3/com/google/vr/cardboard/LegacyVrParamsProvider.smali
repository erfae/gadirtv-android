.class public final Lcom/google/vr/cardboard/LegacyVrParamsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/cardboard/VrParamsProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVrParamsProvider"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/cardboard/LegacyVrParamsProvider;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final readDeviceParams()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/vr/cardboard/ConfigUtils;->readDeviceParamsFromExternalStorage()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    return-object v0
.end method

.method public final readDisplayParams()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 1

    .line 8
    invoke-static {}, Lcom/google/vr/cardboard/ConfigUtils;->readDisplayParamsFromExternalStorage()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/vr/cardboard/LegacyVrParamsProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/cardboard/PpiOverrides;->getPpiOverride(Landroid/content/Context;)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final readRecentHeadsets()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParamsList;
    .locals 2

    .line 16
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParamsList;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParamsList;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    .line 17
    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParamsList;->params:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    return-object v0
.end method

.method public final readSdkConfigurationParams(Lcom/google/vr/sdk/proto/nano/SdkConfiguration$SdkConfigurationRequest;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final readUserPrefs()Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final updateUserPrefs(Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final writeDeviceParams(Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 6
    invoke-static {}, Lcom/google/vr/cardboard/ConfigUtils;->removeDeviceParamsFromExternalStorage()Z

    move-result p1

    return p1

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/google/vr/cardboard/ConfigUtils;->writeDeviceParamsToExternalStorage(Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;)Z

    move-result p1

    return p1
.end method
