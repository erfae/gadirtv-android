.class final Lcom/google/android/gms/internal/ads/zzdim;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "TAppOpenAd;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzgxc:Lcom/google/android/gms/internal/ads/zzcyn;

.field private final synthetic zzhdp:Lcom/google/android/gms/internal/ads/zzdio;

.field final synthetic zzhdq:Lcom/google/android/gms/internal/ads/zzdil;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdil;Lcom/google/android/gms/internal/ads/zzcyn;Lcom/google/android/gms/internal/ads/zzdio;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzhdq:Lcom/google/android/gms/internal/ads/zzdil;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzgxc:Lcom/google/android/gms/internal/ads/zzcyn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzhdp:Lcom/google/android/gms/internal/ads/zzdio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 24
    check-cast p1, Lcom/google/android/gms/internal/ads/zzboc;

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzhdq:Lcom/google/android/gms/internal/ads/zzdil;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzhdq:Lcom/google/android/gms/internal/ads/zzdil;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzdil;Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdyz;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcyr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboc;->zzakb()Lcom/google/android/gms/internal/ads/zzbvn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzhdq:Lcom/google/android/gms/internal/ads/zzdil;

    .line 31
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzdil;)Lcom/google/android/gms/internal/ads/zzdir;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbvn;->zza(Lcom/google/android/gms/internal/ads/zzdir;)Lcom/google/android/gms/internal/ads/zzbvn;

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzgxc:Lcom/google/android/gms/internal/ads/zzcyn;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzcyn;->onSuccess(Ljava/lang/Object;)V

    .line 33
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzhdq:Lcom/google/android/gms/internal/ads/zzdil;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdil;->zzb(Lcom/google/android/gms/internal/ads/zzdil;)Lcom/google/android/gms/internal/ads/zzdkl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdkl;->zzaty()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzblm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzdoi;->zza(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzcrg;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzblm;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzboz;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v2

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzhdq:Lcom/google/android/gms/internal/ads/zzdil;

    monitor-enter v3

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzhdq:Lcom/google/android/gms/internal/ads/zzdil;

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzdil;Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdyz;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzblm;->zzagi()Lcom/google/android/gms/internal/ads/zzbrx;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbrx;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzhdq:Lcom/google/android/gms/internal/ads/zzdil;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdil;->zzc(Lcom/google/android/gms/internal/ads/zzdil;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdip;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzdip;-><init>(Lcom/google/android/gms/internal/ads/zzdim;Lcom/google/android/gms/internal/ads/zzve;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzhdq:Lcom/google/android/gms/internal/ads/zzdil;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzdil;)Lcom/google/android/gms/internal/ads/zzdir;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdir;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzhdq:Lcom/google/android/gms/internal/ads/zzdil;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzhdp:Lcom/google/android/gms/internal/ads/zzdio;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzdil;Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbrd;->zzafp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzblm;

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzblm;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboz;->zzakk()Lcom/google/android/gms/internal/ads/zzbwd;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwd;->zzalg()V

    .line 21
    :cond_2
    :goto_1
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzve;->errorCode:I

    const-string v1, "AppOpenAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzgxc:Lcom/google/android/gms/internal/ads/zzcyn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcyn;->zzarx()V

    .line 23
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
