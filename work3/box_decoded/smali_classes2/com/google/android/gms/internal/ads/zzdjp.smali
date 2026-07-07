.class public final Lcom/google/android/gms/internal/ads/zzdjp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzbre<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/zzboc;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdkl<",
        "TR;TAdT;>;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzhdo:Lcom/google/android/gms/internal/ads/zzdkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkl<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field private final zzheq:Lcom/google/android/gms/internal/ads/zzdkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkl<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/zzdjy<",
            "TAdT;>;>;"
        }
    .end annotation
.end field

.field private final zzher:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field private zzhes:Lcom/google/android/gms/internal/ads/zzbre;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkl;Lcom/google/android/gms/internal/ads/zzdkl;Lcom/google/android/gms/internal/ads/zzdpv;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdkl<",
            "TR;TAdT;>;",
            "Lcom/google/android/gms/internal/ads/zzdkl<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/zzdjy<",
            "TAdT;>;>;",
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzhdo:Lcom/google/android/gms/internal/ads/zzdkl;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzheq:Lcom/google/android/gms/internal/ads/zzdkl;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzher:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdjp;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdpn;Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpn<",
            "TAdT;>;",
            "Lcom/google/android/gms/internal/ads/zzdkm;",
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "TAdT;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfk:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 22
    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/zzdkn;->zzc(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object p3

    .line 23
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdpn;->zzhmc:Lcom/google/android/gms/internal/ads/zzboc;

    if-eqz v0, :cond_1

    .line 24
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbrd;->zzafp()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbre;

    .line 25
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbre;->zzagp()Lcom/google/android/gms/internal/ads/zzdki;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 26
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzdpn;->zzhmc:Lcom/google/android/gms/internal/ads/zzboc;

    .line 27
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzboc;->zzaka()Lcom/google/android/gms/internal/ads/zzdki;

    move-result-object p3

    .line 28
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbre;->zzagp()Lcom/google/android/gms/internal/ads/zzdki;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzdki;->zzb(Lcom/google/android/gms/internal/ads/zzdki;)V

    .line 29
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdpn;->zzhmc:Lcom/google/android/gms/internal/ads/zzboc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1

    .line 30
    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdpn;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzbrd;->zza(Lcom/google/android/gms/internal/ads/zzdnj;)Lcom/google/android/gms/internal/ads/zzbrd;

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzhdo:Lcom/google/android/gms/internal/ads/zzdkl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjr;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzdjr;-><init>(Lcom/google/android/gms/internal/ads/zzbrd;)V

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdkl;->zza(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzhdo:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdkl;->zzaty()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbre;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzhes:Lcom/google/android/gms/internal/ads/zzbre;

    return-object p1
.end method

.method private final declared-synchronized zzatz()Lcom/google/android/gms/internal/ads/zzbre;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzhes:Lcom/google/android/gms/internal/ads/zzbre;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdjs;Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdjy;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 48
    iget-object v7, p4, Lcom/google/android/gms/internal/ads/zzdjy;->zzhex:Lcom/google/android/gms/internal/ads/zzdpq;

    .line 49
    new-instance v8, Lcom/google/android/gms/internal/ads/zzdjs;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzdjs;->zzhev:Lcom/google/android/gms/internal/ads/zzdkn;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzdjs;->zzhew:Lcom/google/android/gms/internal/ads/zzdkm;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzdjs;->zzdsr:Lcom/google/android/gms/internal/ads/zzvk;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzdjs;->zzbum:Ljava/lang/String;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzdjs;->executor:Ljava/util/concurrent/Executor;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzdjs;->zzgyt:Lcom/google/android/gms/internal/ads/zzvw;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdjs;-><init>(Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzvk;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzvw;Lcom/google/android/gms/internal/ads/zzdpq;)V

    .line 51
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzdjy;->zzhfe:Lcom/google/android/gms/internal/ads/zzdpn;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 52
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzhes:Lcom/google/android/gms/internal/ads/zzbre;

    .line 53
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzher:Lcom/google/android/gms/internal/ads/zzdpv;

    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zzdpv;->zzb(Lcom/google/android/gms/internal/ads/zzdqb;)V

    .line 54
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzdjy;->zzhfe:Lcom/google/android/gms/internal/ads/zzdpn;

    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzdjp;->zza(Lcom/google/android/gms/internal/ads/zzdpn;Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzher:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 56
    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zzdpv;->zzc(Lcom/google/android/gms/internal/ads/zzdqb;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 58
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfk:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 59
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzdkn;->zzc(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object p1

    .line 60
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbrd;->zzafp()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbre;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzhes:Lcom/google/android/gms/internal/ads/zzbre;

    .line 62
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdjq;

    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzdjq;-><init>(Lcom/google/android/gms/internal/ads/zzdjp;Lcom/google/android/gms/internal/ads/zzdkn;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjp;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1

    .line 64
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzher:Lcom/google/android/gms/internal/ads/zzdpv;

    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zzdpv;->zzb(Lcom/google/android/gms/internal/ads/zzdqb;)V

    .line 65
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdkm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfk:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzdjy;->zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzdkm;-><init>(Lcom/google/android/gms/internal/ads/zzdkk;Lcom/google/android/gms/internal/ads/zzatl;)V

    move-object p1, p2

    .line 66
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzhdo:Lcom/google/android/gms/internal/ads/zzdkl;

    .line 67
    invoke-interface {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzdkl;->zza(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    .line 68
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzhdo:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdkl;->zzaty()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbre;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzhes:Lcom/google/android/gms/internal/ads/zzbre;

    return-object p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdkm;",
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "TAdT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfk:Lcom/google/android/gms/internal/ads/zzdkk;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdkn;->zzc(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbrd;->zzafp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbre;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbre;->zzago()Lcom/google/android/gms/internal/ads/zzdnn;

    move-result-object v0

    .line 11
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhio:Lcom/google/android/gms/internal/ads/zzvk;

    .line 12
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhip:Ljava/lang/String;

    .line 13
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhis:Lcom/google/android/gms/internal/ads/zzvw;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjs;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdjp;->executor:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzdjs;-><init>(Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzvk;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzvw;Lcom/google/android/gms/internal/ads/zzdpq;)V

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zzheq:Lcom/google/android/gms/internal/ads/zzdkl;

    .line 17
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdkl;->zza(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyi;->zzg(Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdyi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdjo;-><init>(Lcom/google/android/gms/internal/ads/zzdjp;Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdjs;Lcom/google/android/gms/internal/ads/zzdkn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjp;->executor:Ljava/util/concurrent/Executor;

    .line 19
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdyi;->zzb(Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyi;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdpz;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 35
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzdpz;->zzhfe:Lcom/google/android/gms/internal/ads/zzdpn;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzdpz;->zzhmr:Lcom/google/android/gms/internal/ads/zzdqb;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzdpz;->zzhmr:Lcom/google/android/gms/internal/ads/zzdqb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdjs;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zzb;->zznk()Lcom/google/android/gms/internal/ads/zzue$zzb$zzc;

    move-result-object v1

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zzb$zza;->zznm()Lcom/google/android/gms/internal/ads/zzue$zzb$zza$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzue$zzb$zzb;->zzbzf:Lcom/google/android/gms/internal/ads/zzue$zzb$zzb;

    .line 39
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzue$zzb$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzue$zzb$zzb;)Lcom/google/android/gms/internal/ads/zzue$zzb$zza$zza;

    move-result-object v2

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzue$zzb$zzd;->zzno()Lcom/google/android/gms/internal/ads/zzue$zzb$zzd$zza;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzue$zzb$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzue$zzb$zzd$zza;)Lcom/google/android/gms/internal/ads/zzue$zzb$zza$zza;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzue$zzb$zzc;->zza(Lcom/google/android/gms/internal/ads/zzue$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzue$zzb$zzc;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzbhv()Lcom/google/android/gms/internal/ads/zzels;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzekh;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzue$zzb;

    .line 43
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzdpz;->zzhfe:Lcom/google/android/gms/internal/ads/zzdpn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdpn;->zzhmb:Lcom/google/android/gms/internal/ads/zzboz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzboz;->zzakk()Lcom/google/android/gms/internal/ads/zzbwd;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbwd;->zze(Lcom/google/android/gms/internal/ads/zzue$zzb;)V

    .line 44
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdpz;->zzhfe:Lcom/google/android/gms/internal/ads/zzdpn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhew:Lcom/google/android/gms/internal/ads/zzdkm;

    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdjp;->zza(Lcom/google/android/gms/internal/ads/zzdpn;Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcme;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdok;->zzhjl:Lcom/google/android/gms/internal/ads/zzdok;

    const-string v0, "Empty prefetch"

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcme;-><init>(Lcom/google/android/gms/internal/ads/zzdok;Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic zzaty()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdjp;->zzatz()Lcom/google/android/gms/internal/ads/zzbre;

    move-result-object v0

    return-object v0
.end method
