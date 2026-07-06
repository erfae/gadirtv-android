.class final Lcom/android/volley/toolbox/NetworkUtility;
.super Ljava/lang/Object;
.source "NetworkUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;
    }
.end annotation


# static fields
.field private static final SLOW_REQUEST_THRESHOLD_MS:I = 0xbb8


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attemptRetryOnException(Lcom/android/volley/Request;Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->access$000(Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)Lcom/android/volley/VolleyError;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    new-array v0, v4, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->access$100(Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%s-retry [timeout=%s]"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-array v4, v4, [Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->access$100(Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "%s-timeout-giveup [timeout=%s]"

    .line 6
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public static getNotModifiedNetworkResponse(Lcom/android/volley/Request;JLjava/util/List;)Lcom/android/volley/NetworkResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;J",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lcom/android/volley/NetworkResponse;

    const/16 v1, 0x130

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 4
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Header;

    .line 6
    invoke-virtual {v2}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    iget-object p3, p0, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    if-eqz p3, :cond_3

    .line 9
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    .line 10
    iget-object p3, p0, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/Header;

    .line 11
    invoke-virtual {v1}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    iget-object p3, p0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    .line 14
    iget-object p3, p0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 16
    new-instance v2, Lcom/android/volley/Header;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_5
    new-instance p3, Lcom/android/volley/NetworkResponse;

    const/16 v4, 0x130

    iget-object v5, p0, Lcom/android/volley/Cache$Entry;->data:[B

    const/4 v6, 0x1

    move-object v3, p3

    move-wide v7, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    return-object p3
.end method

.method public static inputStreamToBytes(Ljava/io/InputStream;ILcom/android/volley/toolbox/ByteArrayPool;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error occurred when closing InputStream"

    .line 1
    new-instance v1, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    invoke-direct {v1, p2, p1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    const/16 p1, 0x400

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 4
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    new-array p0, v2, [Ljava/lang/Object;

    .line 7
    invoke-static {v0, p0}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_1
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 9
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v3

    const/4 p1, 0x0

    :goto_2
    if-eqz p0, :cond_1

    .line 10
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    new-array p0, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {v0, p0}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_1
    :goto_3
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 13
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v3
.end method

.method public static logSlowRequests(JLcom/android/volley/Request;[BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request<",
            "*>;[BI)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0xbb8

    cmp-long v2, p0, v0

    if-lez v2, :cond_2

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x2

    if-eqz p3, :cond_1

    .line 3
    array-length p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "null"

    :goto_0
    aput-object p1, v0, p0

    const/4 p0, 0x3

    .line 4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x4

    .line 5
    invoke-virtual {p2}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 6
    invoke-static {p0, v0}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static shouldRetryException(Lcom/android/volley/Request;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;
    .locals 9
    .param p4    # Lcom/android/volley/toolbox/HttpResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/io/IOException;",
            "J",
            "Lcom/android/volley/toolbox/HttpResponse;",
            "[B)",
            "Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    new-instance p1, Lcom/android/volley/TimeoutError;

    invoke-direct {p1}, Lcom/android/volley/TimeoutError;-><init>()V

    const-string/jumbo p2, "socket"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/net/MalformedURLException;

    if-nez v0, :cond_9

    if-eqz p4, :cond_7

    .line 4
    invoke-virtual {p4}, Lcom/android/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Unexpected response code %d for %s"

    invoke-static {v2, v0}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p5, :cond_6

    .line 6
    invoke-virtual {p4}, Lcom/android/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v8

    .line 7
    new-instance p4, Lcom/android/volley/NetworkResponse;

    const/4 v5, 0x0

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v6, v2, p2

    move-object v2, p4

    move v3, p1

    move-object v4, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    const/16 p2, 0x191

    if-eq p1, p2, :cond_5

    const/16 p2, 0x193

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x190

    if-lt p1, p2, :cond_3

    const/16 p2, 0x1f3

    if-le p1, p2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    new-instance p0, Lcom/android/volley/ClientError;

    invoke-direct {p0, p4}, Lcom/android/volley/ClientError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw p0

    :cond_3
    :goto_0
    const/16 p2, 0x1f4

    if-lt p1, p2, :cond_4

    const/16 p2, 0x257

    if-gt p1, p2, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/android/volley/Request;->shouldRetryServerErrors()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 11
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    new-instance p1, Lcom/android/volley/ServerError;

    invoke-direct {p1, p4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    const-string/jumbo p2, "server"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    return-object p0

    .line 12
    :cond_4
    new-instance p0, Lcom/android/volley/ServerError;

    invoke-direct {p0, p4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw p0

    .line 13
    :cond_5
    :goto_1
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    new-instance p1, Lcom/android/volley/AuthFailureError;

    invoke-direct {p1, p4}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    const-string p2, "auth"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    return-object p0

    .line 14
    :cond_6
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    new-instance p1, Lcom/android/volley/NetworkError;

    invoke-direct {p1}, Lcom/android/volley/NetworkError;-><init>()V

    const-string p2, "network"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    return-object p0

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/android/volley/Request;->shouldRetryConnectionErrors()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 16
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    new-instance p1, Lcom/android/volley/NoConnectionError;

    invoke-direct {p1}, Lcom/android/volley/NoConnectionError;-><init>()V

    const-string p2, "connection"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    return-object p0

    .line 17
    :cond_8
    new-instance p0, Lcom/android/volley/NoConnectionError;

    invoke-direct {p0, p1}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 18
    :cond_9
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Bad URL "

    .line 19
    invoke-static {p3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 20
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
