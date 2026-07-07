.class final Lcom/google/ads/interactivemedia/v3/internal/amp;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/amp;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/amp;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/amq;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/amq;->e()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/amp;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/amq;->a(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/amq;->f()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/amq;->f()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    goto :goto_0

    :catch_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/amq;->f()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_2
    :try_start_2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/amq;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/amq;->f()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    goto :goto_0

    .line 7
    :goto_1
    monitor-exit v0

    return-void

    .line 5
    :goto_2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/amq;->f()Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1

    .line 7
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
