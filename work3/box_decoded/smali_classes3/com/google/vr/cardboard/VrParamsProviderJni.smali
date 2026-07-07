.class public Lcom/google/vr/cardboard/VrParamsProviderJni;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VrParamsProviderJni"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeUpdateNativeDisplayParamsPointer(JIIFFFI)V
.end method

.method private static readDeviceParams(Landroid/content/Context;)[B
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->readDeviceParams()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method private static readDisplayParams(Landroid/content/Context;J)V
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "VrParamsProviderJni"

    const-string v0, "Missing context for phone params lookup. Results may be invalid."

    .line 22
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Lcom/google/vr/cardboard/DisplayUtils;->getBorderSizeMeters(Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;)F

    move-result v0

    const/4 v1, 0x0

    .line 26
    invoke-static {p1, p2, p0, v0, v1}, Lcom/google/vr/cardboard/VrParamsProviderJni;->updateNativeDisplayParamsPointer(JLandroid/util/DisplayMetrics;FI)V

    return-void

    .line 28
    :cond_0
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->readDisplayParams()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    move-result-object v1

    .line 30
    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    .line 31
    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 32
    new-instance v2, Lcom/google/vr/cardboard/AndroidPCompat;

    invoke-direct {v2}, Lcom/google/vr/cardboard/AndroidPCompat;-><init>()V

    .line 34
    invoke-static {v0, v1}, Lcom/google/vr/cardboard/DisplayUtils;->getDisplayMetricsLandscapeWithOverride(Landroid/view/Display;Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 35
    invoke-static {v1}, Lcom/google/vr/cardboard/DisplayUtils;->getBorderSizeMeters(Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;)F

    move-result v1

    .line 36
    invoke-static {p0, v0, v2}, Lcom/google/vr/cardboard/DisplayUtils;->getCutoutMarginLandscapePixels(Landroid/content/Context;Landroid/view/Display;Lcom/google/vr/cardboard/AndroidPCompat;)I

    move-result p0

    .line 37
    invoke-static {p1, p2, v3, v1, p0}, Lcom/google/vr/cardboard/VrParamsProviderJni;->updateNativeDisplayParamsPointer(JLandroid/util/DisplayMetrics;FI)V

    return-void
.end method

.method private static readSdkConfigurationParams(Landroid/content/Context;)[B
    .locals 0

    .line 8
    invoke-static {p0}, Lcom/google/vr/ndk/base/SdkConfigurationReader;->getParams(Landroid/content/Context;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method private static readUserPrefs(Landroid/content/Context;)[B
    .locals 1

    .line 39
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p0

    .line 40
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->readUserPrefs()Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;

    move-result-object v0

    .line 41
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method private static updateNativeDisplayParamsPointer(JLandroid/util/DisplayMetrics;FI)V
    .locals 8

    .line 45
    iget v2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, p2, Landroid/util/DisplayMetrics;->xdpi:F

    iget v5, p2, Landroid/util/DisplayMetrics;->ydpi:F

    move-wide v0, p0

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/google/vr/cardboard/VrParamsProviderJni;->nativeUpdateNativeDisplayParamsPointer(JIIFFFI)V

    return-void
.end method

.method private static writeDeviceParams(Landroid/content/Context;[B)Z
    .locals 3

    .line 9
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 11
    :try_start_0
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-interface {p0, p1}, Lcom/google/vr/cardboard/VrParamsProvider;->writeDeviceParams(Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    return p1

    :goto_1
    :try_start_1
    const-string v0, "VrParamsProviderJni"

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error parsing protocol buffer: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    const/4 p0, 0x0

    return p0

    .line 20
    :goto_2
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    throw p1
.end method
