.class final Lcom/google/android/gms/internal/ads/zztn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field final synthetic zzbvh:Lcom/google/android/gms/internal/ads/zztl;

.field private final synthetic zzbvn:Lcom/google/android/gms/internal/ads/zztf;

.field private final synthetic zzbvo:Lcom/google/android/gms/internal/ads/zzazq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zztf;Lcom/google/android/gms/internal/ads/zzazq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbvh:Lcom/google/android/gms/internal/ads/zztl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbvn:Lcom/google/android/gms/internal/ads/zztf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbvo:Lcom/google/android/gms/internal/ads/zzazq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 5

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbvh:Lcom/google/android/gms/internal/ads/zztl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zztl;->zzb(Lcom/google/android/gms/internal/ads/zztl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbvh:Lcom/google/android/gms/internal/ads/zztl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztl;->zzc(Lcom/google/android/gms/internal/ads/zztl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p1

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbvh:Lcom/google/android/gms/internal/ads/zztl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zztl;->zza(Lcom/google/android/gms/internal/ads/zztl;Z)Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbvh:Lcom/google/android/gms/internal/ads/zztl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztl;->zzd(Lcom/google/android/gms/internal/ads/zztl;)Lcom/google/android/gms/internal/ads/zztc;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    monitor-exit p1

    return-void

    .line 9
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzazj;->zzegp:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v2, Lcom/google/android/gms/internal/ads/zztm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbvn:Lcom/google/android/gms/internal/ads/zztf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbvo:Lcom/google/android/gms/internal/ads/zzazq;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zztm;-><init>(Lcom/google/android/gms/internal/ads/zztn;Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zztf;Lcom/google/android/gms/internal/ads/zzazq;)V

    .line 10
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdzc;->zzg(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbvo:Lcom/google/android/gms/internal/ads/zzazq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zztp;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zztp;-><init>(Lcom/google/android/gms/internal/ads/zzazq;Ljava/util/concurrent/Future;)V

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazj;->zzegu:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzazq;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

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

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
