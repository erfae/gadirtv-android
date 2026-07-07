.class Lcom/google/vr/ndk/base/VrCoreSdkClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MIN_ON_EXITING_FROM_VR_API_VERSION:I = 0x10

.field static final MIN_PREPARE_VR_2_API_VERSION:I = 0xd

.field static final MIN_PREPARE_VR_3_API_VERSION:I = 0x16

.field static final MIN_VRCORE_API_VERSION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VrCoreSdkClient"

.field static final TARGET_VR_CORE_API_VERSION:I = 0x19


# instance fields
.field private final closeVrRunnable:Ljava/lang/Runnable;

.field private final componentName:Landroid/content/ComponentName;

.field private final context:Landroid/content/Context;

.field private final daydreamListener:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

.field private daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

.field private final daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

.field private final fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

.field private final gvrApi:Lcom/google/vr/ndk/base/GvrApi;

.field private helpCenterDialog:Landroid/app/AlertDialog;

.field private isBound:Z

.field private isEnabled:Z

.field private isResumed:Z

.field private loggingService:Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

.field private onDonNotNeededListener:Ljava/lang/Runnable;

.field private optionalReentryIntent:Landroid/app/PendingIntent;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private final shouldBind:Z

.field private vrCoreClientApiVersion:I

.field private vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrApi;Landroid/content/ComponentName;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;Ljava/lang/Runnable;Lcom/google/vr/ndk/base/FadeOverlayView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isEnabled:Z

    .line 3
    new-instance v1, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;

    invoke-direct {v1, p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;-><init>(Lcom/google/vr/ndk/base/VrCoreSdkClient;)V

    iput-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->serviceConnection:Landroid/content/ServiceConnection;

    .line 4
    iput-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 6
    iput-object p3, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->componentName:Landroid/content/ComponentName;

    .line 7
    iput-object p4, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    .line 8
    iput-object p5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->closeVrRunnable:Ljava/lang/Runnable;

    .line 9
    iput-object p6, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    .line 10
    new-instance p3, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    invoke-direct {p3, p2, p6, p5}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;-><init>(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/ndk/base/FadeOverlayView;Ljava/lang/Runnable;)V

    iput-object p3, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamListener:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    .line 11
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->hasCompatibleSdkService(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->shouldBind:Z

    .line 12
    invoke-virtual {p2, v0}, Lcom/google/vr/ndk/base/GvrApi;->setIgnoreManualTrackerPauseResume(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/ndk/base/VrCoreSdkClient;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->handleBindFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->resumeTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;)Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->loggingService:Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 0

    .line 155
    invoke-static {p0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->resumeTracking(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/IDaydreamManager;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/vr/ndk/base/VrCoreSdkClient;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->handleNoDaydreamManager()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Landroid/content/ComponentName;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamListener:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->prepareVr(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Ljava/lang/Runnable;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->onDonNotNeededListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/vr/ndk/base/VrCoreSdkClient;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->handlePrepareVrFailed()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isResumed:Z

    return p0
.end method

.method private doBind()Z
    .locals 4

    .line 48
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isBound:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 50
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->shouldBind:Z

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.vr.vrcore.BIND_SDK_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.vr.vrcore"

    .line 52
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v2, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isBound:Z

    .line 54
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isBound:Z

    if-nez v0, :cond_2

    .line 55
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->handleBindFailed()V

    .line 56
    :cond_2
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isBound:Z

    return v0
.end method

.method private doUnbind()V
    .locals 4

    .line 57
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isResumed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, v1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->resumeTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->pauseTrackingGetState()[B

    .line 60
    :goto_0
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isBound:Z

    if-nez v0, :cond_1

    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    if-eqz v0, :cond_2

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->unregisterListener(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 66
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to unregister Daydream listener: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VrCoreSdkClient"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_1
    iput-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    .line 68
    :cond_2
    iput-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    .line 69
    iput-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->loggingService:Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    .line 70
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isBound:Z

    return-void
.end method

.method private handleBindFailed()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->doUnbind()V

    .line 74
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->warnIfIncompatibleClient()V

    return-void
.end method

.method private handleNoDaydreamManager()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->doUnbind()V

    .line 77
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->warnIfIncompatibleClient()V

    return-void
.end method

.method private handlePrepareVrFailed()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->doUnbind()V

    .line 80
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->closeVrRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private hasCompatibleSdkService(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 98
    :try_start_0
    invoke-static {p1}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getVrCoreClientApiVersion(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->vrCoreClientApiVersion:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-lt p1, v2, :cond_0

    return v1

    :cond_0
    const-string p1, "VrCoreSdkClient"

    const-string v3, "VrCore service obsolete, GVR SDK requires API %d but found API %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    iget v2, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->vrCoreClientApiVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 103
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private prepareVr(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    iget v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->vrCoreClientApiVersion:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->optionalReentryIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const-string v0, "VrCoreSdkClient"

    const-string v1, "Ignoring client re-entry intent; unsupported by current VrCore."

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    iget-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->prepareVr(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I

    move-result p1

    return p1

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->componentName:Landroid/content/ComponentName;

    .line 113
    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/DaydreamUtils;->getComponentDaydreamCompatibility(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/google/vr/ndk/base/DaydreamCompatibility;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->optionalReentryIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_3

    .line 116
    iget-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->componentName:Landroid/content/ComponentName;

    invoke-static {v1}, Lcom/google/vr/ndk/base/DaydreamApi;->createVrIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x20000000

    .line 117
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    iget-object v2, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    instance-of v3, v2, Lcom/google/vr/cardboard/VrContextWrapper;

    if-nez v3, :cond_2

    .line 119
    invoke-static {v2}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 120
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 121
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 122
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 124
    :cond_3
    iget v2, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->vrCoreClientApiVersion:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_4

    .line 125
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 126
    iget-object v3, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->componentName:Landroid/content/ComponentName;

    const-string v4, "COMPONENT_NAME_KEY"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/DaydreamCompatibility;->toDeprecated()I

    move-result v3

    const-string v4, "DAYDREAM_COMPATIBILITY_KEY"

    .line 129
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/DaydreamCompatibility;->getSupportedHeadsets()I

    move-result v0

    const-string v3, "DAYDREAM_COMPATIBILITY_BITMASK_KEY"

    .line 132
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "OPTIONAL_REENTRY_INTENT_KEY"

    .line 133
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 135
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->usingVrDisplayService()Z

    move-result v0

    const-string v1, "IS_USING_VR_DISPLAY_SERVICE_KEY"

    .line 136
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    invoke-interface {v0, v2, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->prepareVr3(Landroid/os/Bundle;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I

    move-result p1

    return p1

    .line 138
    :cond_4
    iget-object v2, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    iget-object v3, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->componentName:Landroid/content/ComponentName;

    .line 139
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/DaydreamCompatibility;->toDeprecated()I

    move-result v0

    .line 140
    invoke-interface {v2, v3, v0, v1, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->prepareVr2(Landroid/content/ComponentName;ILandroid/app/PendingIntent;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I

    move-result p1

    return p1
.end method

.method private static resumeTracking(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->getData()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 96
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/GvrApi;->resumeTrackingSetState([B)V

    return-void
.end method

.method private resumeTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-static {v0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->resumeTracking(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    .line 91
    iget-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/google/vr/ndk/base/FadeOverlayView;->flushAutoFade()V

    :cond_0
    return-void
.end method

.method private warnIfIncompatibleClient()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    iget-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    iget-object v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    .line 83
    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamRequiredComponent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->helpCenterDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->context:Landroid/content/Context;

    sget v1, Lcom/google/vr/cardboard/R$string;->dialog_title_incompatible_phone:I

    sget v2, Lcom/google/vr/cardboard/R$string;->dialog_message_incompatible_phone:I

    iget-object v3, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->closeVrRunnable:Ljava/lang/Runnable;

    .line 88
    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/cardboard/UiUtils;->showDaydreamHelpCenterDialog(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->helpCenterDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method


# virtual methods
.method getDaydreamManager()Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    return-object v0
.end method

.method getHeadTrackingState()Lcom/google/vr/vrcore/common/api/HeadTrackingState;
    .locals 1

    .line 16
    new-instance v0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    invoke-direct {v0}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;-><init>()V

    return-object v0
.end method

.method getLoggingService()Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->loggingService:Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    return-object v0
.end method

.method public onExitingFromVr()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->vrCoreClientApiVersion:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    return-void

    .line 43
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->onExitingFromVr()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 46
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to signal exit from VR to VrCore: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VrCoreSdkClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isResumed:Z

    .line 22
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamListener:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->resetSafeguards()V

    .line 23
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->doUnbind()V

    :cond_0
    return-void
.end method

.method public onResume()Z
    .locals 1

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isResumed:Z

    .line 18
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->doBind()Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 28
    :cond_0
    iput-boolean p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isEnabled:Z

    .line 29
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrApi;->setIgnoreManualTrackerPauseResume(Z)V

    .line 30
    iget-boolean p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isResumed:Z

    if-eqz p1, :cond_2

    .line 31
    iget-boolean p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->isEnabled:Z

    if-eqz p1, :cond_1

    .line 32
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->doBind()Z

    return-void

    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->doUnbind()V

    :cond_2
    return-void
.end method

.method public setOnDonNotNeededListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->onDonNotNeededListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setReentryIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient;->optionalReentryIntent:Landroid/app/PendingIntent;

    return-void
.end method
