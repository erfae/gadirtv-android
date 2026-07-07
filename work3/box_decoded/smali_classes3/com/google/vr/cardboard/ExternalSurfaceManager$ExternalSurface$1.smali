.class Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->maybeAttachToCurrentGLContext(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-static {p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->access$300(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 3
    iget-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-static {p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->access$400(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-static {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->access$500(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-static {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->access$600(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;->this$0:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-static {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->access$600(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->onFrameAvailable()V

    .line 6
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
