.class public final Lcom/google/android/play/core/common/zza;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/common/zza;->zza:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/play/core/common/zza;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private final declared-synchronized zzb()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/common/zza;->zza:Ljava/util/Map;

    const-string v1, "assetOnlyUpdates"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized zza(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object p1, p0, Lcom/google/android/play/core/common/zza;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_c

    .line 2
    invoke-direct {p0}, Lcom/google/android/play/core/common/zza;->zzb()V

    :cond_c
    iget-object p1, p0, Lcom/google/android/play/core/common/zza;->zza:Ljava/util/Map;

    const-string v0, "assetOnlyUpdates"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v0, p1, Ljava/lang/Boolean;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_23

    if-nez v0, :cond_1b

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 5
    :cond_1b
    :try_start_1b
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_23

    monitor-exit p0

    return p1

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method
