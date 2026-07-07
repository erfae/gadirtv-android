.class Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/CardboardEmulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControllerCallbacks"
.end annotation


# instance fields
.field private final cardboardTriggerCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;->cardboardTriggerCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 3

    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getButtonEventCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getButtonEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    move-result-object v1

    .line 12
    iget-boolean v2, v1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    if-eqz v2, :cond_1

    .line 13
    iget v1, v1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;->cardboardTriggerCallback:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;->onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    return-void
.end method

.method public onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 0

    return-void
.end method

.method public onControllerStateChanged(II)V
    .locals 0

    return-void
.end method

.method public onServiceConnected(I)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onServiceFailed()V
    .locals 0

    return-void
.end method

.method public onServiceInitFailed(I)V
    .locals 0

    return-void
.end method

.method public onServiceUnavailable()V
    .locals 0

    return-void
.end method
