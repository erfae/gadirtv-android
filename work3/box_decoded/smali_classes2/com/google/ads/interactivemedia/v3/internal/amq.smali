.class public final Lcom/google/ads/interactivemedia/v3/internal/amq;
.super Lcom/google/ads/interactivemedia/v3/internal/amn;
.source "IMASDK"


# static fields
.field private static d:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private static final e:Ljava/util/concurrent/CountDownLatch;

.field private static volatile f:Z


# instance fields
.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    .line 1
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/amq;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/amt;Lcom/google/ads/interactivemedia/v3/internal/amw;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/amn;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/amt;Lcom/google/ads/interactivemedia/v3/internal/amw;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/amq;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;)V
    .locals 0

    sput-object p0, Lcom/google/ads/interactivemedia/v3/internal/amq;->d:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-void
.end method

.method static synthetic e()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/amq;->d:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/internal/amq;
    .locals 4

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/alv;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/alv;-><init>()V

    .line 9
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/amq;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/amt;)V

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/amq;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/amq;->d:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/amp;

    .line 10
    invoke-direct {v3, p0}, Lcom/google/ads/interactivemedia/v3/internal/amp;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 11
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amq;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/amw;

    .line 12
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/amw;-><init>()V

    invoke-direct {v1, p0, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/amq;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/amt;Lcom/google/ads/interactivemedia/v3/internal/amw;)V

    return-object v1

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic f()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/amq;->e:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic g()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/ads/interactivemedia/v3/internal/amq;->f:Z

    return-void
.end method


# virtual methods
.method protected final b(Landroid/content/Context;)V
    .locals 4

    .line 3
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/amn;->b(Landroid/content/Context;)V

    :try_start_0
    sget-boolean v0, Lcom/google/ads/interactivemedia/v3/internal/amq;->f:Z

    const/16 v1, 0x18

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/amq;->d()Lcom/google/ads/interactivemedia/v3/internal/amo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/amo;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/amo;->b()Z

    move-result p1

    const/4 v2, 0x1

    if-eq v2, p1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    const/16 p1, 0x1c

    .line 5
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(IJ)V

    const/16 p1, 0x1a

    const-wide/16 v2, 0x5

    .line 6
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(IJ)V

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(ILjava/lang/String;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/amq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method final d()Lcom/google/ads/interactivemedia/v3/internal/amo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/amq;->e:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x2

    .line 13
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/amo;

    .line 25
    invoke-direct {v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/amo;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/amq;

    monitor-enter v2

    :try_start_1
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/amq;->d:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v3, :cond_1

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/amo;

    .line 14
    invoke-direct {v3, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/amo;-><init>(Ljava/lang/String;Z)V

    monitor-exit v2

    return-object v3

    .line 15
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 16
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 20
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 21
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aml;->b:Lcom/google/ads/interactivemedia/v3/internal/amt;

    .line 23
    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/amt;->a([B)Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/amo;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-direct {v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/amo;-><init>(Ljava/lang/String;Z)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 16
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 24
    :catch_0
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/amo;

    .line 26
    invoke-direct {v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/amo;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method
