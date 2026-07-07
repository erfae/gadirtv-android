.class Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/ExternalSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeCallback"
.end annotation


# instance fields
.field private final nativeFrameCallbackPtr:J

.field private final surfaceListener:Ljava/lang/Runnable;

.field private final surfaceMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback$$Lambda$0;

    invoke-direct {v0, p1, p2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback$$Lambda$0;-><init>(J)V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback;->surfaceListener:Ljava/lang/Runnable;

    .line 3
    iput-wide p3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback;->nativeFrameCallbackPtr:J

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback;->surfaceMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static final synthetic lambda$new$0$ExternalSurfaceManager$NativeCallback(J)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->access$200(J)V

    return-void
.end method


# virtual methods
.method public cancelPosts()V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback;->surfaceMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback;->surfaceListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFrameAvailable()V
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback;->nativeFrameCallbackPtr:J

    invoke-static {v0, v1}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->access$200(J)V

    return-void
.end method

.method public onSurfaceAvailable()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback;->surfaceMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback;->surfaceListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
