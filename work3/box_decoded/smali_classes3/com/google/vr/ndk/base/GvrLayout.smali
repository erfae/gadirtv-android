.class public Lcom/google/vr/ndk/base/GvrLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/GvrLayout$SetOnDonNotNeededListenerResult;,
        Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GvrLayout"


# instance fields
.field private gvrApi:Lcom/google/vr/ndk/base/GvrApi;

.field private impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

.field private uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

.field private videoSurface:Lcom/google/vr/ndk/base/ExternalSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->init()V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "An Activity Context is required for VR functionality."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    invoke-static {p1}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->init()V

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An Activity Context is required for VR functionality."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrLayoutImpl;Lcom/google/vr/ndk/base/GvrApi;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Lcom/google/vr/ndk/base/GvrLayoutImplWrapper;

    invoke-direct {p1, p2}, Lcom/google/vr/ndk/base/GvrLayoutImplWrapper;-><init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;)V

    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    .line 18
    iput-object p3, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 19
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/cardboard/VrContextWrapper;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    const-string v0, "GvrLayout.init"

    .line 21
    invoke-static {v0}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrLayoutFactory;->create(Landroid/content/Context;)Lcom/google/vr/vrcore/library/api/IGvrLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    .line 24
    :cond_0
    new-instance v0, Lcom/google/vr/ndk/base/GvrUiLayout;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v1}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->getUiLayout()Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/vr/ndk/base/GvrUiLayout;-><init>(Lcom/google/vr/vrcore/library/api/IGvrUiLayout;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    .line 25
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    if-nez v0, :cond_1

    .line 26
    new-instance v0, Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v2}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->getNativeGvrContext()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v0}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->getRootView()Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object v0

    const-class v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->unwrap(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 31
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_0
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v0
.end method


# virtual methods
.method public enableAsyncReprojectionProtected()Z
    .locals 2

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->enableAsyncReprojection(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enableAsyncReprojectionVideoSurface(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;Z)Z
    .locals 2

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v0, p3}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->enableAsyncReprojection(I)Z

    move-result p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 77
    :cond_0
    iget-object p3, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Lcom/google/vr/ndk/base/GvrApi;->isFeatureSupported(I)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p1, "GvrLayout"

    const-string p2, "External Surfaces are unsupported. Cannot enable video Surface."

    .line 78
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 80
    :cond_1
    iget-object p3, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {p3, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->createExternalSurface(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)Lcom/google/vr/ndk/base/ExternalSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurface:Lcom/google/vr/ndk/base/ExternalSurface;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 76
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public enableCardboardTriggerEmulation(Ljava/lang/Runnable;)Z
    .locals 1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->enableCardboardTriggerEmulation(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAsyncReprojectionVideoSurface()Landroid/view/Surface;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurface:Lcom/google/vr/ndk/base/ExternalSurface;

    if-nez v0, :cond_0

    const-string v0, "GvrLayout"

    const-string v1, "Async reprojection video is not enabled. Did you call enableAsyncReprojectionVideoSurface()?"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/ExternalSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getAsyncReprojectionVideoSurfaceId()I
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurface:Lcom/google/vr/ndk/base/ExternalSurface;

    if-nez v0, :cond_0

    const-string v0, "GvrLayout"

    const-string v1, "Async reprojection video is not enabled. Did you call enableAsyncReprojectionVideoSurface()?"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/ExternalSurface;->getId()I

    move-result v0

    return v0
.end method

.method public getGvrApi()Lcom/google/vr/ndk/base/GvrApi;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    return-object v0
.end method

.method public getUiLayout()Lcom/google/vr/ndk/base/GvrUiLayout;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v0}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->onBackPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onPause()V
    .locals 2

    const-string v0, "GvrLayout.onPause"

    .line 34
    invoke-static {v0}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v0}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_0
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v0
.end method

.method public onResume()V
    .locals 2

    const-string v0, "GvrLayout.onResume"

    .line 41
    invoke-static {v0}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v0}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_0
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v0
.end method

.method public setAsyncReprojectionEnabled(Z)Z
    .locals 1

    if-nez p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrApi;->getAsyncReprojectionEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Async reprojection cannot be disabled once enabled."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->enableAsyncReprojection(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setFixedPresentationSurfaceSize(II)V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayout;->getGvrApi()Lcom/google/vr/ndk/base/GvrApi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->setSurfaceSize(II)V

    return-void
.end method

.method public setOnDonNotNeededListener(Ljava/lang/Runnable;)I
    .locals 1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->setOnDonNotNeededListener(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :catch_0
    const-string p1, "GvrLayout"

    const-string v0, "Unable to call setOnDonNotNeededListener(); probably an old VrCore build."

    .line 117
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setPresentationView(Landroid/view/View;)V
    .locals 1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->setPresentationView(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setReentryIntent(Landroid/app/PendingIntent;)V
    .locals 1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->setReentryIntent(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setStereoModeEnabled(Z)V
    .locals 1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->setStereoModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public shutdown()V
    .locals 2

    const-string v0, "GvrLayout.shutdown"

    .line 52
    invoke-static {v0}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurface:Lcom/google/vr/ndk/base/ExternalSurface;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/ExternalSurface;->shutdown()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->videoSurface:Lcom/google/vr/ndk/base/ExternalSurface;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrLayout;

    invoke-interface {v0}, Lcom/google/vr/vrcore/library/api/IGvrLayout;->shutdown()V

    .line 57
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_0
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v0
.end method
