.class Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;
.super Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;,
        Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$RefreshViewerProfileTask;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SdkDaydreamTouchListener"


# instance fields
.field private final gvrApi:Lcom/google/vr/ndk/base/GvrApi;

.field private final gvrLayout:Lcom/google/vr/ndk/base/GvrLayoutImpl;

.field private final isDaydreamImageAlignmentEnabled:Z

.field private final vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/VrParamsProvider;Landroid/util/DisplayMetrics;Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/ndk/base/GvrLayoutImpl;Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;-><init>()V

    .line 14
    iput-boolean p7, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->isDaydreamImageAlignmentEnabled:Z

    .line 15
    iput-object p1, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    .line 16
    iput-object p5, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 17
    iput-object p6, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayoutImpl;

    .line 18
    invoke-direct {p0, p2, p3, p4}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->init(Landroid/util/DisplayMetrics;Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayoutImpl;

    .line 3
    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getGvrApi()Lcom/google/vr/ndk/base/GvrApi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 5
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->getSdkConfigurationParams()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->daydreamImageAlignment:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->getSdkConfigurationParams()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->touchOverlayEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->isDaydreamImageAlignmentEnabled:Z

    .line 7
    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    .line 9
    new-instance v0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;-><init>(Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$1;)V

    .line 10
    invoke-static {p1}, Lcom/google/vr/cardboard/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    iput-object p1, v0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;->display:Landroid/view/Display;

    new-array p1, v2, [Ljava/lang/Void;

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$200(Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;)Lcom/google/vr/cardboard/VrParamsProvider;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;Landroid/util/DisplayMetrics;Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->init(Landroid/util/DisplayMetrics;Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;)V

    return-void
.end method

.method private init(Landroid/util/DisplayMetrics;Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->initWithDisplayParams(Landroid/util/DisplayMetrics;Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;)V

    .line 26
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->refreshViewerProfile()V

    return-void
.end method


# virtual methods
.method protected isDaydreamImageAlignmentEnabled()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->isDaydreamImageAlignmentEnabled:Z

    return v0
.end method

.method protected logEvent(ILcom/google/common/logging/nano/Vr$VREvent;)V
    .locals 2

    .line 31
    iget-object p1, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayoutImpl;

    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getVrCoreSdkClient()Lcom/google/vr/ndk/base/VrCoreSdkClient;

    move-result-object p1

    const-string v0, "SdkDaydreamTouchListener"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayoutImpl;

    .line 32
    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getVrCoreSdkClient()Lcom/google/vr/ndk/base/VrCoreSdkClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->getLoggingService()Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    new-instance p1, Lcom/google/vr/vrcore/logging/api/VREventParcelable;

    const/16 v1, 0x7dc

    invoke-direct {p1, v1, p2}, Lcom/google/vr/vrcore/logging/api/VREventParcelable;-><init>(ILcom/google/common/logging/nano/Vr$VREvent;)V

    .line 34
    :try_start_0
    iget-object p2, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayoutImpl;

    invoke-virtual {p2}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getVrCoreSdkClient()Lcom/google/vr/ndk/base/VrCoreSdkClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->getLoggingService()Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;->log(Lcom/google/vr/vrcore/logging/api/VREventParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Unable to log alignment event"

    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "Unable to log alignment event; logging service not available."

    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p2, p1, p1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->handleTouch(Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public refreshViewerProfile()V
    .locals 2

    .line 21
    new-instance v0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$RefreshViewerProfileTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$RefreshViewerProfileTask;-><init>(Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$RefreshViewerProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected setLensOffset(FFF)V
    .locals 1

    .line 29
    iget-object p3, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/google/vr/ndk/base/GvrApi;->setLensOffset(FFF)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    return-void
.end method
