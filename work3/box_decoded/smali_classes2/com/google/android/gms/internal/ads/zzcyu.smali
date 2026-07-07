.class final Lcom/google/android/gms/internal/ads/zzcyu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "Lcom/google/android/gms/internal/ads/zzboc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgxc:Lcom/google/android/gms/internal/ads/zzcyn;

.field private final synthetic zzgxd:Lcom/google/android/gms/internal/ads/zzcat;

.field final synthetic zzgxe:Lcom/google/android/gms/internal/ads/zzcyp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyp;Lcom/google/android/gms/internal/ads/zzcyn;Lcom/google/android/gms/internal/ads/zzcat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyu;->zzgxe:Lcom/google/android/gms/internal/ads/zzcyp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyu;->zzgxc:Lcom/google/android/gms/internal/ads/zzcyn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcyu;->zzgxd:Lcom/google/android/gms/internal/ads/zzcat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzboc;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyu;->zzgxe:Lcom/google/android/gms/internal/ads/zzcyp;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcyt:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboc;->zzakb()Lcom/google/android/gms/internal/ads/zzbvn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcyu;->zzgxe:Lcom/google/android/gms/internal/ads/zzcyp;

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcyp;->zza(Lcom/google/android/gms/internal/ads/zzcyp;)Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcyj;->zzasa()Lcom/google/android/gms/internal/ads/zzcxq;

    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbvn;->zza(Lcom/google/android/gms/internal/ads/zzcxq;)Lcom/google/android/gms/internal/ads/zzbvn;

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyu;->zzgxc:Lcom/google/android/gms/internal/ads/zzcyn;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzcyn;->onSuccess(Ljava/lang/Object;)V

    .line 21
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabf;->zzcyt:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyu;->zzgxe:Lcom/google/android/gms/internal/ads/zzcyp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcyp;->zzb(Lcom/google/android/gms/internal/ads/zzcyp;)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaek()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcyt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcyt;-><init>(Lcom/google/android/gms/internal/ads/zzcyu;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    :cond_1
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
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyu;->zzgxd:Lcom/google/android/gms/internal/ads/zzcat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcat;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzboz;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyu;->zzgxd:Lcom/google/android/gms/internal/ads/zzcat;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcat;->zzagi()Lcom/google/android/gms/internal/ads/zzbrx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbrx;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcyt:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyu;->zzgxe:Lcom/google/android/gms/internal/ads/zzcyp;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcyp;->zzb(Lcom/google/android/gms/internal/ads/zzcyp;)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaek()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcyw;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzcyw;-><init>(Lcom/google/android/gms/internal/ads/zzcyu;Lcom/google/android/gms/internal/ads/zzve;)V

    .line 8
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    :cond_0
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzve;->errorCode:I

    const-string v1, "NativeAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyu;->zzgxc:Lcom/google/android/gms/internal/ads/zzcyn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcyn;->zzarx()V

    return-void
.end method
