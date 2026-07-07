.class public final Lcom/google/android/gms/internal/ads/zzbqu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbru;
.implements Lcom/google/android/gms/internal/ads/zzbsi;
.implements Lcom/google/android/gms/internal/ads/zzbvz;
.implements Lcom/google/android/gms/internal/ads/zzbxn;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzfwm:Lcom/google/android/gms/internal/ads/zzbsl;

.field private final zzfwn:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzfwo:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzfwp:Lcom/google/android/gms/internal/ads/zzdzh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private zzfwq:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsl;Lcom/google/android/gms/internal/ads/zzdmu;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdzh;->zzazp()Lcom/google/android/gms/internal/ads/zzdzh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwp:Lcom/google/android/gms/internal/ads/zzdzh;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwm:Lcom/google/android/gms/internal/ads/zzbsl;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwn:Lcom/google/android/gms/internal/ads/zzdmu;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwo:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbqu;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbqu;)Lcom/google/android/gms/internal/ads/zzbsl;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwm:Lcom/google/android/gms/internal/ads/zzbsl;

    return-object p0
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 0

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public final onAdOpened()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwn:Lcom/google/android/gms/internal/ads/zzdmu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhj:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwn:Lcom/google/android/gms/internal/ads/zzdmu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhj:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwm:Lcom/google/android/gms/internal/ads/zzbsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsl;->onAdImpression()V

    :cond_1
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 0

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 0

    return-void
.end method

.method public final zzakl()V
    .locals 5

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcqh:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwn:Lcom/google/android/gms/internal/ads/zzdmu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhj:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwn:Lcom/google/android/gms/internal/ads/zzdmu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgv:I

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwm:Lcom/google/android/gms/internal/ads/zzbsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsl;->onAdImpression()V

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwp:Lcom/google/android/gms/internal/ads/zzdzh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbqw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbqw;-><init>(Lcom/google/android/gms/internal/ads/zzbqu;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqu;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyr;->zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyo;Ljava/util/concurrent/Executor;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwo:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbqt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbqt;-><init>(Lcom/google/android/gms/internal/ads/zzbqu;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwn:Lcom/google/android/gms/internal/ads/zzdmu;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgv:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwq:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method public final declared-synchronized zzakm()V
    .locals 2

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwp:Lcom/google/android/gms/internal/ads/zzdzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxo;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 27
    monitor-exit p0

    return-void

    .line 28
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwq:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwp:Lcom/google/android/gms/internal/ads/zzdzh;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzh;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzakn()V
    .locals 0

    return-void
.end method

.method public final zzako()V
    .locals 0

    return-void
.end method

.method final synthetic zzakp()V
    .locals 2

    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwp:Lcom/google/android/gms/internal/ads/zzdzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxo;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwp:Lcom/google/android/gms/internal/ads/zzdzh;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzh;->set(Ljava/lang/Object;)Z

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzauf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzj(Lcom/google/android/gms/internal/ads/zzve;)V
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwp:Lcom/google/android/gms/internal/ads/zzdzh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxo;->isDone()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 21
    monitor-exit p0

    return-void

    .line 22
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwq:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 23
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwp:Lcom/google/android/gms/internal/ads/zzdzh;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdzh;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
