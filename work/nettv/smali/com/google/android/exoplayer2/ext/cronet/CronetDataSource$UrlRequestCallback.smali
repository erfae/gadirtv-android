.class final Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;
.super Lorg/chromium/net/UrlRequest$Callback;
.source "CronetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UrlRequestCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, p2, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    instance-of p1, p3, Lorg/chromium/net/NetworkException;

    if-eqz p1, :cond_1

    move-object p1, p3

    check-cast p1, Lorg/chromium/net/NetworkException;

    .line 4
    invoke-virtual {p1}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    new-instance p2, Ljava/net/UnknownHostException;

    invoke-direct {p2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$302(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$302(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, p2, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/UrlRequest;

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$200(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 5
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v3

    .line 6
    iget v1, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/16 v1, 0x133

    if-eq v3, v1, :cond_1

    const/16 v1, 0x134

    if-ne v3, v1, :cond_2

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    new-instance p3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 8
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 9
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v6

    sget-object v8, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    move-object v2, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/DataSpec;[B)V

    .line 10
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$302(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    .line 13
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$500(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$600(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)V

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    .line 16
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$700(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    iget v1, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    if-ne v1, v2, :cond_4

    const/16 v1, 0x12e

    if-ne v3, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    .line 17
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$800(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 18
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_5
    :try_start_3
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object p2

    const-string v3, "Set-Cookie"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$900(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    if-nez v1, :cond_6

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 22
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 24
    :cond_6
    :try_start_4
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->cancel()V

    if-nez v1, :cond_7

    .line 25
    iget p1, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    if-ne p1, v2, :cond_7

    .line 26
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpMethod(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    const/4 p3, 0x0

    .line 29
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpBody([B)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1

    goto :goto_1

    .line 31
    :cond_7
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->withUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32
    :goto_1
    :try_start_5
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->buildRequestBuilder(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 33
    :try_start_6
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$1000(Lorg/chromium/net/UrlRequest$Builder;Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$102(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Lorg/chromium/net/UrlRequest;)Lorg/chromium/net/UrlRequest;

    .line 35
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 37
    :try_start_7
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$302(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$1102(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, p2, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$1202(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
