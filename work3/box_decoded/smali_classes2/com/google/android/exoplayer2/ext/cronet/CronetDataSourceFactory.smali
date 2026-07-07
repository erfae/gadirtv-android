.class public final Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;
.source "CronetDataSourceFactory.java"


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40


# instance fields
.field private final connectTimeoutMs:I

.field private final cronetEngineWrapper:Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final fallbackFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

.field private final readTimeoutMs:I

.field private final resetTimeoutOnRedirects:Z

.field private final transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 95
    sget-object v0, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 184
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;IIZLjava/lang/String;)V
    .locals 8

    .line 148
    new-instance v7, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    const/4 v2, 0x0

    move-object v0, v7

    move-object v1, p6

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    const/4 v3, 0x0

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V
    .locals 8

    const/4 v3, 0x0

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    .line 72
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1

    .line 241
    sget-object v0, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V
    .locals 0

    .line 333
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->cronetEngineWrapper:Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;

    .line 335
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->executor:Ljava/util/concurrent/Executor;

    .line 336
    iput-object p3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 337
    iput p4, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->connectTimeoutMs:I

    .line 338
    iput p5, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->readTimeoutMs:I

    .line 339
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->resetTimeoutOnRedirects:Z

    .line 340
    iput-object p7, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->fallbackFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLjava/lang/String;)V
    .locals 8

    .line 300
    new-instance v7, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    move-object v0, v7

    move-object v1, p7

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V
    .locals 8

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    .line 214
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;Ljava/lang/String;)V
    .locals 8

    .line 263
    new-instance v7, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p4

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    const/16 v5, 0x1f40

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 8

    .line 113
    new-instance v7, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    const/4 v2, 0x0

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    const/4 v3, 0x0

    const/16 v5, 0x1f40

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    return-void
.end method


# virtual methods
.method protected createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 8

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->cronetEngineWrapper:Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;->getCronetEngine()Lorg/chromium/net/CronetEngine;

    move-result-object v2

    if-nez v2, :cond_0

    .line 348
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->fallbackFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object p1

    return-object p1

    .line 350
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->executor:Ljava/util/concurrent/Executor;

    iget v4, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->connectTimeoutMs:I

    iget v5, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->readTimeoutMs:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->resetTimeoutOnRedirects:Z

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    .line 358
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz p1, :cond_1

    .line 359
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_1
    return-object v0
.end method
