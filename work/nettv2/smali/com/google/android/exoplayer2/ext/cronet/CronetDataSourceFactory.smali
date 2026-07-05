.class public final Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;
.source "CronetDataSourceFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
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

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;IIZLjava/lang/String;)V
    .locals 8
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    .line 7
    invoke-virtual {v0, p6}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p6

    .line 8
    invoke-virtual {p6, p3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p6

    .line 9
    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 10
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

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .param p3    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->cronetEngineWrapper:Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;

    .line 26
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->executor:Ljava/util/concurrent/Executor;

    .line 27
    iput-object p3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 28
    iput p4, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->connectTimeoutMs:I

    .line 29
    iput p5, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->readTimeoutMs:I

    .line 30
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->resetTimeoutOnRedirects:Z

    .line 31
    iput-object p7, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->fallbackFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLjava/lang/String;)V
    .locals 8
    .param p3    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    .line 19
    invoke-virtual {v0, p7}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p7

    .line 20
    invoke-virtual {p7, p3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p7

    .line 21
    invoke-virtual {p7, p4}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p7

    .line 22
    invoke-virtual {p7, p5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V
    .locals 8
    .param p3    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;Ljava/lang/String;)V
    .locals 8
    .param p3    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    .line 15
    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p4

    .line 16
    invoke-virtual {p4, p3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v7

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 9
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    .line 4
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v8

    const/4 v4, 0x0

    const/16 v5, 0x1f40

    const/16 v6, 0x1f40

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 5
    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    return-void
.end method


# virtual methods
.method public final createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->cronetEngineWrapper:Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;->getCronetEngine()Lorg/chromium/net/CronetEngine;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->fallbackFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->executor:Ljava/util/concurrent/Executor;

    const/4 v4, 0x3

    iget v5, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->connectTimeoutMs:I

    iget v6, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->readTimeoutMs:I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->resetTimeoutOnRedirects:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    move-object v10, p1

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIIZZLjava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_1
    return-object v0
.end method
