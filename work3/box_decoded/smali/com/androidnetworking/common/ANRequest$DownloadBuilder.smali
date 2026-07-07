.class public Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
.super Ljava/lang/Object;
.source "ANRequest.java"

# interfaces
.implements Lcom/androidnetworking/common/RequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidnetworking/common/ANRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/androidnetworking/common/ANRequest$DownloadBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/androidnetworking/common/RequestBuilder;"
    }
.end annotation


# instance fields
.field private mCacheControl:Lokhttp3/CacheControl;

.field private mDirPath:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFileName:Ljava/lang/String;

.field private mHeadersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mPathParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPercentageThresholdForCancelling:I

.field private mPriority:Lcom/androidnetworking/common/Priority;

.field private mQueryParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/Object;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    sget-object v0, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mPriority:Lcom/androidnetworking/common/Priority;

    .line 1342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mHeadersMap:Ljava/util/HashMap;

    .line 1343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    .line 1344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mPathParameterMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 1348
    iput v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mPercentageThresholdForCancelling:I

    .line 1354
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mUrl:Ljava/lang/String;

    .line 1355
    iput-object p2, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mDirPath:Ljava/lang/String;

    .line 1356
    iput-object p3, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3300(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Lcom/androidnetworking/common/Priority;
    .locals 0

    .line 1337
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mPriority:Lcom/androidnetworking/common/Priority;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/lang/String;
    .locals 0

    .line 1337
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/lang/Object;
    .locals 0

    .line 1337
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/lang/String;
    .locals 0

    .line 1337
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mDirPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/lang/String;
    .locals 0

    .line 1337
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 1337
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mHeadersMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 1337
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 1337
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mPathParameterMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Lokhttp3/CacheControl;
    .locals 0

    .line 1337
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)I
    .locals 0

    .line 1337
    iget p0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mPercentageThresholdForCancelling:I

    return p0
.end method

.method static synthetic access$4300(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1337
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1337
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)Ljava/lang/String;
    .locals 0

    .line 1337
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addHeaders(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mHeadersMap:Ljava/util/HashMap;

    .line 1389
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v1

    .line 1390
    invoke-virtual {v1, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 1388
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1373
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->addHeaders(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addPathParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mPathParameterMap:Ljava/util/HashMap;

    .line 1437
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v1

    .line 1438
    invoke-virtual {v1, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 1436
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1421
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addPathParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->addPathParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addPathParameter(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->addPathParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addQueryParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    .line 1413
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v1

    .line 1414
    invoke-virtual {v1, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 1412
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1397
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->addQueryParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/androidnetworking/common/ANRequest;
    .locals 1

    .line 1497
    new-instance v0, Lcom/androidnetworking/common/ANRequest;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANRequest;-><init>(Lcom/androidnetworking/common/ANRequest$DownloadBuilder;)V

    return-object v0
.end method

.method public doNotCacheResponse()Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1445
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic doNotCacheResponse()Lcom/androidnetworking/common/RequestBuilder;
    .locals 1

    .line 1337
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->doNotCacheResponse()Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyFromNetwork()Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1457
    sget-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic getResponseOnlyFromNetwork()Lcom/androidnetworking/common/RequestBuilder;
    .locals 1

    .line 1337
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->getResponseOnlyFromNetwork()Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyIfCached()Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1451
    sget-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic getResponseOnlyIfCached()Lcom/androidnetworking/common/RequestBuilder;
    .locals 1

    .line 1337
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->getResponseOnlyIfCached()Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 1475
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public bridge synthetic setExecutor(Ljava/util/concurrent/Executor;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->setExecutor(Ljava/util/concurrent/Executor;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 1463
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lokhttp3/CacheControl$Builder;->maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 1469
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            ")TT;"
        }
    .end annotation

    .line 1481
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public bridge synthetic setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPercentageThresholdForCancelling(I)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1492
    iput p1, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mPercentageThresholdForCancelling:I

    return-object p0
.end method

.method public setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidnetworking/common/Priority;",
            ")TT;"
        }
    .end annotation

    .line 1361
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mPriority:Lcom/androidnetworking/common/Priority;

    return-object p0
.end method

.method public bridge synthetic setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1367
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1487
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->setUserAgent(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p1

    return-object p1
.end method
