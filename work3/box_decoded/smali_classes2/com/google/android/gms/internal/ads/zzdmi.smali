.class public final Lcom/google/android/gms/internal/ads/zzdmi;
.super Lcom/google/android/gms/internal/ads/zzavg;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzbum:Ljava/lang/String;

.field private final zzfxk:Lcom/google/android/gms/internal/ads/zzdni;

.field private final zzgvn:Landroid/content/Context;

.field private final zzhgg:Lcom/google/android/gms/internal/ads/zzdma;

.field private final zzhgh:Lcom/google/android/gms/internal/ads/zzdlf;

.field private zzhgi:Lcom/google/android/gms/internal/ads/zzchc;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdma;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdlf;Lcom/google/android/gms/internal/ads/zzdni;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavg;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzbum:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgg:Lcom/google/android/gms/internal/ads/zzdma;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgh:Lcom/google/android/gms/internal/ads/zzdlf;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzfxk:Lcom/google/android/gms/internal/ads/zzdni;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzgvn:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdmi;)Lcom/google/android/gms/internal/ads/zzchc;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgi:Lcom/google/android/gms/internal/ads/zzchc;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdmi;Lcom/google/android/gms/internal/ads/zzchc;)Lcom/google/android/gms/internal/ads/zzchc;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgi:Lcom/google/android/gms/internal/ads/zzchc;

    return-object p1
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvk;Lcom/google/android/gms/internal/ads/zzavp;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgh:Lcom/google/android/gms/internal/ads/zzdlf;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdlf;->zzb(Lcom/google/android/gms/internal/ads/zzavp;)V

    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzgvn:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzm;->zzbb(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzvk;->zzchn:Lcom/google/android/gms/internal/ads/zzvc;

    if-nez p2, :cond_0

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgh:Lcom/google/android/gms/internal/ads/zzdlf;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdok;->zzhjo:Lcom/google/android/gms/internal/ads/zzdok;

    .line 65
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzdoi;->zza(Lcom/google/android/gms/internal/ads/zzdok;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzve;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdlf;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgi:Lcom/google/android/gms/internal/ads/zzchc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 69
    monitor-exit p0

    return-void

    .line 70
    :cond_1
    :try_start_2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdmb;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzdmb;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgg:Lcom/google/android/gms/internal/ads/zzdma;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzdma;->zzec(I)V

    .line 72
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgg:Lcom/google/android/gms/internal/ads/zzdma;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzbum:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdmk;-><init>(Lcom/google/android/gms/internal/ads/zzdmi;)V

    invoke-virtual {p3, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzdma;->zza(Lcom/google/android/gms/internal/ads/zzvk;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcyo;Lcom/google/android/gms/internal/ads/zzcyn;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgi:Lcom/google/android/gms/internal/ads/zzchc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchc;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgi:Lcom/google/android/gms/internal/ads/zzchc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboc;->zzajz()Lcom/google/android/gms/internal/ads/zzbrp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgi:Lcom/google/android/gms/internal/ads/zzchc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboc;->zzajz()Lcom/google/android/gms/internal/ads/zzbrp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrp;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 26
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isLoaded()Z
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgi:Lcom/google/android/gms/internal/ads/zzchc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchc;->isUsed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgi:Lcom/google/android/gms/internal/ads/zzchc;

    if-nez v0, :cond_0

    const-string p1, "Rewarded can not be shown before loaded"

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgh:Lcom/google/android/gms/internal/ads/zzdlf;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdok;->zzhjt:Lcom/google/android/gms/internal/ads/zzdok;

    const/4 v0, 0x0

    .line 18
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzdoi;->zza(Lcom/google/android/gms/internal/ads/zzdok;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzve;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdlf;->zzj(Lcom/google/android/gms/internal/ads/zzve;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 21
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgi:Lcom/google/android/gms/internal/ads/zzchc;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzchc;->zzb(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzavi;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgh:Lcom/google/android/gms/internal/ads/zzdlf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdlf;->zzb(Lcom/google/android/gms/internal/ads/zzavi;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzavq;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgh:Lcom/google/android/gms/internal/ads/zzdlf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdlf;->zzb(Lcom/google/android/gms/internal/ads/zzavq;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzavy;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzfxk:Lcom/google/android/gms/internal/ads/zzdni;

    .line 46
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzavy;->zzdxy:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdni;->zzdxy:Ljava/lang/String;

    .line 47
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcon:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzavy;->zzdxz:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzdni;->zzdxz:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvk;Lcom/google/android/gms/internal/ads/zzavp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 8
    :try_start_0
    sget v0, Lcom/google/android/gms/internal/ads/zzdnf;->zzhid:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdmi;->zza(Lcom/google/android/gms/internal/ads/zzvk;Lcom/google/android/gms/internal/ads/zzavp;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyh;)V
    .locals 2

    if-nez p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgh:Lcom/google/android/gms/internal/ads/zzdlf;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdlf;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgh:Lcom/google/android/gms/internal/ads/zzdlf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdml;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdml;-><init>(Lcom/google/android/gms/internal/ads/zzdmi;Lcom/google/android/gms/internal/ads/zzyh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlf;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 1

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    .line 57
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgh:Lcom/google/android/gms/internal/ads/zzdlf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdlf;->zzd(Lcom/google/android/gms/internal/ads/zzym;)V

    return-void
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzvk;Lcom/google/android/gms/internal/ads/zzavp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 10
    :try_start_0
    sget v0, Lcom/google/android/gms/internal/ads/zzdnf;->zzhie:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdmi;->zza(Lcom/google/android/gms/internal/ads/zzvk;Lcom/google/android/gms/internal/ads/zzavp;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdmi;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzkh()Lcom/google/android/gms/internal/ads/zzyn;
    .locals 2

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcxv:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgi:Lcom/google/android/gms/internal/ads/zzchc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboc;->zzajz()Lcom/google/android/gms/internal/ads/zzbrp;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final zzre()Lcom/google/android/gms/internal/ads/zzavc;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzhgi:Lcom/google/android/gms/internal/ads/zzchc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchc;->zzre()Lcom/google/android/gms/internal/ads/zzavc;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
