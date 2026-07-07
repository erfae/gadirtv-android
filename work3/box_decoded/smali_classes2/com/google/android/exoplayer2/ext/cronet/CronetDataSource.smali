.class public Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "CronetDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;,
        Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;
    }
.end annotation


# static fields
.field private static final CONTENT_RANGE_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final COOKIE:Ljava/lang/String; = "Cookie"

.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40

.field private static final READ_BUFFER_SIZE_BYTES:I = 0x8000

.field private static final SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field private static final TAG:Ljava/lang/String; = "CronetDataSource"


# instance fields
.field private bytesRemaining:J

.field private bytesToSkip:J

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final connectTimeoutMs:I

.field private contentTypePredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cronetEngine:Lorg/chromium/net/CronetEngine;

.field private volatile currentConnectTimeoutMs:J

.field private currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private currentUrlRequest:Lorg/chromium/net/UrlRequest;

.field private final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private exception:Ljava/io/IOException;

.field private final executor:Ljava/util/concurrent/Executor;

.field private finished:Z

.field private final handleSetCookieRequests:Z

.field private opened:Z

.field private final operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private readBuffer:Ljava/nio/ByteBuffer;

.field private final readTimeoutMs:I

.field private final requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private final resetTimeoutOnRedirects:Z

.field private responseInfo:Lorg/chromium/net/UrlResponseInfo;

.field final urlRequestCallback:Lorg/chromium/net/UrlRequest$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.cronet"

    .line 92
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 112
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->CONTENT_RANGE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;)V
    .locals 7

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 163
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V
    .locals 9

    .line 194
    sget-object v6, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIZLcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Z)V
    .locals 9

    .line 230
    sget-object v6, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIZLcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Z)V

    return-void
.end method

.method constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIZLcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 366
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 367
    new-instance v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->urlRequestCallback:Lorg/chromium/net/UrlRequest$Callback;

    .line 368
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/CronetEngine;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->cronetEngine:Lorg/chromium/net/CronetEngine;

    .line 369
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->executor:Ljava/util/concurrent/Executor;

    .line 370
    iput p3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->connectTimeoutMs:I

    .line 371
    iput p4, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readTimeoutMs:I

    .line 372
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->resetTimeoutOnRedirects:Z

    .line 373
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/util/Clock;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 374
    iput-object p7, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 375
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->handleSetCookieRequests:Z

    .line 376
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 377
    new-instance p1, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;Lcom/google/common/base/Predicate;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/CronetEngine;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 262
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;Lcom/google/common/base/Predicate;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;Lcom/google/common/base/Predicate;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/CronetEngine;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;IIZ",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 302
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;Lcom/google/common/base/Predicate;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;Lcom/google/common/base/Predicate;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/CronetEngine;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;IIZ",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    sget-object v6, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIZLcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Z)V

    move-object v1, p3

    .line 354
    iput-object v1, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/UrlRequest;

    return-object p0
.end method

