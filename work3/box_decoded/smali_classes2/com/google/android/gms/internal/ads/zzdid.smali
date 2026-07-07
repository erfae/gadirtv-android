.class public final Lcom/google/android/gms/internal/ads/zzdid;
.super Lcom/google/android/gms/internal/ads/zzxf;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzz;
.implements Lcom/google/android/gms/internal/ads/zzbto;
.implements Lcom/google/android/gms/internal/ads/zzsc;


# instance fields
.field private final zzbos:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzbum:Ljava/lang/String;

.field private final zzfsx:Landroid/view/ViewGroup;

.field private final zzgss:Lcom/google/android/gms/internal/ads/zzbgm;

.field private final zzgvn:Landroid/content/Context;

.field private zzhdd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzhde:Lcom/google/android/gms/internal/ads/zzdib;

.field private final zzhdf:Lcom/google/android/gms/internal/ads/zzdir;

.field private zzhdg:J

.field private zzhdh:Lcom/google/android/gms/internal/ads/zzbkv;

.field protected zzhdi:Lcom/google/android/gms/internal/ads/zzbll;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgm;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdib;Lcom/google/android/gms/internal/ads/zzdir;Lcom/google/android/gms/internal/ads/zzazh;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxf;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdg:J

    .line 4
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzfsx:Landroid/view/ViewGroup;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzgss:Lcom/google/android/gms/internal/ads/zzbgm;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzgvn:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzbum:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhde:Lcom/google/android/gms/internal/ads/zzdib;

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdf:Lcom/google/android/gms/internal/ads/zzdir;

    .line 10
    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/zzdir;->zza(Lcom/google/android/gms/internal/ads/zzbto;)V

    .line 11
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdid;)Landroid/view/ViewGroup;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzfsx:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzbll;)Lcom/google/android/gms/ads/internal/overlay/zzr;
    .locals 4

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbll;->zzaby()Z

    move-result p1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcub:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 33
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>()V

    const/16 v2, 0x32

    .line 34
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->size:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 35
    :goto_0
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingLeft:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    move p1, v0

    .line 36
    :goto_1
    iput p1, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingRight:I

    .line 37
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingTop:I

    .line 38
    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingBottom:I

    .line 39
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzgvn:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/ads/internal/overlay/zzz;)V

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdid;Lcom/google/android/gms/internal/ads/zzbll;)Lcom/google/android/gms/ads/internal/overlay/zzr;
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdid;->zza(Lcom/google/android/gms/internal/ads/zzbll;)Lcom/google/android/gms/ads/internal/overlay/zzr;

    move-result-object p0

    return-object p0
.end method

