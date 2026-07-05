.class public final Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;
.super Ljava/lang/Object;
.source "CronetDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private connectTimeoutMs:I

.field private contentTypePredicate:Lcom/google/common/base/Predicate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cronetEngine:Lorg/chromium/net/CronetEngine;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private final executor:Ljava/util/concurrent/Executor;

.field private fallbackFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private handleSetCookieRequests:Z

.field private final internalFallbackFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private keepPostFor302Redirects:Z

.field private readTimeoutMs:I

.field private requestPriority:I

.field private resetTimeoutOnRedirects:Z

.field private transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private userAgent:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;->getCronetEngine()Lorg/chromium/net/CronetEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->cronetEngine:Lorg/chromium/net/CronetEngine;

    .line 11
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->executor:Ljava/util/concurrent/Executor;

    .line 12
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 13
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->internalFallbackFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    const/16 p1, 0x1f40

    .line 14
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->connectTimeoutMs:I

    .line 15
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->readTimeoutMs:I

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/CronetEngine;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->cronetEngine:Lorg/chromium/net/CronetEngine;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->executor:Ljava/util/concurrent/Executor;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->internalFallbackFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    const/4 p1, 0x3

    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->requestPriority:I

    const/16 p1, 0x1f40

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->connectTimeoutMs:I

    .line 8
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->readTimeoutMs:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 13

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->cronetEngine:Lorg/chromium/net/CronetEngine;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->fallbackFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->internalFallbackFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    move-result-object v0

    :goto_0
    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->cronetEngine:Lorg/chromium/net/CronetEngine;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->executor:Ljava/util/concurrent/Executor;

    iget v4, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->requestPriority:I

    iget v5, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->connectTimeoutMs:I

    iget v6, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->readTimeoutMs:I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->resetTimeoutOnRedirects:Z

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->handleSetCookieRequests:Z

    iget-object v9, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->userAgent:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    iget-object v11, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->contentTypePredicate:Lcom/google/common/base/Predicate;

    iget-boolean v12, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->keepPostFor302Redirects:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIIZZLjava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_2
    return-object v0
.end method

.method public setConnectionTimeoutMs(I)Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->connectTimeoutMs:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->internalFallbackFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    :cond_0
    return-object p0
.end method

.method public setContentTypePredicate(Lcom/google/common/base/Predicate;)Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;
    .locals 1
    .param p1    # Lcom/google/common/base/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->contentTypePredicate:Lcom/google/common/base/Predicate;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->internalFallbackFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setContentTypePredicate(Lcom/google/common/base/Predicate;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    :cond_0
    return-object p0
.end method

.method public final setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->clearAndSet(Ljava/util/Map;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->internalFallbackFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setFallbackFactory(Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->fallbackFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    return-object p0
.end method

.method public setHandleSetCookieRequests(Z)Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->handleSetCookieRequests:Z

    return-object p0
.end method

.method public setKeepPostFor302Redirects(Z)Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->keepPostFor302Redirects:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->internalFallbackFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setKeepPostFor302Redirects(Z)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    :cond_0
    return-object p0
.end method

.method public setReadTimeoutMs(I)Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->readTimeoutMs:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->internalFallbackFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    :cond_0
    return-object p0
.end method

.method public setRequestPriority(I)Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->requestPriority:I

    return-object p0
.end method

.method public setResetTimeoutOnRedirects(Z)Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->resetTimeoutOnRedirects:Z

    return-object p0
.end method

.method public setTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->internalFallbackFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    :cond_0
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->userAgent:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;->internalFallbackFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    :cond_0
    return-object p0
.end method
