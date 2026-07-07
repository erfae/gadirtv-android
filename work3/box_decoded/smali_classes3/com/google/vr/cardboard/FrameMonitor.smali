.class public Lcom/google/vr/cardboard/FrameMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static final CREATE_CHOREOGRAPHER:I = 0x0

.field private static final MSG_POST_FRAME_CALLBACK:I = 0x1

.field private static final MSG_REMOVE_FRAME_CALLBACK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FrameMonitor"


# instance fields
.field private final callback:Landroid/view/Choreographer$FrameCallback;

.field private choreographer:Landroid/view/Choreographer;

.field private final choreographerOwnerThread:Landroid/os/HandlerThread;

.field private handler:Landroid/os/Handler;

.field private isResumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/Choreographer$FrameCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/google/vr/cardboard/FrameMonitor;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Choreographer;Landroid/view/Choreographer$FrameCallback;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/google/vr/cardboard/FrameMonitor;->callback:Landroid/view/Choreographer$FrameCallback;

    .line 5
    iput-object p1, p0, Lcom/google/vr/cardboard/FrameMonitor;->choreographer:Landroid/view/Choreographer;

    .line 6
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "FrameMonitor"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/vr/cardboard/FrameMonitor;->choreographerOwnerThread:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/vr/cardboard/FrameMonitor;->callback:Landroid/view/Choreographer$FrameCallback;

    invoke-interface {v0, p1, p2}, Landroid/view/Choreographer$FrameCallback;->doFrame(J)V

    .line 31
    iget-object p1, p0, Lcom/google/vr/cardboard/FrameMonitor;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/cardboard/FrameMonitor;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 33
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/google/vr/cardboard/FrameMonitor;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return v0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/google/vr/cardboard/FrameMonitor;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return v0

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/google/vr/cardboard/FrameMonitor;->choreographer:Landroid/view/Choreographer;

    if-nez p1, :cond_3

    .line 35
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/cardboard/FrameMonitor;->choreographer:Landroid/view/Choreographer;

    :cond_3
    return v0
.end method

.method public init()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/vr/cardboard/FrameMonitor;->choreographerOwnerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/cardboard/FrameMonitor;->choreographerOwnerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/FrameMonitor;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 13
    iget-boolean v0, p0, Lcom/google/vr/cardboard/FrameMonitor;->isResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/vr/cardboard/FrameMonitor;->isResumed:Z

    .line 16
    iget-object v0, p0, Lcom/google/vr/cardboard/FrameMonitor;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 18
    iget-boolean v0, p0, Lcom/google/vr/cardboard/FrameMonitor;->isResumed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/google/vr/cardboard/FrameMonitor;->isResumed:Z

    .line 21
    iget-object v1, p0, Lcom/google/vr/cardboard/FrameMonitor;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 23
    invoke-virtual {p0}, Lcom/google/vr/cardboard/FrameMonitor;->onPause()V

    .line 24
    iget-object v0, p0, Lcom/google/vr/cardboard/FrameMonitor;->choreographerOwnerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/cardboard/FrameMonitor;->choreographerOwnerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 28
    sget-object v1, Lcom/google/vr/cardboard/FrameMonitor;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Interrupted when shutting down FrameMonitor: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
