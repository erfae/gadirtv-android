.class public abstract Lcom/google/android/gms/internal/ads/zzdil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcyl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AppOpenAd:",
        "Lcom/google/android/gms/internal/ads/zzboc;",
        "AppOpenRequestComponent::",
        "Lcom/google/android/gms/internal/ads/zzblm<",
        "TAppOpenAd;>;AppOpenRequestComponentBuilder::",
        "Lcom/google/android/gms/internal/ads/zzbrd<",
        "TAppOpenRequestComponent;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcyl<",
        "TAppOpenAd;>;"
    }
.end annotation


# instance fields
.field private final zzfqx:Ljava/util/concurrent/Executor;

.field private final zzfsx:Landroid/view/ViewGroup;

.field private final zzgvo:Lcom/google/android/gms/internal/ads/zzdnp;

.field private zzgvx:Lcom/google/android/gms/internal/ads/zzdyz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "TAppOpenAd;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final zzgxj:Lcom/google/android/gms/internal/ads/zzbgm;

.field private final zzhdm:Landroid/content/Context;

.field private final zzhdn:Lcom/google/android/gms/internal/ads/zzdir;

.field private final zzhdo:Lcom/google/android/gms/internal/ads/zzdkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkl<",
            "TAppOpenRequestComponent;TAppOpenAd;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbgm;Lcom/google/android/gms/internal/ads/zzdkl;Lcom/google/android/gms/internal/ads/zzdir;Lcom/google/android/gms/internal/ads/zzdnp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzbgm;",
            "Lcom/google/android/gms/internal/ads/zzdkl<",
            "TAppOpenRequestComponent;TAppOpenAd;>;",
            "Lcom/google/android/gms/internal/ads/zzdir;",
            "Lcom/google/android/gms/internal/ads/zzdnp;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhdm:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzfqx:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzgxj:Lcom/google/android/gms/internal/ads/zzbgm;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhdo:Lcom/google/android/gms/internal/ads/zzdkl;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhdn:Lcom/google/android/gms/internal/ads/zzdir;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzgvo:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 8
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzfsx:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdil;Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdkk;",
            ")TAppOpenRequestComponentBuilder;"
        }
    .end annotation

    monitor-enter p0

    .line 30
    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdio;

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzblz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzfsx:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzblz;-><init>(Landroid/view/ViewGroup;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbrg$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhdm:Landroid/content/Context;

    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zzcg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbrg$zza;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdio;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    .line 36
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zza(Lcom/google/android/gms/internal/ads/zzdnn;)Lcom/google/android/gms/internal/ads/zzbrg$zza;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zzakx()Lcom/google/android/gms/internal/ads/zzbrg;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwp$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbwp$zza;-><init>()V

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbwp$zza;->zzalt()Lcom/google/android/gms/internal/ads/zzbwp;

    move-result-object v1

    .line 39
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzblz;Lcom/google/android/gms/internal/ads/zzbrg;Lcom/google/android/gms/internal/ads/zzbwp;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 40
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhdn:Lcom/google/android/gms/internal/ads/zzdir;

    .line 41
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdir;->zzb(Lcom/google/android/gms/internal/ads/zzdir;)Lcom/google/android/gms/internal/ads/zzdir;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwp$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbwp$zza;-><init>()V

    .line 43
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzfqx:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbwp$zza;->zza(Lcom/google/android/gms/internal/ads/zzbrz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbwp$zza;

    .line 44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzfqx:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbwp$zza;->zza(Lcom/google/android/gms/internal/ads/zzbto;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbwp$zza;

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzfqx:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbwp$zza;->zza(Lcom/google/android/gms/ads/internal/overlay/zzp;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbwp$zza;

    .line 46
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbwp$zza;->zza(Lcom/google/android/gms/internal/ads/zzdki;)Lcom/google/android/gms/internal/ads/zzbwp$zza;

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/zzblz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzfsx:Landroid/view/ViewGroup;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzblz;-><init>(Landroid/view/ViewGroup;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbrg$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbrg$zza;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhdm:Landroid/content/Context;

    .line 48
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zzcg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbrg$zza;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdio;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    .line 49
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zza(Lcom/google/android/gms/internal/ads/zzdnn;)Lcom/google/android/gms/internal/ads/zzbrg$zza;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zzakx()Lcom/google/android/gms/internal/ads/zzbrg;

    move-result-object p1

    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbwp$zza;->zzalt()Lcom/google/android/gms/internal/ads/zzbwp;

    move-result-object v1

    .line 52
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzblz;Lcom/google/android/gms/internal/ads/zzbrg;Lcom/google/android/gms/internal/ads/zzbwp;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdil;)Lcom/google/android/gms/internal/ads/zzdir;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhdn:Lcom/google/android/gms/internal/ads/zzdir;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdil;Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 0

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzgvx:Lcom/google/android/gms/internal/ads/zzdyz;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdil;)Lcom/google/android/gms/internal/ads/zzdkl;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhdo:Lcom/google/android/gms/internal/ads/zzdkl;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdil;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzfqx:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public final isLoading()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzgvx:Lcom/google/android/gms/internal/ads/zzdyz;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdyz;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzblz;Lcom/google/android/gms/internal/ads/zzbrg;Lcom/google/android/gms/internal/ads/zzbwp;)Lcom/google/android/gms/internal/ads/zzbrd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzblz;",
            "Lcom/google/android/gms/internal/ads/zzbrg;",
            "Lcom/google/android/gms/internal/ads/zzbwp;",
            ")TAppOpenRequestComponentBuilder;"
        }
    .end annotation
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvw;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzgvo:Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzb(Lcom/google/android/gms/internal/ads/zzvw;)Lcom/google/android/gms/internal/ads/zzdnp;

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvk;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcyo;Lcom/google/android/gms/internal/ads/zzcyn;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzvk;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcyo;",
            "Lcom/google/android/gms/internal/ads/zzcyn<",
            "-TAppOpenAd;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string p3, "loadAd must be called on the main UI thread."

    .line 11
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const-string p1, "Ad unit ID should not be null for app open ad."

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzfqx:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdik;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzdik;-><init>(Lcom/google/android/gms/internal/ads/zzdil;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return p3

    .line 16
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzgvx:Lcom/google/android/gms/internal/ads/zzdyz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 17
    monitor-exit p0

    return p3

    .line 18
    :cond_1
    :try_start_2
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhdm:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzvk;->zzchb:Z

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzdob;->zze(Landroid/content/Context;Z)V

    .line 19
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzgvo:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 20
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzdnp;->zzgq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdnp;

    move-result-object p2

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvn;->zzpq()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzdnp;->zzf(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzdnp;

    move-result-object p2

    .line 22
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzh(Lcom/google/android/gms/internal/ads/zzvk;)Lcom/google/android/gms/internal/ads/zzdnp;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzaus()Lcom/google/android/gms/internal/ads/zzdnn;

    move-result-object p1

    .line 24
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdio;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzdio;-><init>(Lcom/google/android/gms/internal/ads/zzdim;)V

    .line 25
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzdio;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhdo:Lcom/google/android/gms/internal/ads/zzdkl;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdkm;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzdkm;-><init>(Lcom/google/android/gms/internal/ads/zzdkk;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdin;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdin;-><init>(Lcom/google/android/gms/internal/ads/zzdil;)V

    .line 27
    invoke-interface {p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzdkl;->zza(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzgvx:Lcom/google/android/gms/internal/ads/zzdyz;

    .line 28
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdim;

    invoke-direct {p3, p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzdim;-><init>(Lcom/google/android/gms/internal/ads/zzdil;Lcom/google/android/gms/internal/ads/zzcyn;Lcom/google/android/gms/internal/ads/zzdio;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzfqx:Ljava/util/concurrent/Executor;

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdyr;->zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyo;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 29
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic zzatv()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzhdn:Lcom/google/android/gms/internal/ads/zzdir;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdok;->zzhjq:Lcom/google/android/gms/internal/ads/zzdok;

    const/4 v2, 0x0

    .line 56
    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdoi;->zza(Lcom/google/android/gms/internal/ads/zzdok;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzve;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdir;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V

    return-void
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object p1

    return-object p1
.end method
