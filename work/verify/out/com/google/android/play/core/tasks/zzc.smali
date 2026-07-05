.class final Lcom/google/android/play/core/tasks/zzc;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/tasks/Task;

.field public final synthetic zzb:Lcom/google/android/play/core/tasks/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/tasks/zzd;Lcom/google/android/play/core/tasks/Task;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zzc;->zzb:Lcom/google/android/play/core/tasks/zzd;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/zzc;->zza:Lcom/google/android/play/core/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzc;->zzb:Lcom/google/android/play/core/tasks/zzd;

    invoke-static {v0}, Lcom/google/android/play/core/tasks/zzd;->zzb(Lcom/google/android/play/core/tasks/zzd;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/play/core/tasks/zzc;->zzb:Lcom/google/android/play/core/tasks/zzd;

    invoke-static {v1}, Lcom/google/android/play/core/tasks/zzd;->zza(Lcom/google/android/play/core/tasks/zzd;)Lcom/google/android/play/core/tasks/OnFailureListener;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-static {v1}, Lcom/google/android/play/core/tasks/zzd;->zza(Lcom/google/android/play/core/tasks/zzd;)Lcom/google/android/play/core/tasks/OnFailureListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/tasks/zzc;->zza:Lcom/google/android/play/core/tasks/Task;

    invoke-virtual {v2}, Lcom/google/android/play/core/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/play/core/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 2
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method
