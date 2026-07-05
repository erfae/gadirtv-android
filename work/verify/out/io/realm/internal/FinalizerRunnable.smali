.class Lio/realm/internal/FinalizerRunnable;
.super Ljava/lang/Object;
.source "FinalizerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lio/realm/internal/NativeObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lio/realm/internal/NativeObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/internal/FinalizerRunnable;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/realm/internal/FinalizerRunnable;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lio/realm/internal/NativeObjectReference;

    .line 2
    invoke-virtual {v0}, Lio/realm/internal/NativeObjectReference;->cleanup()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_0

    .line 3
    :catch_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The FinalizerRunnable thread has been interrupted. Native resources cannot be freed anymore"

    .line 4
    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->fatal(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
