.class public final Lcom/google/android/gms/internal/ads/zzsx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private context:Landroid/content/Context;

.field private final lock:Ljava/lang/Object;

.field private final zzbuq:Ljava/lang/Runnable;

.field private zzbur:Lcom/google/android/gms/internal/ads/zztc;

.field private zzbus:Lcom/google/android/gms/internal/ads/zztg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzsw;-><init>(Lcom/google/android/gms/internal/ads/zzsx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbuq:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->lock:Ljava/lang/Object;

    return-void
.end method

.method private final connect()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbur:Lcom/google/android/gms/internal/ads/zztc;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzsy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzsy;-><init>(Lcom/google/android/gms/internal/ads/zzsx;)V

    .line 56
    new-instance v2, Lcom/google/android/gms/internal/ads/zztb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zztb;-><init>(Lcom/google/android/gms/internal/ads/zzsx;)V

    .line 57
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzsx;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)Lcom/google/android/gms/internal/ads/zztc;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbur:Lcom/google/android/gms/internal/ads/zztc;

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->checkAvailabilityAndConnect()V

    .line 59
    monitor-exit v0

    return-void

    .line 54
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final disconnect()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbur:Lcom/google/android/gms/internal/ads/zztc;

    if-nez v1, :cond_0

    .line 65
    monitor-exit v0

    return-void

    .line 66
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbur:Lcom/google/android/gms/internal/ads/zztc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbur:Lcom/google/android/gms/internal/ads/zztc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->disconnect()V

    :cond_2
    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbur:Lcom/google/android/gms/internal/ads/zztc;

    .line 69
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbus:Lcom/google/android/gms/internal/ads/zztg;

    .line 70
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 71
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)Lcom/google/android/gms/internal/ads/zztc;
    .locals 3

    monitor-enter p0

    .line 60
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zztc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->context:Landroid/content/Context;

    .line 61
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzle()Lcom/google/android/gms/ads/internal/util/zzbo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zzbo;->zzyw()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzsx;Lcom/google/android/gms/internal/ads/zztc;)Lcom/google/android/gms/internal/ads/zztc;
    .locals 0

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbur:Lcom/google/android/gms/internal/ads/zztc;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzsx;Lcom/google/android/gms/internal/ads/zztg;)Lcom/google/android/gms/internal/ads/zztg;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbus:Lcom/google/android/gms/internal/ads/zztg;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzsx;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsx;->disconnect()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzsx;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsx;->connect()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzsx;)Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzsx;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzsx;)Lcom/google/android/gms/internal/ads/zztc;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbur:Lcom/google/android/gms/internal/ads/zztc;

    return-object p0
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->context:Landroid/content/Context;

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabf;->zzctb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsx;->connect()V

    goto :goto_0

    .line 14
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabf;->zzcta:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/zzsz;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzsz;-><init>(Lcom/google/android/gms/internal/ads/zzsx;)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzrg;->zza(Lcom/google/android/gms/internal/ads/zzrl;)V

    .line 19
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zztf;)Lcom/google/android/gms/internal/ads/zzta;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbus:Lcom/google/android/gms/internal/ads/zztg;

    if-nez v1, :cond_0

    .line 35
    new-instance p1, Lcom/google/android/gms/internal/ads/zzta;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzta;-><init>()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 36
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbur:Lcom/google/android/gms/internal/ads/zztc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->zznd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbus:Lcom/google/android/gms/internal/ads/zztg;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zztg;->zzc(Lcom/google/android/gms/internal/ads/zztf;)Lcom/google/android/gms/internal/ads/zzta;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    .line 38
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbus:Lcom/google/android/gms/internal/ads/zztg;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zztg;->zza(Lcom/google/android/gms/internal/ads/zztf;)Lcom/google/android/gms/internal/ads/zzta;

    move-result-object p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Unable to call into cache service."

    .line 40
    invoke-static {v1, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    new-instance p1, Lcom/google/android/gms/internal/ads/zzta;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzta;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zztf;)J
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbus:Lcom/google/android/gms/internal/ads/zztg;

    const-wide/16 v2, -0x2

    if-nez v1, :cond_0

    .line 45
    monitor-exit v0

    return-wide v2

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbur:Lcom/google/android/gms/internal/ads/zztc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->zznd()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 47
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbus:Lcom/google/android/gms/internal/ads/zztg;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zztg;->zzb(Lcom/google/android/gms/internal/ads/zztf;)J

    move-result-wide v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-wide v1

    :catch_0
    move-exception p1

    const-string v1, "Unable to call into cache service."

    .line 49
    invoke-static {v1, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_1
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzmu()V
    .locals 5

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzctc:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsx;->connect()V

    .line 25
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbuq:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzduw;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbuq:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzabf;->zzctd:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 30
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzduw;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method
