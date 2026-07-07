.class public abstract Lcom/google/android/gms/internal/ads/zzbgm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjl;


# static fields
.field private static zzevb:Lcom/google/android/gms/internal/ads/zzbgm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzbgm;
    .locals 0

    .line 2
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzbgm;->zzf(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaep()Lcom/google/android/gms/internal/ads/zzciq;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzciq;->zzb(Lcom/google/android/gms/internal/ads/zzani;)V

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzazh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbim$zza;)Lcom/google/android/gms/internal/ads/zzbgm;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    const-class v0, Lcom/google/android/gms/internal/ads/zzbgm;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgm;->zzevb:Lcom/google/android/gms/internal/ads/zzbgm;

    if-nez v1, :cond_0

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbib;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbib;-><init>(Lcom/google/android/gms/internal/ads/zzbhj;)V

    .line 14
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbgl$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbgl$zza;-><init>()V

    .line 15
    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/zzbgl$zza;->zza(Lcom/google/android/gms/internal/ads/zzazh;)Lcom/google/android/gms/internal/ads/zzbgl$zza;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbgl$zza;->zzby(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbgl$zza;

    move-result-object v3

    .line 16
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbgl;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzbgl;-><init>(Lcom/google/android/gms/internal/ads/zzbgl$zza;Lcom/google/android/gms/internal/ads/zzbgn;)V

    .line 17
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzbib;->zzc(Lcom/google/android/gms/internal/ads/zzbgl;)Lcom/google/android/gms/internal/ads/zzbib;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbim;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/zzbim;-><init>(Lcom/google/android/gms/internal/ads/zzbim$zza;)V

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Lcom/google/android/gms/internal/ads/zzbim;)Lcom/google/android/gms/internal/ads/zzbib;

    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbib;->zzahg()Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p2

    sput-object p2, Lcom/google/android/gms/internal/ads/zzbgm;->zzevb:Lcom/google/android/gms/internal/ads/zzbgm;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzabf;->initialize(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzayg;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;)V

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkw()Lcom/google/android/gms/internal/ads/zzsx;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzsx;->initialize(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzm;->zzam(Landroid/content/Context;)Z

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzm;->zzan(Landroid/content/Context;)Z

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzm;->zzbd(Landroid/content/Context;)V

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzb;->zzal(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzrg;->initialize(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzll()Lcom/google/android/gms/ads/internal/util/zzby;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzby;->initialize(Landroid/content/Context;)V

    .line 29
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabf;->zzcwu:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 31
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 32
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcqh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzts;

    new-instance v2, Lcom/google/android/gms/internal/ads/zztx;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zztx;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztx;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpr;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcpp;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzcpp;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbgm;->zzevb:Lcom/google/android/gms/internal/ads/zzbgm;

    .line 33
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaen()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcpr;-><init>(Lcom/google/android/gms/internal/ads/zzcpp;Lcom/google/android/gms/internal/ads/zzdzc;)V

    invoke-direct {p2, p1, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcqh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzcpr;)V

    .line 34
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcqh;->zzari()V

    .line 35
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzevb:Lcom/google/android/gms/internal/ads/zzbgm;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static zzf(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzbgm;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    const-class v0, Lcom/google/android/gms/internal/ads/zzbgm;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgm;->zzevb:Lcom/google/android/gms/internal/ads/zzbgm;

    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazh;

    const v1, 0xc1fb2e0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzazh;-><init>(IIZZ)V

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbhh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbhh;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Lcom/google/android/gms/internal/ads/zzazh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbim$zza;)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzatl;I)Lcom/google/android/gms/internal/ads/zzdga;
    .locals 1

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhn;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdhn;-><init>(Lcom/google/android/gms/internal/ads/zzatl;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Lcom/google/android/gms/internal/ads/zzdhn;)Lcom/google/android/gms/internal/ads/zzdga;

    move-result-object p1

    return-object p1
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzdhn;)Lcom/google/android/gms/internal/ads/zzdga;
.end method

.method public abstract zzaek()Ljava/util/concurrent/Executor;
.end method

.method public abstract zzael()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract zzaem()Ljava/util/concurrent/Executor;
.end method

.method public abstract zzaen()Lcom/google/android/gms/internal/ads/zzdzc;
.end method

.method public abstract zzaeo()Lcom/google/android/gms/internal/ads/zzbua;
.end method

.method public abstract zzaep()Lcom/google/android/gms/internal/ads/zzciq;
.end method

.method public abstract zzaeq()Lcom/google/android/gms/internal/ads/zzbiu;
.end method

.method public abstract zzaer()Lcom/google/android/gms/internal/ads/zzbmz;
.end method

.method public abstract zzaes()Lcom/google/android/gms/internal/ads/zzblf;
.end method

.method public abstract zzaet()Lcom/google/android/gms/internal/ads/zzbls;
.end method

.method public abstract zzaeu()Lcom/google/android/gms/internal/ads/zzdii;
.end method

.method public abstract zzaev()Lcom/google/android/gms/internal/ads/zzcaa;
.end method

.method public abstract zzaew()Lcom/google/android/gms/internal/ads/zzdlc;
.end method

.method public abstract zzaex()Lcom/google/android/gms/internal/ads/zzcaw;
.end method

.method public abstract zzaey()Lcom/google/android/gms/internal/ads/zzchi;
.end method

.method public abstract zzaez()Lcom/google/android/gms/internal/ads/zzdmp;
.end method

.method public abstract zzafa()Lcom/google/android/gms/internal/ads/zzcyy;
.end method

.method public abstract zzafb()Lcom/google/android/gms/internal/ads/zzcyx;
.end method

.method public abstract zzafc()Lcom/google/android/gms/internal/ads/zzcqy;
.end method

.method public abstract zzafd()Lcom/google/android/gms/internal/ads/zzdod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdod<",
            "Lcom/google/android/gms/internal/ads/zzcgh;",
            ">;"
        }
    .end annotation
.end method
