.class public final Lcom/androidnetworking/internal/InternalNetworking;
.super Ljava/lang/Object;
.source "InternalNetworking.java"


# static fields
.field public static sHttpClient:Lokhttp3/OkHttpClient;

.field public static sUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    invoke-static {}, Lcom/androidnetworking/internal/InternalNetworking;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    const/4 v0, 0x0

    .line 61
    sput-object v0, Lcom/androidnetworking/internal/InternalNetworking;->sUserAgent:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHeadersToRequestBuilder(Lokhttp3/Request$Builder;Lcom/androidnetworking/common/ANRequest;)V
    .locals 3

    .line 268
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 270
    :cond_0
    sget-object v0, Lcom/androidnetworking/internal/InternalNetworking;->sUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p1, v0}, Lcom/androidnetworking/common/ANRequest;->setUserAgent(Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/androidnetworking/internal/InternalNetworking;->sUserAgent:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 274
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 277
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getUserAgent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_2
    return-void
.end method

.method public static enableLogging(Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;)V
    .locals 1

    .line 309
    new-instance v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;

    invoke-direct {v0}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;-><init>()V

    .line 310
    invoke-virtual {v0, p0}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->setLevel(Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;)Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;

    .line 311
    invoke-static {}, Lcom/androidnetworking/internal/InternalNetworking;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    .line 312
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 313
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 314
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 261
    sget-object v0, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 262
    invoke-static {}, Lcom/androidnetworking/internal/InternalNetworking;->getDefaultClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getDefaultClient()Lokhttp3/OkHttpClient;
    .locals 4

    .line 284
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    .line 285
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 286
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 287
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static performDownloadRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidnetworking/error/ANError;
        }
    .end annotation

    .line 146
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 147
    invoke-static {v0, p0}, Lcom/androidnetworking/internal/InternalNetworking;->addHeadersToRequestBuilder(Lokhttp3/Request$Builder;Lcom/androidnetworking/common/ANRequest;)V

    .line 148
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 152
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/androidnetworking/internal/InternalNetworking$1;

    invoke-direct {v2, p0}, Lcom/androidnetworking/internal/InternalNetworking$1;-><init>(Lcom/androidnetworking/common/ANRequest;)V

    .line 158
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    goto :goto_0

    .line 169
    :cond_1
    sget-object v1, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/androidnetworking/internal/InternalNetworking$2;

    invoke-direct {v2, p0}, Lcom/androidnetworking/internal/InternalNetworking$2;-><init>(Lcom/androidnetworking/common/ANRequest;)V

    .line 170
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 181
    :goto_0
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidnetworking/common/ANRequest;->setCall(Lokhttp3/Call;)V

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 183
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    .line 184
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getCall()Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 185
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getDirPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/androidnetworking/utils/Utils;->saveFile(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v8, v5, v0

    .line 187
    invoke-virtual {v4}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_4

    .line 188
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    const-wide/16 v5, -0x1

    cmp-long v7, v2, v5

    if-eqz v7, :cond_3

    cmp-long v7, v0, v5

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    sub-long/2addr v0, v2

    goto :goto_2

    .line 191
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    .line 195
    :goto_2
    invoke-static {}, Lcom/androidnetworking/common/ConnectionClassManager;->getInstance()Lcom/androidnetworking/common/ConnectionClassManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v8, v9}, Lcom/androidnetworking/common/ConnectionClassManager;->updateBandwidth(JJ)V

    .line 196
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v7

    const-wide/16 v10, -0x1

    .line 197
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v12

    const/4 v14, 0x0

    .line 196
    invoke-static/range {v7 .. v14}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V

    goto :goto_3

    .line 198
    :cond_4
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 199
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v7

    const-wide/16 v10, -0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    invoke-static/range {v7 .. v14}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    return-object v4

    :catch_0
    move-exception v0

    .line 203
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    :cond_6
    :goto_4
    new-instance p0, Lcom/androidnetworking/error/ANError;

    invoke-direct {p0, v0}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static performSimpleRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidnetworking/error/ANError;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 67
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 68
    invoke-static {v1, v0}, Lcom/androidnetworking/internal/InternalNetworking;->addHeadersToRequestBuilder(Lokhttp3/Request$Builder;Lcom/androidnetworking/common/ANRequest;)V

    const/4 v2, 0x0

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getMethod()I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getRequestBody()Lokhttp3/RequestBody;

    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getRequestBody()Lokhttp3/RequestBody;

    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getRequestBody()Lokhttp3/RequestBody;

    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getRequestBody()Lokhttp3/RequestBody;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_0

    .line 72
    :cond_5
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 100
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 103
    :cond_6
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    sget-object v4, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->setCall(Lokhttp3/Call;)V

    goto :goto_1

    .line 108
    :cond_7
    sget-object v3, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->setCall(Lokhttp3/Call;)V

    .line 110
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 111
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v5

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCall()Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v10, v7, v3

    .line 114
    invoke-virtual {v1}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v3

    const-wide/16 v7, 0x0

    const-wide/16 v12, -0x1

    if-nez v3, :cond_b

    .line 115
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v3

    cmp-long v9, v5, v12

    if-eqz v9, :cond_9

    cmp-long v9, v3, v12

    if-nez v9, :cond_8

    goto :goto_2

    :cond_8
    sub-long/2addr v3, v5

    goto :goto_3

    .line 118
    :cond_9
    :goto_2
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    .line 122
    :goto_3
    invoke-static {}, Lcom/androidnetworking/common/ConnectionClassManager;->getInstance()Lcom/androidnetworking/common/ConnectionClassManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v10, v11}, Lcom/androidnetworking/common/ConnectionClassManager;->updateBandwidth(JJ)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v9

    if-eqz v2, :cond_a

    .line 125
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    move-wide v12, v2

    .line 126
    :cond_a
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v14

    const/16 v16, 0x0

    .line 123
    invoke-static/range {v9 .. v16}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V

    goto :goto_4

    .line 127
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 128
    invoke-virtual {v1}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v3

    if-nez v3, :cond_c

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v9

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    invoke-static/range {v9 .. v16}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V

    goto :goto_4

    .line 131
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v9

    if-eqz v2, :cond_d

    .line 132
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    move-wide v12, v2

    :cond_d
    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    .line 131
    invoke-static/range {v9 .. v16}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    :goto_4
    return-object v1

    :catch_0
    move-exception v0

    .line 137
    new-instance v1, Lcom/androidnetworking/error/ANError;

    invoke-direct {v1, v0}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static performUploadRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidnetworking/error/ANError;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 220
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 221
    invoke-static {v1, v0}, Lcom/androidnetworking/internal/InternalNetworking;->addHeadersToRequestBuilder(Lokhttp3/Request$Builder;Lcom/androidnetworking/common/ANRequest;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getMultiPartRequestBody()Lokhttp3/RequestBody;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    .line 224
    new-instance v3, Lcom/androidnetworking/internal/RequestProgressBody;

    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getUploadProgressListener()Lcom/androidnetworking/interfaces/UploadProgressListener;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/androidnetworking/internal/RequestProgressBody;-><init>(Lokhttp3/RequestBody;Lcom/androidnetworking/interfaces/UploadProgressListener;)V

    invoke-virtual {v1, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 228
    :cond_0
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 231
    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    .line 232
    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 234
    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->setCall(Lokhttp3/Call;)V

    goto :goto_0

    .line 236
    :cond_1
    sget-object v2, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->setCall(Lokhttp3/Call;)V

    .line 238
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getCall()Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v11

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v13, v3, v1

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 242
    invoke-virtual {v11}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v1

    if-nez v1, :cond_2

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v3

    .line 244
    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v4, v13

    .line 243
    invoke-static/range {v3 .. v10}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V

    goto :goto_2

    .line 246
    :cond_2
    invoke-virtual {v11}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v1

    if-nez v1, :cond_3

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v12

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x1

    invoke-static/range {v12 .. v19}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V

    goto :goto_2

    .line 249
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/androidnetworking/common/ANRequest;->getAnalyticsListener()Lcom/androidnetworking/interfaces/AnalyticsListener;

    move-result-object v12

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-wide/16 v6, -0x1

    :goto_1
    move-wide v15, v6

    const-wide/16 v17, 0x0

    const/16 v19, 0x1

    invoke-static/range {v12 .. v19}, Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    return-object v11

    :catch_0
    move-exception v0

    .line 255
    new-instance v1, Lcom/androidnetworking/error/ANError;

    invoke-direct {v1, v0}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 305
    sput-object p0, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static setClientWithCache(Landroid/content/Context;)V
    .locals 3

    .line 292
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/high16 v1, 0xa00000

    const-string v2, "cache_an"

    .line 293
    invoke-static {p0, v1, v2}, Lcom/androidnetworking/utils/Utils;->getCache(Landroid/content/Context;ILjava/lang/String;)Lokhttp3/Cache;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    .line 294
    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 295
    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 296
    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 297
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lcom/androidnetworking/internal/InternalNetworking;->sHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 301
    sput-object p0, Lcom/androidnetworking/internal/InternalNetworking;->sUserAgent:Ljava/lang/String;

    return-void
.end method
