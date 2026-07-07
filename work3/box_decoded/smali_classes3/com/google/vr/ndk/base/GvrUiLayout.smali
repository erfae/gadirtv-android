.class public Lcom/google/vr/ndk/base/GvrUiLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final impl:Lcom/google/vr/vrcore/library/api/IGvrUiLayout;


# direct methods
.method constructor <init>(Lcom/google/vr/vrcore/library/api/IGvrUiLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    return-void
.end method

.method public static launchOrInstallGvrApp(Landroid/app/Activity;)V
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/google/vr/cardboard/UiUtils;->launchOrInstallCardboard(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 2

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    invoke-interface {v0}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout;->isEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCloseButtonListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout;->setCloseButtonListener(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    invoke-interface {v0}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout;->getRootView()Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object v0

    const-class v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->unwrap(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSettingsButtonEnabled(Z)V
    .locals 1

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout;->setSettingsButtonEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSettingsButtonListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout;->setSettingsButtonListener(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setTransitionViewEnabled(Z)V
    .locals 1

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout;->setTransitionViewEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setTransitionViewListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout;->setTransitionViewListener(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setViewerName(Ljava/lang/String;)V
    .locals 1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayout;->impl:Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout;->setViewerName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
