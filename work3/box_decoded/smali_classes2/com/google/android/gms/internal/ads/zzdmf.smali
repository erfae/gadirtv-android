.class final Lcom/google/android/gms/internal/ads/zzdmf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "Lcom/google/android/gms/internal/ads/zzchc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgxc:Lcom/google/android/gms/internal/ads/zzcyn;

.field private final synthetic zzhge:Lcom/google/android/gms/internal/ads/zzdmg;

.field final synthetic zzhgf:Lcom/google/android/gms/internal/ads/zzdma;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdma;Lcom/google/android/gms/internal/ads/zzcyn;Lcom/google/android/gms/internal/ads/zzdmg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhgf:Lcom/google/android/gms/internal/ads/zzdma;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzgxc:Lcom/google/android/gms/internal/ads/zzcyn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhge:Lcom/google/android/gms/internal/ads/zzdmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 22
    check-cast p1, Lcom/google/android/gms/internal/ads/zzchc;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhgf:Lcom/google/android/gms/internal/ads/zzdma;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcyq:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboc;->zzakb()Lcom/google/android/gms/internal/ads/zzbvn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhgf:Lcom/google/android/gms/internal/ads/zzdma;

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdma;->zza(Lcom/google/android/gms/internal/ads/zzdma;)Lcom/google/android/gms/internal/ads/zzdlf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbvn;->zza(Lcom/google/android/gms/internal/ads/zzdlf;)Lcom/google/android/gms/internal/ads/zzbvn;

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzgxc:Lcom/google/android/gms/internal/ads/zzcyn;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzcyn;->onSuccess(Ljava/lang/Object;)V

    .line 30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabf;->zzcyq:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhgf:Lcom/google/android/gms/internal/ads/zzdma;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdma;->zzb(Lcom/google/android/gms/internal/ads/zzdma;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdme;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdme;-><init>(Lcom/google/android/gms/internal/ads/zzdmf;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhgf:Lcom/google/android/gms/internal/ads/zzdma;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdma;->zza(Lcom/google/android/gms/internal/ads/zzdma;)Lcom/google/android/gms/internal/ads/zzdlf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/reward/AdMetadataListener;->onAdMetadataChanged()V

    .line 35
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
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhgf:Lcom/google/android/gms/internal/ads/zzdma;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdma;->zzc(Lcom/google/android/gms/internal/ads/zzdma;)Lcom/google/android/gms/internal/ads/zzdkl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdkl;->zzaty()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzchf;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzdoi;->zza(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzcrg;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchf;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzboz;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v1

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhgf:Lcom/google/android/gms/internal/ads/zzdma;

    monitor-enter v2

    if-eqz v0, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchf;->zzagi()Lcom/google/android/gms/internal/ads/zzbrx;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbrx;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyq:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhgf:Lcom/google/android/gms/internal/ads/zzdma;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdma;->zzb(Lcom/google/android/gms/internal/ads/zzdma;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzdmh;-><init>(Lcom/google/android/gms/internal/ads/zzdmf;Lcom/google/android/gms/internal/ads/zzve;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhgf:Lcom/google/android/gms/internal/ads/zzdma;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdma;->zza(Lcom/google/android/gms/internal/ads/zzdma;)Lcom/google/android/gms/internal/ads/zzdlf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlf;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhgf:Lcom/google/android/gms/internal/ads/zzdma;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhge:Lcom/google/android/gms/internal/ads/zzdmg;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzdma;->zza(Lcom/google/android/gms/internal/ads/zzdma;Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzchi;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzchi;->zzaho()Lcom/google/android/gms/internal/ads/zzchf;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchf;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboz;->zzakk()Lcom/google/android/gms/internal/ads/zzbwd;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwd;->zzalg()V

    .line 19
    :cond_2
    :goto_1
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzve;->errorCode:I

    const-string v1, "RewardedAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzgxc:Lcom/google/android/gms/internal/ads/zzcyn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcyn;->zzarx()V

    .line 21
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