.method static synthetic access$1000(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->parseCookies(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Lorg/chromium/net/UrlRequest;)Lorg/chromium/net/UrlRequest;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/UrlRequest;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/chromium/net/UrlRequest$Builder;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->attachCookies(Lorg/chromium/net/UrlRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->responseInfo:Lorg/chromium/net/UrlResponseInfo;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->finished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->exception:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->resetTimeoutOnRedirects:Z

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->resetConnectTimeout()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->handleSetCookieRequests:Z

    return p0
.end method

.method static synthetic access$800(Ljava/util/List;)Z
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->isEmpty(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)Lorg/chromium/net/UrlRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->buildRequestBuilder(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static attachCookies(Lorg/chromium/net/UrlRequest$Builder;Ljava/lang/String;)V
    .locals 1

    .line 878
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Cookie"

    .line 881
    invoke-virtual {p0, v0, p1}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    return-void
.end method

.method private blockUntilConnectTimeout()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    .line 757
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentConnectTimeoutMs:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    .line 758
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentConnectTimeoutMs:J

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x5

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block(J)Z

    move-result v2

    .line 759
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return v2
.end method

.method private buildRequestBuilder(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lorg/chromium/net/UrlRequest$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->cronetEngine:Lorg/chromium/net/CronetEngine;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 707
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->urlRequestCallback:Lorg/chromium/net/UrlRequest$Callback;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest$Builder;->allowDirectExecutor()Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v0

    .line 711
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 712
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    if-eqz v2, :cond_0

    .line 713
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 716
    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 718
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 719
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 720
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 721
    invoke-virtual {v0, v4, v3}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    goto :goto_0

    .line 724
    :cond_1
    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    if-eqz v2, :cond_3

    const-string v2, "Content-Type"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 725
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "HTTP request with non-empty body must set Content-Type"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 729
    :cond_3
    :goto_1
    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v3

    if-nez v7, :cond_4

    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_6

    .line 730
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    .line 731
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    .line 733
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v4, v2, v5

    if-eqz v4, :cond_5

    .line 735
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 737
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 746
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->getHttpMethodString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/net/UrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 747
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    if-eqz v1, :cond_7

    .line 748
    new-instance v1, Lcom/google/android/exoplayer2/ext/cronet/ByteArrayUploadDataProvider;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ext/cronet/ByteArrayUploadDataProvider;-><init>([B)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lorg/chromium/net/UrlRequest$Builder;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    :cond_7
    return-object v0
.end method

.method private static copyByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 906
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 907
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 908
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 909
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 910
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return v0
.end method

.method private static getContentLength(Lorg/chromium/net/UrlResponseInfo;)J
    .locals 10

    .line 829
    invoke-virtual {p0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Content-Length"

    .line 830
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 832
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->isEmpty(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "]"

    const-string v4, "CronetDataSource"

    const-wide/16 v5, -0x1

    if-nez v1, :cond_0

    .line 833
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 834
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 836
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 838
    :catch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected Content-Length ["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string v1, "Content-Range"

    .line 842
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 843
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 844
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 845
    sget-object v1, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->CONTENT_RANGE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 846
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    .line 849
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v2, 0x1

    .line 850
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sub-long/2addr v7, v1

    const-wide/16 v1, 0x1

    add-long/2addr v7, v1

    const-wide/16 v1, 0x0

    cmp-long v9, v5, v1

    if-gez v9, :cond_2

    move-wide v5, v7

    goto :goto_1

    :cond_2
    cmp-long v1, v5, v7

    if-eqz v1, :cond_3

    .line 861
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Inconsistent headers ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v5, v0

    goto :goto_1

    .line 866
    :catch_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected Content-Range ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-wide v5
.end method

.method private getOrCreateReadBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const v0, 0x8000

    .line 812
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 813
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private static getStatus(Lorg/chromium/net/UrlRequest;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 885
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 887
    new-instance v2, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$1;

    invoke-direct {v2, v1, v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$1;-><init>([ILcom/google/android/exoplayer2/util/ConditionVariable;)V

    invoke-virtual {p0, v2}, Lorg/chromium/net/UrlRequest;->getStatus(Lorg/chromium/net/UrlRequest$StatusListener;)V

    .line 894
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block()V

    const/4 p0, 0x0

    .line 895
    aget p0, v1, p0

    return p0
.end method

.method private static isCompressed(Lorg/chromium/net/UrlResponseInfo;)Z
    .locals 3

    .line 819
    invoke-virtual {p0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 820
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "identity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isEmpty(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = false
    .end annotation

    if-eqz p0, :cond_1

    .line 900
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static parseCookies(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ";"

    .line 874
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private readInternal(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/UrlRequest;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/UrlRequest;

    invoke-virtual {v0, p1}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 780
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    iget v3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readTimeoutMs:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block(J)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 804
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->exception:Ljava/io/IOException;

    if-nez p1, :cond_0

    return-void

    .line 805
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->exception:Ljava/io/IOException;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 806
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw p1

    .line 781
    :cond_1
    :try_start_1
    new-instance v2, Ljava/net/SocketTimeoutException;

    invoke-direct {v2}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    .line 797
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    if-ne p1, v3, :cond_2

    .line 798
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    .line 800
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 801
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {p1, v2, v0, v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw p1

    :catch_1
    nop

    .line 786
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    if-ne p1, v2, :cond_3

    .line 787
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    .line 789
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 790
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 792
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw p1
.end method

.method private resetConnectTimeout()V
    .locals 4

    .line 765
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->connectTimeoutMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentConnectTimeoutMs:J

    return-void
.end method


# virtual methods
.method public clearAllRequestProperties()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->clear()V

    return-void
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/UrlRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->cancel()V

    .line 675
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/UrlRequest;

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 680
    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 681
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->responseInfo:Lorg/chromium/net/UrlResponseInfo;

    .line 682
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->exception:Ljava/io/IOException;

    .line 683
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->finished:Z

    .line 684
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 685
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->opened:Z

    .line 686
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->transferEnded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getCurrentUrlRequest()Lorg/chromium/net/UrlRequest;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/UrlRequest;

    return-object v0
.end method

.method protected getCurrentUrlResponseInfo()Lorg/chromium/net/UrlResponseInfo;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->responseInfo:Lorg/chromium/net/UrlResponseInfo;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->responseInfo:Lorg/chromium/net/UrlResponseInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->responseInfo:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->responseInfo:Lorg/chromium/net/UrlResponseInfo;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->responseInfo:Lorg/chromium/net/UrlResponseInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 428
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->opened:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 432
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->resetConnectTimeout()V

    .line 433
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v0, 0x0

    .line 436
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->buildRequestBuilder(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    move-result-object v2

    .line 437
    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/UrlRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 441
    invoke-virtual {v2}, Lorg/chromium/net/UrlRequest;->start()V

    .line 443
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 445
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->blockUntilConnectTimeout()Z

    move-result v3

    .line 446
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->exception:Ljava/io/IOException;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v4, :cond_c

    if-eqz v3, :cond_b

    .line 458
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->responseInfo:Lorg/chromium/net/UrlResponseInfo;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/net/UrlResponseInfo;

    .line 459
    invoke-virtual {v2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v9

    const/16 v3, 0xc8

    if-lt v9, v3, :cond_7

    const/16 v4, 0x12b

    if-le v9, v4, :cond_0

    goto :goto_3

    .line 490
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    if-eqz v4, :cond_3

    .line 492
    invoke-virtual {v2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Content-Type"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 493
    invoke-static {v5}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->isEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_3

    .line 494
    invoke-interface {v4, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 495
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    throw v1

    :cond_3
    :goto_1
    const-wide/16 v4, 0x0

    if-ne v9, v3, :cond_4

    .line 502
    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_4

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    :cond_4
    iput-wide v4, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesToSkip:J

    .line 505
    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->isCompressed(Lorg/chromium/net/UrlResponseInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 506
    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    .line 507
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesRemaining:J

    goto :goto_2

    .line 509
    :cond_5
    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->getContentLength(Lorg/chromium/net/UrlResponseInfo;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesRemaining:J

    goto :goto_2

    .line 514
    :cond_6
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesRemaining:J

    .line 517
    :goto_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->opened:Z

    .line 518
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 520
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesRemaining:J

    return-wide v0

    .line 461
    :cond_7
    :goto_3
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 462
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->getOrCreateReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v8, v1

    .line 463
    :goto_4
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_9

    .line 464
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 465
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 466
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readInternal(Ljava/nio/ByteBuffer;)V

    .line 467
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->finished:Z

    if-eqz v1, :cond_8

    goto :goto_5

    .line 470
    :cond_8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 471
    array-length v1, v8

    .line 472
    array-length v4, v8

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    .line 473
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v8, v1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 476
    :cond_9
    :goto_5
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 479
    invoke-virtual {v2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object v5

    .line 480
    invoke-virtual {v2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v6

    move-object v3, v1

    move v4, v9

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/DataSpec;[B)V

    const/16 p1, 0x1a0

    if-ne v9, p1, :cond_a

    .line 484
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 486
    :cond_a
    throw v1

    .line 450
    :cond_b
    :try_start_2
    new-instance v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;

    new-instance v1, Ljava/net/SocketTimeoutException;

    invoke-direct {v1}, Ljava/net/SocketTimeoutException;-><init>()V

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->getStatus(Lorg/chromium/net/UrlRequest;)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v0

    .line 447
    :cond_c
    new-instance v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->exception:Ljava/io/IOException;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->getStatus(Lorg/chromium/net/UrlRequest;)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 453
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 454
    new-instance v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;

    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    const/4 v2, -0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v0

    :catch_1
    move-exception v1

    .line 439
    new-instance v2, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;

    invoke-direct {v2, v1, p1, v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v2
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 591
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->opened:Z

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 593
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 596
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 598
    :cond_0
    iget-wide v3, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesRemaining:J

    const/4 v1, -0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    return v1

    .line 601
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 603
    iget-object v4, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v7, -0x1

    if-eqz v4, :cond_5

    .line 605
    iget-wide v9, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesToSkip:J

    cmp-long v11, v9, v5

    if-eqz v11, :cond_3

    .line 606
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v11, v4

    cmp-long v4, v9, v11

    if-ltz v4, :cond_2

    .line 607
    iget-wide v9, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesToSkip:J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v11, v4

    sub-long/2addr v9, v11

    iput-wide v9, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesToSkip:J

    .line 608
    iget-object v4, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 610
    :cond_2
    iget-object v4, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    iget-wide v10, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesToSkip:J

    long-to-int v11, v10

    add-int/2addr v9, v11

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 611
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesToSkip:J

    .line 616
    :cond_3
    :goto_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v9, p1

    invoke-static {v4, v9}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->copyByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 618
    iget-wide v1, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesRemaining:J

    cmp-long v3, v1, v7

    if-eqz v3, :cond_4

    int-to-long v5, v4

    sub-long/2addr v1, v5

    .line 619
    iput-wide v1, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesRemaining:J

    .line 621
    :cond_4
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesTransferred(I)V

    return v4

    :cond_5
    move-object/from16 v9, p1

    :cond_6
    const/4 v4, 0x1

    const/4 v10, 0x1

    :goto_1
    if-eqz v10, :cond_e

    .line 630
    iget-wide v11, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesToSkip:J

    cmp-long v13, v11, v5

    if-nez v13, :cond_7

    const/4 v11, 0x1

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    .line 632
    :goto_2
    iget-object v12, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    if-nez v11, :cond_8

    .line 635
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->getOrCreateReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 636
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 637
    iget-wide v13, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesToSkip:J

    const-wide/32 v15, 0x8000

    cmp-long v17, v13, v15

    if-gez v17, :cond_8

    long-to-int v14, v13

    .line 638
    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_8
    if-eqz v11, :cond_9

    move-object v12, v9

    goto :goto_3

    .line 643
    :cond_9
    iget-object v12, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    :goto_3
    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readInternal(Ljava/nio/ByteBuffer;)V

    .line 645
    iget-boolean v12, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->finished:Z

    if-eqz v12, :cond_a

    .line 646
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesRemaining:J

    return v1

    :cond_a
    if-eqz v11, :cond_b

    .line 652
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-le v3, v12, :cond_c

    goto :goto_4

    .line 653
    :cond_b
    iget-object v12, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    if-lez v12, :cond_c

    :goto_4
    const/4 v12, 0x1

    goto :goto_5

    :cond_c
    const/4 v12, 0x0

    .line 650
    :goto_5
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-eqz v11, :cond_d

    const/4 v10, 0x0

    goto :goto_1

    .line 658
    :cond_d
    iget-wide v11, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesToSkip:J

    iget-object v13, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    int-to-long v13, v13

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesToSkip:J

    goto :goto_1

    .line 663
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sub-int/2addr v3, v1

    .line 664
    iget-wide v1, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesRemaining:J

    cmp-long v4, v1, v7

    if-eqz v4, :cond_f

    int-to-long v4, v3

    sub-long/2addr v1, v4

    .line 665
    iput-wide v1, v0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesRemaining:J

    .line 667
    :cond_f
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesTransferred(I)V

    return v3

    .line 594
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Passed buffer is not a direct ByteBuffer"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 525
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->opened:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 529
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesRemaining:J

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    return v2

    .line 533
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->getOrCreateReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 534
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_4

    .line 536
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 537
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 538
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->readInternal(Ljava/nio/ByteBuffer;)V

    .line 540
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->finished:Z

    if-eqz v1, :cond_3

    .line 541
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesRemaining:J

    return v2

    .line 545
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 546
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 547
    iget-wide v5, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesToSkip:J

    cmp-long v1, v5, v3

    if-lez v1, :cond_2

    .line 548
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-long v5, v1

    iget-wide v7, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesToSkip:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v1, v5

    .line 549
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 550
    iget-wide v5, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesToSkip:J

    int-to-long v7, v1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesToSkip:J

    goto :goto_0

    .line 555
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 556
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 558
    iget-wide p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesRemaining:J

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_5

    int-to-long v0, p3

    sub-long/2addr p1, v0

    .line 559
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesRemaining:J

    .line 561
    :cond_5
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->bytesTransferred(I)V

    return p3
.end method

.method public setContentTypePredicate(Lcom/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 388
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
