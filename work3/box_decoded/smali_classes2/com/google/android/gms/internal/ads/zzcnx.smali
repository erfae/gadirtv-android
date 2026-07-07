.class public final Lcom/google/android/gms/internal/ads/zzcnx;
.super Lcom/google/android/gms/internal/ads/zzcnu;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private zzgnk:Ljava/lang/String;

.field private zzgnl:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcnu;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzcoc;->zzgnn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnl:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzle()Lcom/google/android/gms/ads/internal/util/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbo;->zzyw()Landroid/os/Looper;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzast;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzast;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgni:Lcom/google/android/gms/internal/ads/zzast;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 40
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgng:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgng:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnl:I

    sget v1, Lcom/google/android/gms/internal/ads/zzcoc;->zzgno:I

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgni:Lcom/google/android/gms/internal/ads/zzast;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzast;->zzvq()Lcom/google/android/gms/internal/ads/zzasy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcnt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcnt;-><init>(Lcom/google/android/gms/internal/ads/zzcnu;)V

    .line 45
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzasy;->zzc(Lcom/google/android/gms/internal/ads/zzatl;Lcom/google/android/gms/internal/ads/zzatf;)V

    goto :goto_0

    .line 46
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnl:I

    sget v1, Lcom/google/android/gms/internal/ads/zzcoc;->zzgnp:I

    if-ne v0, v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgni:Lcom/google/android/gms/internal/ads/zzast;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzast;->zzvq()Lcom/google/android/gms/internal/ads/zzasy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnk:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcnt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcnt;-><init>(Lcom/google/android/gms/internal/ads/zzcnu;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzasy;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzatf;)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoh;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdok;->zzhjl:Lcom/google/android/gms/internal/ads/zzdok;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcoh;-><init>(Lcom/google/android/gms/internal/ads/zzdok;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzazq;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 54
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object v1

    const-string v2, "RemoteUrlAndCacheKeyClientTask.onConnected"

    .line 55
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzayg;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoh;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdok;->zzhjl:Lcom/google/android/gms/internal/ads/zzdok;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcoh;-><init>(Lcom/google/android/gms/internal/ads/zzdok;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzazq;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 51
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoh;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdok;->zzhjl:Lcom/google/android/gms/internal/ads/zzdok;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcoh;-><init>(Lcom/google/android/gms/internal/ads/zzdok;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzazq;->setException(Ljava/lang/Throwable;)Z

    .line 57
    :cond_2
    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdok;->zzhjl:Lcom/google/android/gms/internal/ads/zzdok;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcoh;-><init>(Lcom/google/android/gms/internal/ads/zzdok;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzazq;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzgi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnl:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcoc;->zzgnn:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnl:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcoc;->zzgnp:I

    if-eq v1, v2, :cond_0

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcoh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdok;->zzhjm:Lcom/google/android/gms/internal/ads/zzdok;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzcoh;-><init>(Lcom/google/android/gms/internal/ads/zzdok;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyr;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 24
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnf:Z

    if-eqz v1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    monitor-exit v0

    return-object p1

    .line 26
    :cond_1
    sget v1, Lcom/google/android/gms/internal/ads/zzcoc;->zzgnp:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnl:I

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnf:Z

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnk:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgni:Lcom/google/android/gms/internal/ads/zzast;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzast;->checkAvailabilityAndConnect()V

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcnz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcnz;-><init>(Lcom/google/android/gms/internal/ads/zzcnx;)V

    .line 32
    sget-object v2, Lcom/google/android/gms/internal/ads/zzazj;->zzegu:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 33
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzazq;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzatl;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatl;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnl:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcoc;->zzgnn:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnl:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcoc;->zzgno:I

    if-eq v1, v2, :cond_0

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcoh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdok;->zzhjm:Lcom/google/android/gms/internal/ads/zzdok;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzcoh;-><init>(Lcom/google/android/gms/internal/ads/zzdok;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyr;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 9
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnf:Z

    if-eqz v1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    monitor-exit v0

    return-object p1

    .line 11
    :cond_1
    sget v1, Lcom/google/android/gms/internal/ads/zzcoc;->zzgno:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnl:I

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnf:Z

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgni:Lcom/google/android/gms/internal/ads/zzast;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzast;->checkAvailabilityAndConnect()V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcoa;-><init>(Lcom/google/android/gms/internal/ads/zzcnx;)V

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/zzazj;->zzegu:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 18
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzazq;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
