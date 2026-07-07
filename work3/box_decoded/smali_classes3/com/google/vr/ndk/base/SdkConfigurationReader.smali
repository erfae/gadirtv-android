.class public Lcom/google/vr/ndk/base/SdkConfigurationReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

.field static final REQUESTED_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

.field private static final TAG:Ljava/lang/String; = "SdkConfigurationReader"

.field static sParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;-><init>()V

    .line 23
    sput-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->REQUESTED_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useSystemClockForSensorTimestamps:Ljava/lang/Boolean;

    .line 24
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useMagnetometerInSensorFusion:Ljava/lang/Boolean;

    .line 25
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useStationaryBiasCorrection:Ljava/lang/Boolean;

    .line 26
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowDynamicLibraryLoading:Ljava/lang/Boolean;

    .line 27
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->cpuLateLatchingEnabled:Ljava/lang/Boolean;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->daydreamImageAlignment:Ljava/lang/Integer;

    .line 29
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->asyncReprojectionConfig:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;

    .line 30
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useOnlineMagnetometerCalibration:Ljava/lang/Boolean;

    .line 31
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useDeviceIdleDetection:Ljava/lang/Boolean;

    .line 32
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowDynamicJavaLibraryLoading:Ljava/lang/Boolean;

    .line 33
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->touchOverlayEnabled:Ljava/lang/Boolean;

    .line 34
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->enableForcedTrackingCompat:Ljava/lang/Boolean;

    .line 35
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowVrcoreHeadTracking:Ljava/lang/Boolean;

    .line 36
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowVrcoreCompositing:Ljava/lang/Boolean;

    .line 37
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$ScreenCaptureConfig;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$ScreenCaptureConfig;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->screenCaptureConfig:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$ScreenCaptureConfig;

    .line 38
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->dimUiLayer:Ljava/lang/Boolean;

    .line 39
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->disallowMultiview:Ljava/lang/Boolean;

    .line 40
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useDirectModeSensors:Ljava/lang/Boolean;

    .line 41
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowPassthrough:Ljava/lang/Boolean;

    .line 42
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowHighPriorityAppRenderThread:Ljava/lang/Boolean;

    .line 43
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;-><init>()V

    .line 44
    sput-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->DEFAULT_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useSystemClockForSensorTimestamps:Ljava/lang/Boolean;

    .line 45
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useMagnetometerInSensorFusion:Ljava/lang/Boolean;

    .line 46
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useStationaryBiasCorrection:Ljava/lang/Boolean;

    .line 47
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowDynamicLibraryLoading:Ljava/lang/Boolean;

    .line 48
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->cpuLateLatchingEnabled:Ljava/lang/Boolean;

    const/4 v3, 0x3

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->daydreamImageAlignment:Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 50
    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->asyncReprojectionConfig:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;

    .line 51
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useOnlineMagnetometerCalibration:Ljava/lang/Boolean;

    .line 52
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useDeviceIdleDetection:Ljava/lang/Boolean;

    .line 53
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowDynamicJavaLibraryLoading:Ljava/lang/Boolean;

    .line 54
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->touchOverlayEnabled:Ljava/lang/Boolean;

    .line 55
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->enableForcedTrackingCompat:Ljava/lang/Boolean;

    .line 56
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowVrcoreHeadTracking:Ljava/lang/Boolean;

    .line 57
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowVrcoreCompositing:Ljava/lang/Boolean;

    .line 58
    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->screenCaptureConfig:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$ScreenCaptureConfig;

    .line 59
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->dimUiLayer:Ljava/lang/Boolean;

    .line 60
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->disallowMultiview:Ljava/lang/Boolean;

    .line 61
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useDirectModeSensors:Ljava/lang/Boolean;

    .line 62
    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowPassthrough:Ljava/lang/Boolean;

    .line 63
    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowHighPriorityAppRenderThread:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParams(Landroid/content/Context;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
    .locals 2

    .line 2
    const-class v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/ndk/base/SdkConfigurationReader;->sParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/google/vr/ndk/base/SdkConfigurationReader;->readParamsFromProvider(Lcom/google/vr/cardboard/VrParamsProvider;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v1

    .line 8
    monitor-enter v0

    .line 9
    :try_start_1
    sput-object v1, Lcom/google/vr/ndk/base/SdkConfigurationReader;->sParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 10
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-interface {p0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    .line 12
    sget-object p0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->sParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private static readParamsFromProvider(Lcom/google/vr/cardboard/VrParamsProvider;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
    .locals 4

    .line 13
    new-instance v0, Lcom/google/vr/sdk/proto/nano/SdkConfiguration$SdkConfigurationRequest;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/SdkConfiguration$SdkConfigurationRequest;-><init>()V

    .line 14
    sget-object v1, Lcom/google/vr/ndk/base/SdkConfigurationReader;->REQUESTED_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/SdkConfiguration$SdkConfigurationRequest;->requestedParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    const-string v1, "1.180.0"

    .line 15
    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/SdkConfiguration$SdkConfigurationRequest;->sdkVersion:Ljava/lang/String;

    .line 16
    invoke-interface {p0, v0}, Lcom/google/vr/cardboard/VrParamsProvider;->readSdkConfigurationParams(Lcom/google/vr/sdk/proto/nano/SdkConfiguration$SdkConfigurationRequest;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object p0

    const-string v0, "SdkConfigurationReader"

    if-nez p0, :cond_0

    const-string p0, "VrParamsProvider returned null params, using defaults."

    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sget-object p0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->DEFAULT_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Fetched params from VrParamsProvider: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method
