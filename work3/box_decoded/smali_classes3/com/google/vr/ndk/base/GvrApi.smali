.class public Lcom/google/vr/ndk/base/GvrApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/GvrApi$ViewerType;,
        Lcom/google/vr/ndk/base/GvrApi$IdleListener;,
        Lcom/google/vr/ndk/base/GvrApi$Error;,
        Lcom/google/vr/ndk/base/GvrApi$PoseTracker;,
        Lcom/google/vr/ndk/base/GvrApi$Feature;
    }
.end annotation


# static fields
.field private static final IS_ROBOLECTRIC_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "GvrApi"

.field private static sPoseTrackerForTesting:Lcom/google/vr/ndk/base/GvrApi$PoseTracker;


# instance fields
.field private final context:Landroid/content/Context;

.field private final displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

.field private nativeGvrContext:J

.field private final ownsNativeGvrContext:Z

.field private properties:Lcom/google/vr/ndk/base/Properties;

.field private swapChainRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/vr/ndk/base/SwapChain;",
            ">;>;"
        }
    .end annotation
.end field

.field private userPrefs:Lcom/google/vr/ndk/base/UserPrefs;

.field private final vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "robolectric"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/vr/ndk/base/GvrApi;->IS_ROBOLECTRIC_BUILD:Z

    .line 182
    invoke-static {}, Lcom/google/vr/ndk/base/DefaultNativeLibraryLoader;->maybeLoadDefaultLibrary()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;J)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 31
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrApi;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrApi;->ownsNativeGvrContext:Z

    .line 33
    iput-wide p2, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    .line 34
    invoke-static {p1}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrApi;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    const/4 p2, 0x0

    .line 35
    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrApi;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrApi;->swapChainRefs:Ljava/util/ArrayList;

    .line 37
    invoke-static {p1}, Lcom/google/vr/ndk/base/GvrApi;->setApplicationState(Landroid/content/Context;)V

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid wrapped native GVR context."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/cardboard/DisplaySynchronizer;)V
    .locals 10

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrApi;->context:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrApi;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    const-wide/16 v0, 0x0

    if-nez p2, :cond_0

    move-wide v7, v0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/google/vr/cardboard/DisplaySynchronizer;->getNativeDisplaySynchronizer()J

    move-result-wide v2

    move-wide v7, v2

    .line 12
    :goto_0
    invoke-static {p1}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrApi;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    .line 13
    invoke-interface {p2}, Lcom/google/vr/cardboard/VrParamsProvider;->readDisplayParams()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrApi;->swapChainRefs:Ljava/util/ArrayList;

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/google/vr/ndk/base/GvrApi;->ownsNativeGvrContext:Z

    .line 16
    sget-boolean p2, Lcom/google/vr/ndk/base/GvrApi;->IS_ROBOLECTRIC_BUILD:Z

    if-nez p2, :cond_2

    .line 17
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p2

    .line 19
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v9, Lcom/google/vr/ndk/base/GvrApi;->sPoseTrackerForTesting:Lcom/google/vr/ndk/base/GvrApi$PoseTracker;

    move-object v4, p0

    .line 21
    invoke-direct/range {v4 .. v9}, Lcom/google/vr/ndk/base/GvrApi;->nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;JLcom/google/vr/ndk/base/GvrApi$PoseTracker;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 25
    iget-wide p1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Native GVR context creation failed, implementation unavailable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 24
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method static createDefaultDisplaySynchronizer(Landroid/content/Context;)Lcom/google/vr/cardboard/DisplaySynchronizer;
    .locals 2

    .line 41
    new-instance v0, Lcom/google/vr/cardboard/DisplaySynchronizer;

    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-object v0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetErrorString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static native nativeAnalyticsCreateSample(J[B)[B
.end method

.method static native nativeBufferSpecCreate(J)J
.end method

.method static native nativeBufferSpecDestroy(J)V
.end method

.method static native nativeBufferSpecGetSamples(J)I
.end method

.method static native nativeBufferSpecGetSize(JLandroid/graphics/Point;)V
.end method

.method static native nativeBufferSpecSetColorFormat(JI)V
.end method

.method static native nativeBufferSpecSetDepthStencilFormat(JI)V
.end method

.method static native nativeBufferSpecSetMultiviewLayers(JI)V
.end method

.method static native nativeBufferSpecSetSamples(JI)V
.end method

.method static native nativeBufferSpecSetSize(JII)V
.end method

.method static native nativeBufferViewportCreate(J)J
.end method

.method static native nativeBufferViewportDestroy(J)V
.end method

.method static native nativeBufferViewportEqual(JJ)Z
.end method

.method static native nativeBufferViewportGetExternalSurfaceId(J)I
.end method

.method static native nativeBufferViewportGetOpacity(J)F
.end method

.method static native nativeBufferViewportGetReprojection(J)I
.end method

.method static native nativeBufferViewportGetSourceBufferIndex(J)I
.end method

.method static native nativeBufferViewportGetSourceFov(JLandroid/graphics/RectF;)V
.end method

.method static native nativeBufferViewportGetSourceUv(JLandroid/graphics/RectF;)V
.end method

.method static native nativeBufferViewportGetTargetEye(J)I
.end method

.method static native nativeBufferViewportGetTransform(J[F)V
.end method

.method static native nativeBufferViewportGetVignetteFraction(JLandroid/graphics/PointF;)V
.end method

.method private native nativeBufferViewportListCreate(J)J
.end method

.method static native nativeBufferViewportListDestroy(J)V
.end method

.method static native nativeBufferViewportListGetItem(JIJ)V
.end method

.method static native nativeBufferViewportListGetSize(J)I
.end method

.method static native nativeBufferViewportListSetItem(JIJ)V
.end method

.method static native nativeBufferViewportSetExternalSurface(JJ)V
.end method

.method static native nativeBufferViewportSetExternalSurfaceId(JI)V
.end method

.method static native nativeBufferViewportSetEyeFromWorldMatrix(J[F)V
.end method

.method static native nativeBufferViewportSetOpacity(JF)V
.end method

.method static native nativeBufferViewportSetReprojection(JI)V
.end method

.method static native nativeBufferViewportSetSourceBufferIndex(JI)V
.end method

.method static native nativeBufferViewportSetSourceFov(JFFFF)V
.end method

.method static native nativeBufferViewportSetSourceLayer(JI)V
.end method

.method static native nativeBufferViewportSetSourceUv(JFFFF)V
.end method

.method static native nativeBufferViewportSetTargetEye(JI)V
.end method

.method static native nativeBufferViewportSetTransform(J[F)V
.end method

.method static native nativeBufferViewportSetVignetteFraction(JFF)V
.end method

.method static native nativeBufferViewportUnsetEyeFromWorldMatrix(J)V
.end method

.method private native nativeClearError(J)I
.end method

.method private native nativeComputeDistortedPoint(JI[F)[F
.end method

.method private native nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;JLcom/google/vr/ndk/base/GvrApi$PoseTracker;)J
.end method

.method static native nativeCreateEvent()J
.end method

.method static native nativeCreateValue()J
.end method

.method static native nativeDestroyEvent(J)V
.end method

.method static native nativeDestroyValue(J)V
.end method

.method private native nativeDistortToScreen(JIJ[FJ)V
.end method

.method private native nativeDumpDebugData(J)V
.end method

.method static native nativeExternalSurfaceCreate(J)J
.end method

.method static native nativeExternalSurfaceCreateWithListeners(JLjava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)J
.end method

.method static native nativeExternalSurfaceDestroy(J)V
.end method

.method static native nativeExternalSurfaceGetId(J)I
.end method

.method static native nativeExternalSurfaceGetSurface(J)Landroid/view/Surface;
.end method

.method static native nativeFrameBindBuffer(JI)V
.end method

.method static native nativeFrameGetBufferSize(JILandroid/graphics/Point;)V
.end method

.method static native nativeFrameGetFramebufferObject(JI)I
.end method

.method static native nativeFrameSubmit(JJ[F)V
.end method

.method static native nativeFrameUnbind(J)V
.end method

.method private native nativeGetAsyncReprojectionEnabled(J)Z
.end method

.method private native nativeGetBorderSizeMeters(J)F
.end method

.method private native nativeGetCurrentProperties(J)J
.end method

.method private native nativeGetError(J)I
.end method

.method private static native nativeGetErrorString(I)Ljava/lang/String;
.end method

.method static native nativeGetEventFlags(J)J
.end method

.method static native nativeGetEventTimestamp(J)J
.end method

.method static native nativeGetEventType(J)I
.end method

.method private native nativeGetEyeFromHeadMatrix(JI[F)V
.end method

.method private native nativeGetHeadSpaceFromStartSpaceRotation(J[FJ)V
.end method

.method private native nativeGetHeadSpaceFromStartSpaceTransform(J[FJ)V
.end method

.method private native nativeGetMaximumEffectiveRenderTargetSize(JLandroid/graphics/Point;)V
.end method

.method static native nativeGetProperty(JIJ)Z
.end method

.method static native nativeGetRecenterEventFlags(J)J
.end method

.method static native nativeGetRecenterEventStartSpaceFromTrackingSpaceTransform(J[F)V
.end method

.method static native nativeGetRecenterEventType(J)I
.end method

.method private native nativeGetRecommendedBufferViewports(JJ)V
.end method

.method private native nativeGetScreenBufferViewports(JJ)V
.end method

.method private native nativeGetScreenTargetSize(JLandroid/graphics/Point;)V
.end method

.method private native nativeGetUserPrefs(J)J
.end method

.method private native nativeGetViewerModel(J)Ljava/lang/String;
.end method

.method private native nativeGetViewerType(J)I
.end method

.method private native nativeGetViewerVendor(J)Ljava/lang/String;
.end method

.method private native nativeGetWindowBounds(J)[I
.end method

.method private native nativeInitializeGl(J)V
.end method

.method private native nativeIsFeatureSupported(JI)Z
.end method

.method private native nativeOnPauseReprojectionThread(J)V
.end method

.method private native nativeOnSurfaceChangedReprojectionThread(J)V
.end method

.method private native nativeOnSurfaceCreatedReprojectionThread(J)V
.end method

.method private native nativePause(J)V
.end method

.method private native nativePauseTracking(J)V
.end method

.method private native nativePauseTrackingGetState(J)[B
.end method

.method private native nativePollEvent(JJ)Z
.end method

.method private native nativeRecenterTracking(J)V
.end method

.method private native nativeReconnectSensors(J)V
.end method

.method private native nativeReleaseGvrContext(J)V
.end method

.method private native nativeRenderReprojectionThread(J)Landroid/graphics/Point;
.end method

.method private native nativeRequestContextSharing(JLcom/google/vr/cardboard/EglReadyListener;)V
.end method

.method private native nativeResetTracking(J)V
.end method

.method private native nativeResume(J)V
.end method

.method private native nativeResumeTracking(J)V
.end method

.method private native nativeResumeTrackingSetState(J[B)V
.end method

.method private static native nativeSetApplicationState(Ljava/lang/ClassLoader;Landroid/content/Context;)V
.end method

.method private native nativeSetAsyncReprojectionEnabled(JZ)Z
.end method

.method private native nativeSetDefaultFramebufferActive(J)V
.end method

.method private native nativeSetDefaultViewerProfile(JLjava/lang/String;)Z
.end method

.method private static native nativeSetDynamicLibraryLoadingEnabled(Z)V
.end method

.method private native nativeSetIdleListener(JLcom/google/vr/ndk/base/GvrApi$IdleListener;)V
.end method

.method private native nativeSetIgnoreManualPauseResumeTracker(JZ)V
.end method

.method private native nativeSetLensOffset(JFFF)V
.end method

.method private native nativeSetSurfaceSize(JII)V
.end method

.method private native nativeSetViewerParams(J[B)Z
.end method

.method static native nativeSwapChainAcquireFrame(J)J
.end method

.method static native nativeSwapChainCreate(J[J)J
.end method

.method static native nativeSwapChainDestroy(J)V
.end method

.method static native nativeSwapChainGetBufferCount(J)I
.end method

.method static native nativeSwapChainGetBufferSize(JILandroid/graphics/Point;)V
.end method

.method static native nativeSwapChainResizeBuffer(JIII)V
.end method

.method static native nativeUserPrefsGetControllerHandedness(J)I
.end method

.method static native nativeUserPrefsGetPerformanceHudEnabled(J)Z
.end method

.method static native nativeUserPrefsGetPerformanceMonitoringEnabled(J)Z
.end method

.method private static native nativeUsingDynamicLibrary()Z
.end method

.method private static native nativeUsingShimLibrary()Z
.end method

.method private native nativeUsingVrDisplayService(J)Z
.end method

.method static native nativeValueAsFlags(J)J
.end method

.method static native nativeValueAsFloat(J)F
.end method

.method static native nativeValueAsInt(J)I
.end method

.method static native nativeValueAsMat4f(J[F)V
.end method

.method static native nativeValueGetFlags(J)J
.end method

.method private static setApplicationState(Landroid/content/Context;)V
    .locals 1

    .line 178
    sget-boolean v0, Lcom/google/vr/ndk/base/GvrApi;->IS_ROBOLECTRIC_BUILD:Z

    if-nez v0, :cond_0

    .line 179
    const-class v0, Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetApplicationState(Ljava/lang/ClassLoader;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static setDynamicLibraryLoadingEnabled(Z)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetDynamicLibraryLoadingEnabled(Z)V

    return-void
.end method

.method public static setPoseTrackerForTesting(Lcom/google/vr/ndk/base/GvrApi$PoseTracker;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/google/vr/ndk/base/GvrApi;->sPoseTrackerForTesting:Lcom/google/vr/ndk/base/GvrApi$PoseTracker;

    return-void
.end method

.method private setViewerParams([B)Z
    .locals 2

    .line 176
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetViewerParams(J[B)Z

    move-result p1

    return p1
.end method

.method public static usingDynamicLibrary(Landroid/content/Context;)Z
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/google/vr/ndk/base/GvrApi;->setApplicationState(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/google/vr/ndk/base/GvrApi;->nativeUsingDynamicLibrary()Z

    move-result p0

    return p0
.end method

.method public static usingShimLibrary()Z
    .locals 1

    .line 7
    invoke-static {}, Lcom/google/vr/ndk/base/GvrApi;->nativeUsingShimLibrary()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearError()I
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeClearError(J)I

    move-result v0

    return v0
.end method

.method computeCurrentDisplayMetrics(Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/cardboard/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 174
    :goto_0
    invoke-static {v0, p1}, Lcom/google/vr/cardboard/DisplayUtils;->getDisplayMetricsLandscapeWithOverride(Landroid/view/Display;Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;)Landroid/util/DisplayMetrics;

    move-result-object p1

    return-object p1
.end method

.method public computeDistortedPoint(I[F)[F
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeComputeDistortedPoint(JI[F)[F

    move-result-object p1

    .line 155
    array-length p2, p1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    return-object p1

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Implementation error: invalid UV coordinates output."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public createBufferSpec()Lcom/google/vr/ndk/base/BufferSpec;
    .locals 3

    .line 84
    new-instance v0, Lcom/google/vr/ndk/base/BufferSpec;

    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-static {v1, v2}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecCreate(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/vr/ndk/base/BufferSpec;-><init>(J)V

    return-object v0
.end method

.method public createBufferViewport()Lcom/google/vr/ndk/base/BufferViewport;
    .locals 3

    .line 94
    new-instance v0, Lcom/google/vr/ndk/base/BufferViewport;

    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-static {v1, v2}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportCreate(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/vr/ndk/base/BufferViewport;-><init>(J)V

    return-object v0
.end method

.method public createBufferViewportList()Lcom/google/vr/ndk/base/BufferViewportList;
    .locals 3

    .line 93
    new-instance v0, Lcom/google/vr/ndk/base/BufferViewportList;

    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v1, v2}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportListCreate(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/vr/ndk/base/BufferViewportList;-><init>(J)V

    return-object v0
.end method

.method public createExternalSurface(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)Lcom/google/vr/ndk/base/ExternalSurface;
    .locals 1

    .line 85
    new-instance v0, Lcom/google/vr/ndk/base/ExternalSurface;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/vr/ndk/base/ExternalSurface;-><init>(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method public createSwapChain([Lcom/google/vr/ndk/base/BufferSpec;)Lcom/google/vr/ndk/base/SwapChain;
    .locals 4

    .line 86
    array-length v0, p1

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 87
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 88
    aget-object v2, p1, v1

    iget-wide v2, v2, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    new-instance p1, Lcom/google/vr/ndk/base/SwapChain;

    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-static {v1, v2, v0}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainCreate(J[J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/google/vr/ndk/base/SwapChain;-><init>(J)V

    .line 91
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->swapChainRefs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public distortToScreen(ILcom/google/vr/ndk/base/BufferViewportList;[FJ)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    .line 105
    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    iget-wide v4, p2, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    move-object v0, p0

    move v3, p1

    move-object v6, p3

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/vr/ndk/base/GvrApi;->nativeDistortToScreen(JIJ[FJ)V

    return-void

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Head transform must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method dumpDebugData()V
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeDumpDebugData(J)V

    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-string v0, "GvrApi"

    const-string v1, "GvrApi.shutdown() should be called to ensure resource cleanup"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrApi;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 47
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAsyncReprojectionEnabled()Z
    .locals 2

    .line 159
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetAsyncReprojectionEnabled(J)Z

    move-result v0

    return v0
.end method

.method public getBorderSizeMeters()F
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetBorderSizeMeters(J)F

    move-result v0

    return v0
.end method

.method public getCurrentProperties()Lcom/google/vr/ndk/base/Properties;
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->properties:Lcom/google/vr/ndk/base/Properties;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/google/vr/ndk/base/Properties;

    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v1, v2}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetCurrentProperties(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/vr/ndk/base/Properties;-><init>(J)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->properties:Lcom/google/vr/ndk/base/Properties;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->properties:Lcom/google/vr/ndk/base/Properties;

    return-object v0
.end method

.method public getError()I
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetError(J)I

    move-result v0

    return v0
.end method

.method public getEyeFromHeadMatrix(I[F)V
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetEyeFromHeadMatrix(JI[F)V

    return-void
.end method

.method public getEyeFromHeadMatrix(I)[F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 146
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/ndk/base/GvrApi;->getEyeFromHeadMatrix(I[F)V

    return-object v0
.end method

.method public getHeadSpaceFromStartSpaceRotation([FJ)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 112
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 114
    iget-wide v3, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetHeadSpaceFromStartSpaceRotation(J[FJ)V

    return-void

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid head rotation argument, must be a float[16]."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeadSpaceFromStartSpaceTransform([FJ)V
    .locals 8

    if-eqz p1, :cond_0

    .line 116
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 118
    iget-wide v3, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetHeadSpaceFromStartSpaceTransform(J[FJ)V

    return-void

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid head transform argument, must be a float[16]."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaximumEffectiveRenderTargetSize(Landroid/graphics/Point;)V
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetMaximumEffectiveRenderTargetSize(JLandroid/graphics/Point;)V

    return-void
.end method

.method public getNativeGvrContext()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    return-wide v0
.end method

.method public getRecommendedBufferViewports(Lcom/google/vr/ndk/base/BufferViewportList;)V
    .locals 4

    .line 95
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    iget-wide v2, p1, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetRecommendedBufferViewports(JJ)V

    return-void
.end method

.method public getScreenBufferViewports(Lcom/google/vr/ndk/base/BufferViewportList;)V
    .locals 4

    .line 97
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    iget-wide v2, p1, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetScreenBufferViewports(JJ)V

    return-void
.end method

.method public getScreenTargetSize(Landroid/graphics/Point;)V
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetScreenTargetSize(JLandroid/graphics/Point;)V

    return-void
.end method

.method getSdkConfigurationParams()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/ndk/base/SdkConfigurationReader;->getParams(Landroid/content/Context;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrefs()Lcom/google/vr/ndk/base/UserPrefs;
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->userPrefs:Lcom/google/vr/ndk/base/UserPrefs;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/google/vr/ndk/base/UserPrefs;

    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v1, v2}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetUserPrefs(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/vr/ndk/base/UserPrefs;-><init>(J)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->userPrefs:Lcom/google/vr/ndk/base/UserPrefs;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->userPrefs:Lcom/google/vr/ndk/base/UserPrefs;

    return-object v0
.end method

.method public getViewerModel()Ljava/lang/String;
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetViewerModel(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewerType()I
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetViewerType(J)I

    move-result v0

    return v0
.end method

.method public getViewerVendor()Ljava/lang/String;
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetViewerVendor(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowBounds()[I
    .locals 3

    .line 150
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetWindowBounds(J)[I

    move-result-object v0

    .line 151
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    return-object v0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Implementation error: invalid window bounds."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public initializeGl()V
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeInitializeGl(J)V

    return-void
.end method

.method public isFeatureSupported(I)Z
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeIsFeatureSupported(JI)Z

    move-result p1

    return p1
.end method

.method isOpenGLKHRDebugEnabled()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->readUserPrefs()Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 74
    :cond_0
    iget-object v0, v0, Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;->developerPrefs:Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->getOpenglKhrDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public onPauseReprojectionThread()V
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeOnPauseReprojectionThread(J)V

    return-void
.end method

.method public onSurfaceChangedReprojectionThread()V
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeOnSurfaceChangedReprojectionThread(J)V

    return-void
.end method

.method public onSurfaceCreatedReprojectionThread()V
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeOnSurfaceCreatedReprojectionThread(J)V

    return-void
.end method

.method pause()V
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativePause(J)V

    return-void
.end method

.method public pauseTracking()V
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativePauseTracking(J)V

    return-void
.end method

.method public pauseTrackingGetState()[B
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativePauseTrackingGetState(J)[B

    move-result-object v0

    return-object v0
.end method

.method public pollEvent(Lcom/google/vr/ndk/base/Event;)Z
    .locals 4

    .line 167
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    iget-wide v2, p1, Lcom/google/vr/ndk/base/Event;->nativeEvent:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativePollEvent(JJ)Z

    move-result p1

    return p1
.end method

.method public recenterTracking()V
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeRecenterTracking(J)V

    return-void
.end method

.method public reconnectSensors()V
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeReconnectSensors(J)V

    return-void
.end method

.method public refreshViewerProfile()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->readDeviceParams()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/GvrApi;->setViewerParams([B)Z

    :cond_0
    return-void
.end method

.method public renderReprojectionThread()Landroid/graphics/Point;
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeRenderReprojectionThread(J)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method requestContextSharing(Lcom/google/vr/cardboard/EglReadyListener;)V
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeRequestContextSharing(JLcom/google/vr/cardboard/EglReadyListener;)V

    return-void
.end method

.method public resetTracking()V
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeResetTracking(J)V

    return-void
.end method

.method resume()V
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeResume(J)V

    return-void
.end method

.method public resumeTracking()V
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeResumeTracking(J)V

    return-void
.end method

.method public resumeTrackingSetState([B)V
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeResumeTrackingSetState(J[B)V

    return-void
.end method

.method setAsyncReprojectionEnabled(Z)Z
    .locals 2

    .line 158
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetAsyncReprojectionEnabled(JZ)Z

    move-result p1

    return p1
.end method

.method public setDefaultFramebufferActive()V
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetDefaultFramebufferActive(J)V

    return-void
.end method

.method public setDefaultViewerProfile(Ljava/lang/String;)Z
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetDefaultViewerProfile(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method setIdleListener(Lcom/google/vr/ndk/base/GvrApi$IdleListener;)V
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetIdleListener(JLcom/google/vr/ndk/base/GvrApi$IdleListener;)V

    return-void
.end method

.method setIgnoreManualTrackerPauseResume(Z)V
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetIgnoreManualPauseResumeTracker(JZ)V

    return-void
.end method

.method public setLensOffset(FFF)V
    .locals 6

    .line 165
    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetLensOffset(JFFF)V

    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ne v2, v0, :cond_2

    .line 162
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetSurfaceSize(JII)V

    return-void

    .line 161
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Custom surface dimensions should both either be zero or non-zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shutdown()V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->swapChainRefs:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 54
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/ndk/base/SwapChain;

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v3}, Lcom/google/vr/ndk/base/SwapChain;->shutdown()V

    goto :goto_0

    .line 58
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 59
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    .line 60
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrApi;->ownsNativeGvrContext:Z

    if-eqz v0, :cond_2

    .line 61
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeReleaseGvrContext(J)V

    .line 62
    :cond_2
    iput-wide v2, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    :cond_3
    return-void
.end method

.method public usingVrDisplayService()Z
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeUsingVrDisplayService(J)Z

    move-result v0

    return v0
.end method
