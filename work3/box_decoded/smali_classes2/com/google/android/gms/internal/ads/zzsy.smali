.class final Lcom/google/android/gms/internal/ads/zzsy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field private final synthetic zzbup:Lcom/google/android/gms/internal/ads/zzsx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbup:Lcom/google/android/gms/internal/ads/zzsx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbup:Lcom/google/android/gms/internal/ads/zzsx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsx;->zzc(Lcom/google/android/gms/internal/ads/zzsx;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbup:Lcom/google/android/gms/internal/ads/zzsx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsx;->zzd(Lcom/google/android/gms/internal/ads/zzsx;)Lcom/google/android/gms/internal/ads/zztc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbup:Lcom/google/android/gms/internal/ads/zzsx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsx;->zzd(Lcom/google/android/gms/internal/ads/zzsx;)Lcom/google/android/gms/internal/ads/zztc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->zznc()Lcom/google/android/gms/internal/ads/zztg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzsx;->zza(Lcom/google/android/gms/internal/ads/zzsx;Lcom/google/android/gms/internal/ads/zztg;)Lcom/google/android/gms/internal/ads/zztg;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Unable to obtain a cache service instance."

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbup:Lcom/google/android/gms/internal/ads/zzsx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsx;->zza(Lcom/google/android/gms/internal/ads/zzsx;)V

    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbup:Lcom/google/android/gms/internal/ads/zzsx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsx;->zzc(Lcom/google/android/gms/internal/ads/zzsx;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbup:Lcom/google/android/gms/internal/ads/zzsx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsx;->zzc(Lcom/google/android/gms/internal/ads/zzsx;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbup:Lcom/google/android/gms/internal/ads/zzsx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzsx;->zza(Lcom/google/android/gms/internal/ads/zzsx;Lcom/google/android/gms/internal/ads/zztg;)Lcom/google/android/gms/internal/ads/zztg;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzbup:Lcom/google/android/gms/internal/ads/zzsx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsx;->zzc(Lcom/google/android/gms/internal/ads/zzsx;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 14
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
