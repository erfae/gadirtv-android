.class public final Lcom/google/android/gms/internal/ads/zzdjf;
.super Lcom/google/android/gms/internal/ads/zzxf;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lcom/google/android/gms/internal/ads/zzsc;


# instance fields
.field private final zzbum:Ljava/lang/String;

.field private final zzgss:Lcom/google/android/gms/internal/ads/zzbgm;

.field private final zzgvn:Landroid/content/Context;

.field private zzhdd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzhdf:Lcom/google/android/gms/internal/ads/zzdir;

.field private zzhdh:Lcom/google/android/gms/internal/ads/zzbkv;

.field private final zzhec:Lcom/google/android/gms/internal/ads/zzdjd;

.field private zzhed:J

.field protected zzhee:Lcom/google/android/gms/internal/ads/zzblv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgm;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdjd;Lcom/google/android/gms/internal/ads/zzdir;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxf;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhdd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhed:J

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzgss:Lcom/google/android/gms/internal/ads/zzbgm;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzgvn:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzbum:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhec:Lcom/google/android/gms/internal/ads/zzdjd;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhdf:Lcom/google/android/gms/internal/ads/zzdir;

    .line 9
    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/zzdir;->zza(Lcom/google/android/gms/ads/internal/overlay/zzp;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdjf;)Lcom/google/android/gms/internal/ads/zzdir;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhdf:Lcom/google/android/gms/internal/ads/zzdir;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzblv;)V
    .locals 0

    .line 25
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzblv;->zza(Lcom/google/android/gms/internal/ads/zzsc;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdjf;Lcom/google/android/gms/internal/ads/zzblv;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdjf;->zza(Lcom/google/android/gms/internal/ads/zzblv;)V

    return-void
.end method

.method private final declared-synchronized zzeb(I)V
    .locals 5

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhdd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhdf:Lcom/google/android/gms/internal/ads/zzdir;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdir;->onAdClosed()V

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhdh:Lcom/google/android/gms/internal/ads/zzbkv;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzrg;->zzb(Lcom/google/android/gms/internal/ads/zzrl;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhee:Lcom/google/android/gms/internal/ads/zzblv;

    if-eqz v0, :cond_2

    .line 59
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhed:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhed:J

    sub-long v2, v0, v2

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhee:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzblv;->zzb(JI)V

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdjf;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhee:Lcom/google/android/gms/internal/ads/zzblv;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboc;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getAdUnitId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzbum:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 82
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized getVideoController()Lcom/google/android/gms/internal/ads/zzys;
    .locals 1

    monitor-enter p0

    .line 92
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhec:Lcom/google/android/gms/internal/ads/zzdjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdil;->isLoading()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onUserLeaveHint()V
    .locals 5

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhee:Lcom/google/android/gms/internal/ads/zzblv;

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhed:J

    sub-long/2addr v1, v3

    sget v3, Lcom/google/android/gms/internal/ads/zzblb;->zzfsf:I

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzblv;->zzb(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resume()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 71
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized setManualImpressionsEnabled(Z)V
    .locals 0

    monitor-enter p0

    .line 91
    monitor-exit p0

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized showInterstitial()V
    .locals 0

    monitor-enter p0

    .line 81
    monitor-exit p0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdji;->zzhef:[I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzl;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget p1, Lcom/google/android/gms/internal/ads/zzblb;->zzfsk:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdjf;->zzeb(I)V

    :goto_0
    return-void

    .line 32
    :cond_1
    sget p1, Lcom/google/android/gms/internal/ads/zzblb;->zzfsi:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdjf;->zzeb(I)V

    return-void

    .line 30
    :cond_2
    sget p1, Lcom/google/android/gms/internal/ads/zzblb;->zzfsg:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdjf;->zzeb(I)V

    return-void

    .line 28
    :cond_3
    sget p1, Lcom/google/android/gms/internal/ads/zzblb;->zzfsh:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdjf;->zzeb(I)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaak;)V
    .locals 0

    monitor-enter p0

    .line 93
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzacb;)V
    .locals 0

    monitor-enter p0

    .line 94
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzart;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzarz;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaup;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsl;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhdf:Lcom/google/android/gms/internal/ads/zzdir;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdir;->zzb(Lcom/google/android/gms/internal/ads/zzsl;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvn;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "setAdSize must be called on the main UI thread."

    .line 75
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvw;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhec:Lcom/google/android/gms/internal/ads/zzdjd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzvw;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzws;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwt;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxj;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxo;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzxu;)V
    .locals 0

    monitor-enter p0

    .line 90
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyy;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvk;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzgvn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzm;->zzbb(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvk;->zzchn:Lcom/google/android/gms/internal/ads/zzvc;

    if-nez v0, :cond_0

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhdf:Lcom/google/android/gms/internal/ads/zzdir;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhjo:Lcom/google/android/gms/internal/ads/zzdok;

    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzdoi;->zza(Lcom/google/android/gms/internal/ads/zzdok;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzve;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdir;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return v1

    .line 20
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdjf;->isLoading()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 21
    monitor-exit p0

    return v1

    .line 22
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhdd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdjg;-><init>(Lcom/google/android/gms/internal/ads/zzdjf;)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhec:Lcom/google/android/gms/internal/ads/zzdjd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzbum:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdjj;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdjj;-><init>(Lcom/google/android/gms/internal/ads/zzdjf;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzvk;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcyo;Lcom/google/android/gms/internal/ads/zzcyn;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic zzatw()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzgss:Lcom/google/android/gms/internal/ads/zzbgm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaek()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdje;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdje;-><init>(Lcom/google/android/gms/internal/ads/zzdjf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzatx()V
    .locals 1

    .line 113
    sget v0, Lcom/google/android/gms/internal/ads/zzblb;->zzfsj:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdjf;->zzeb(I)V

    return-void
.end method

.method public final zzbl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzkd()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzke()V
    .locals 0

    monitor-enter p0

    .line 89
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzkf()Lcom/google/android/gms/internal/ads/zzvn;
    .locals 1

    monitor-enter p0

    .line 80
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzkg()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 83
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzkh()Lcom/google/android/gms/internal/ads/zzyn;
    .locals 1

    monitor-enter p0

    .line 79
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzki()Lcom/google/android/gms/internal/ads/zzxo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkj()Lcom/google/android/gms/internal/ads/zzwt;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzms()V
    .locals 1

    .line 41
    sget v0, Lcom/google/android/gms/internal/ads/zzblb;->zzfsh:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdjf;->zzeb(I)V

    return-void
.end method

.method public final declared-synchronized zzux()V
    .locals 4

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhee:Lcom/google/android/gms/internal/ads/zzblv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 44
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhed:J

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhee:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzblv;->zzaip()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_1

    .line 48
    monitor-exit p0

    return-void

    .line 49
    :cond_1
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbkv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzgss:Lcom/google/android/gms/internal/ads/zzbgm;

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbgm;->zzael()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbkv;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjf;->zzhdh:Lcom/google/android/gms/internal/ads/zzbkv;

    .line 51
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdjh;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdjh;-><init>(Lcom/google/android/gms/internal/ads/zzdjf;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbkv;->zza(ILjava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
