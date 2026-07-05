.class public abstract Lcom/google/android/play/core/listener/zzc;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field public final zza:Lcom/google/android/play/core/internal/zzag;

.field public final zzb:Ljava/util/HashSet;

.field private final zzc:Landroid/content/IntentFilter;

.field private final zzd:Landroid/content/Context;

.field private zze:Lcom/google/android/play/core/listener/zzb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzag;Landroid/content/IntentFilter;Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/listener/zzc;->zzf:Z

    iput-object p1, p0, Lcom/google/android/play/core/listener/zzc;->zza:Lcom/google/android/play/core/internal/zzag;

    iput-object p2, p0, Lcom/google/android/play/core/listener/zzc;->zzc:Landroid/content/IntentFilter;

    .line 2
    invoke-static {p3}, Lcom/google/android/play/core/internal/zzce;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/listener/zzc;->zzd:Landroid/content/Context;

    return-void
.end method

.method private final zzb()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/play/core/listener/zzc;->zzf:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_c
    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/google/android/play/core/listener/zzb;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/play/core/listener/zzb;-><init>(Lcom/google/android/play/core/listener/zzc;)V

    iput-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    iget-object v1, p0, Lcom/google/android/play/core/listener/zzc;->zzd:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/play/core/listener/zzc;->zzc:Landroid/content/IntentFilter;

    .line 3
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1e
    iget-boolean v0, p0, Lcom/google/android/play/core/listener/zzc;->zzf:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/google/android/play/core/listener/zzc;->zzd:Landroid/content/Context;

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;

    :cond_36
    return-void
.end method


# virtual methods
.method public abstract zza(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public final declared-synchronized zze()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zza:Lcom/google/android/play/core/internal/zzag;

    const-string v1, "clearListeners"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/listener/zzc;->zzb()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzf(Lcom/google/android/play/core/listener/StateUpdatedListener;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zza:Lcom/google/android/play/core/internal/zzag;

    const-string v1, "registerListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "Registered Play Core listener should not be null."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/play/core/internal/zzci;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0}, Lcom/google/android/play/core/listener/zzc;->zzb()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzg(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/play/core/listener/zzc;->zzf:Z

    invoke-direct {p0}, Lcom/google/android/play/core/listener/zzc;->zzb()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzh(Lcom/google/android/play/core/listener/StateUpdatedListener;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zza:Lcom/google/android/play/core/internal/zzag;

    const-string v1, "unregisterListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "Unregistered Play Core listener should not be null."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/play/core/internal/zzci;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0}, Lcom/google/android/play/core/listener/zzc;->zzb()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzi(Ljava/lang/Object;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/play/core/listener/zzc;->zzb:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/listener/StateUpdatedListener;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/play/core/listener/StateUpdatedListener;->onStateUpdate(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    goto :goto_c

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzj()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/listener/zzc;->zze:Lcom/google/android/play/core/listener/zzb;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