.method private final zzats()Lcom/google/android/gms/internal/ads/zzvn;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzgvn:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdi:Lcom/google/android/gms/internal/ads/zzbll;

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbll;->zzaiy()Lcom/google/android/gms/internal/ads/zzdmx;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdns;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v0

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzbll;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 40
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbll;->zzaby()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    .line 44
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdid;)Lcom/google/android/gms/internal/ads/zzazh;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdid;Lcom/google/android/gms/internal/ads/zzbll;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdid;->zzc(Lcom/google/android/gms/internal/ads/zzbll;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdid;)Lcom/google/android/gms/internal/ads/zzvn;
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdid;->zzats()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object p0

    return-object p0
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzbll;)V
    .locals 0

    .line 46
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbll;->zza(Lcom/google/android/gms/internal/ads/zzsc;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbll;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 138
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdid;->zzb(Lcom/google/android/gms/internal/ads/zzbll;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdid;)Lcom/google/android/gms/internal/ads/zzdir;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdf:Lcom/google/android/gms/internal/ads/zzdir;

    return-object p0
.end method

.method private final declared-synchronized zzeb(I)V
    .locals 5

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdi:Lcom/google/android/gms/internal/ads/zzbll;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbll;->zzajb()Lcom/google/android/gms/internal/ads/zzsm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdf:Lcom/google/android/gms/internal/ads/zzdir;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdi:Lcom/google/android/gms/internal/ads/zzbll;

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbll;->zzajb()Lcom/google/android/gms/internal/ads/zzsm;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdir;->zzb(Lcom/google/android/gms/internal/ads/zzsm;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdf:Lcom/google/android/gms/internal/ads/zzdir;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdir;->onAdClosed()V

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzfsx:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdh:Lcom/google/android/gms/internal/ads/zzbkv;

    if-eqz v0, :cond_1

    .line 71
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzrg;->zzb(Lcom/google/android/gms/internal/ads/zzrl;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdi:Lcom/google/android/gms/internal/ads/zzbll;

    if-eqz v0, :cond_3

    .line 73
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdg:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdg:J

    sub-long v2, v0, v2

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdi:Lcom/google/android/gms/internal/ads/zzbll;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzbll;->zzb(JI)V

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdid;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_4
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

    .line 82
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdi:Lcom/google/android/gms/internal/ads/zzbll;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboc;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
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

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getAdUnitId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzbum:Ljava/lang/String;
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

    .line 100
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized getVideoController()Lcom/google/android/gms/internal/ads/zzys;
    .locals 1

    monitor-enter p0

    .line 113
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhde:Lcom/google/android/gms/internal/ads/zzdib;

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

.method public final declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
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

    .line 88
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
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

    .line 112
    monitor-exit p0

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final showInterstitial()V
    .locals 0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaak;)V
    .locals 0

    monitor-enter p0

    .line 114
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzacb;)V
    .locals 0

    monitor-enter p0

    .line 115
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

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdf:Lcom/google/android/gms/internal/ads/zzdir;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdir;->zzb(Lcom/google/android/gms/internal/ads/zzsl;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvn;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "setAdSize must be called on the main UI thread."

    .line 98
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvw;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhde:Lcom/google/android/gms/internal/ads/zzdib;

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

    .line 111
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

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzgvn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzm;->zzbb(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvk;->zzchn:Lcom/google/android/gms/internal/ads/zzvc;

    if-nez v0, :cond_0

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdf:Lcom/google/android/gms/internal/ads/zzdir;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhjo:Lcom/google/android/gms/internal/ads/zzdok;

    const/4 v2, 0x0

    .line 21
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzdoi;->zza(Lcom/google/android/gms/internal/ads/zzdok;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzve;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdir;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return v1

    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdid;->isLoading()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 25
    monitor-exit p0

    return v1

    .line 26
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdie;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdie;-><init>(Lcom/google/android/gms/internal/ads/zzdid;)V

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhde:Lcom/google/android/gms/internal/ads/zzdib;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzbum:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdih;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdih;-><init>(Lcom/google/android/gms/internal/ads/zzdid;)V

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

.method public final zzakz()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdi:Lcom/google/android/gms/internal/ads/zzbll;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdg:J

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdi:Lcom/google/android/gms/internal/ads/zzbll;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbll;->zzaip()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 58
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbkv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzgss:Lcom/google/android/gms/internal/ads/zzbgm;

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbgm;->zzael()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbkv;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdh:Lcom/google/android/gms/internal/ads/zzbkv;

    .line 60
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdif;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdif;-><init>(Lcom/google/android/gms/internal/ads/zzdid;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbkv;->zza(ILjava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzatt()V
    .locals 2

    .line 130
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayr;->zzze()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget v0, Lcom/google/android/gms/internal/ads/zzblb;->zzfsj:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdid;->zzeb(I)V

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzgss:Lcom/google/android/gms/internal/ads/zzbgm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaek()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdic;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdic;-><init>(Lcom/google/android/gms/internal/ads/zzdid;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzatu()V
    .locals 1

    .line 134
    sget v0, Lcom/google/android/gms/internal/ads/zzblb;->zzfsj:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdid;->zzeb(I)V

    return-void
.end method

.method public final zzbl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzkd()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzfsx:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzke()V
    .locals 0

    monitor-enter p0

    .line 110
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzkf()Lcom/google/android/gms/internal/ads/zzvn;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "getAdSize must be called on the main UI thread."

    .line 92
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzhdi:Lcom/google/android/gms/internal/ads/zzbll;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzgvn:Landroid/content/Context;

    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbll;->zzaiy()Lcom/google/android/gms/internal/ads/zzdmx;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdns;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 97
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzkg()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 101
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzkh()Lcom/google/android/gms/internal/ads/zzyn;
    .locals 1

    monitor-enter p0

    .line 102
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

    .line 50
    sget v0, Lcom/google/android/gms/internal/ads/zzblb;->zzfsh:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdid;->zzeb(I)V

    return-void
.end method

.method public final zzvd()V
    .locals 1

    .line 48
    sget v0, Lcom/google/android/gms/internal/ads/zzblb;->zzfsi:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdid;->zzeb(I)V

    return-void
.end method
