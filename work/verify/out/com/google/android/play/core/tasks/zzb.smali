.class final Lcom/google/android/play/core/tasks/zzb;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/tasks/zzg;


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Lcom/google/android/play/core/tasks/OnCompleteListener;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnCompleteListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/zzb;->zzb:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zzb;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/zzb;->zzc:Lcom/google/android/play/core/tasks/OnCompleteListener;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/play/core/tasks/zzb;)Lcom/google/android/play/core/tasks/OnCompleteListener;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/tasks/zzb;->zzc:Lcom/google/android/play/core/tasks/OnCompleteListener;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/play/core/tasks/zzb;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/tasks/zzb;->zzb:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/play/core/tasks/Task;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzb;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/play/core/tasks/zzb;->zzc:Lcom/google/android/play/core/tasks/OnCompleteListener;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 2
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzb;->zza:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/tasks/zza;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/tasks/zza;-><init>(Lcom/google/android/play/core/tasks/zzb;Lcom/google/android/play/core/tasks/Task;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_15
    move-exception p1

    .line 4
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method
