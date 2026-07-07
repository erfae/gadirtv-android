.class final Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;
.super Lorg/chromium/net/UrlRequest$Callback;
.source "CronetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UrlRequestCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$1;)V
    .locals 0

    .line 914
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 0

    monitor-enter p0

    .line 1012
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, p2, :cond_0

    .line 1013
    monitor-exit p0

    return-void

    .line 1015
    :cond_0
    :try_start_1
    instance-of p1, p3, Lorg/chromium/net/NetworkException;

    if-eqz p1, :cond_1

    move-object p1, p3

    check-cast p1, Lorg/chromium/net/NetworkException;

    .line 1016
    invoke-virtual {p1}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1018
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    new-instance p2, Ljava/net/UnknownHostException;

    invoke-direct {p2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$302(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_0

    .line 1020
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$302(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    .line 1022
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1023
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

    .line 994
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, p2, :cond_0

    .line 995
    monitor-exit p0

    return-void

    .line 997
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    .line 920
    monitor-exit p0

    return-void

    .line 922
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/UrlRequest;

    .line 923
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$200(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 924
    iget v1, v6, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 925
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v3

    const/16 v1, 0x133

    if-eq v3, v1, :cond_1

    const/16 v1, 0x134

    if-ne v3, v1, :cond_2

    .line 928
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    new-instance p3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 931
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object v4

    .line 932
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v5

    sget-object v7, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    move-object v2, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/DataSpec;[B)V

    .line 928
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$302(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    .line 935
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 936
    monitor-exit p0

    return-void

    .line 939
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$500(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 940
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$600(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)V

    .line 943
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$700(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 944
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 945
    monitor-exit p0

    return-void

    .line 948
    :cond_4
    :try_start_3
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object p2

    const-string v1, "Set-Cookie"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 949
    invoke-static {p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$800(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 950
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 951
    monitor-exit p0

    return-void

    .line 954
    :cond_5
    :try_start_4
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->cancel()V

    .line 956
    iget p1, v6, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    if-ne p1, v2, :cond_6

    .line 961
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    .line 962
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    const/4 p3, 0x1

    .line 963
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpMethod(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    const/4 p3, 0x0

    .line 964
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpBody([B)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    .line 965
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1

    goto :goto_0

    .line 967
    :cond_6
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->withUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 971
    :goto_0
    :try_start_5
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$900(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 976
    :try_start_6
    invoke-static {p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$1000(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 977
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$1100(Lorg/chromium/net/UrlRequest$Builder;Ljava/lang/String;)V

    .line 978
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$102(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Lorg/chromium/net/UrlRequest;)Lorg/chromium/net/UrlRequest;

    .line 979
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 980
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 973
    :try_start_7
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$302(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 974
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

    .line 984
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    .line 985
    monitor-exit p0

    return-void

    .line 987
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$1202(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    .line 988
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 989
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

    .line 1002
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$100(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, p2, :cond_0

    .line 1003
    monitor-exit p0

    return-void

    .line 1005
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$1302(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;Z)Z

    .line 1006
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$UrlRequestCallback;->this$0:Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->access$400(Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1007
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
