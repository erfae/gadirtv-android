.class Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->onIdleChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

.field final synthetic val$newIsIdle:Z


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$2;->this$0:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    iput-boolean p2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$2;->val$newIsIdle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "GvrLayoutImpl.onIdleChanged"

    .line 2
    invoke-static {v0}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$2;->this$0:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    invoke-static {v2}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->access$800(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 4
    invoke-static {}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->access$900()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "GvrLayoutImpl"

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    .line 5
    :try_start_1
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$2;->val$newIsIdle:Z

    const/16 v1, 0x50

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Quiet period after onResume() -- ignoring idle status change with isIdle = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    return-void

    .line 8
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$2;->this$0:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->access$1000(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$2;->val$newIsIdle:Z

    if-eq v0, v1, :cond_1

    const/16 v0, 0x24

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Idle status change to isIdle = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$2;->this$0:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$2;->val$newIsIdle:Z

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->access$1002(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;Z)Z

    .line 11
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$2;->this$0:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->access$700(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    .line 14
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v0
.end method
