.class public final Lcom/androidnetworking/internal/SynchronousCall;
.super Ljava/lang/Object;
.source "SynchronousCall.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidnetworking/common/ANRequest;",
            ")",
            "Lcom/androidnetworking/common/ANResponse<",
            "TT;>;"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getRequestType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 55
    new-instance p0, Lcom/androidnetworking/common/ANResponse;

    new-instance v0, Lcom/androidnetworking/error/ANError;

    invoke-direct {v0}, Lcom/androidnetworking/error/ANError;-><init>()V

    invoke-direct {p0, v0}, Lcom/androidnetworking/common/ANResponse;-><init>(Lcom/androidnetworking/error/ANError;)V

    return-object p0

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/androidnetworking/internal/SynchronousCall;->executeUploadRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p0

    return-object p0

    .line 51
    :cond_1
    invoke-static {p0}, Lcom/androidnetworking/internal/SynchronousCall;->executeDownloadRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p0

    return-object p0

    .line 49
    :cond_2
    invoke-static {p0}, Lcom/androidnetworking/internal/SynchronousCall;->executeSimpleRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;

    move-result-object p0

    return-object p0
.end method

.method private static executeDownloadRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidnetworking/common/ANRequest;",
            ")",
            "Lcom/androidnetworking/common/ANResponse<",
            "TT;>;"
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-static {p0}, Lcom/androidnetworking/internal/InternalNetworking;->performDownloadRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    new-instance p0, Lcom/androidnetworking/common/ANResponse;

    new-instance v0, Lcom/androidnetworking/error/ANError;

    invoke-direct {v0}, Lcom/androidnetworking/error/ANError;-><init>()V

    invoke-static {v0}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidnetworking/common/ANResponse;-><init>(Lcom/androidnetworking/error/ANError;)V

    return-object p0

    .line 96
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_1

    .line 97
    new-instance v1, Lcom/androidnetworking/common/ANResponse;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2, v0}, Lcom/androidnetworking/error/ANError;-><init>(Lokhttp3/Response;)V

    .line 98
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    .line 97
    invoke-static {v2, p0, v3}, Lcom/androidnetworking/utils/Utils;->getErrorForServerResponse(Lcom/androidnetworking/error/ANError;Lcom/androidnetworking/common/ANRequest;I)Lcom/androidnetworking/error/ANError;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/androidnetworking/common/ANResponse;-><init>(Lcom/androidnetworking/error/ANError;)V

    .line 99
    invoke-virtual {v1, v0}, Lcom/androidnetworking/common/ANResponse;->setOkHttpResponse(Lokhttp3/Response;)V

    return-object v1

    .line 102
    :cond_1
    new-instance p0, Lcom/androidnetworking/common/ANResponse;

    const-string v1, "success"

    invoke-direct {p0, v1}, Lcom/androidnetworking/common/ANResponse;-><init>(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/androidnetworking/common/ANResponse;->setOkHttpResponse(Lokhttp3/Response;)V
    :try_end_0
    .catch Lcom/androidnetworking/error/ANError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 108
    new-instance v0, Lcom/androidnetworking/common/ANResponse;

    invoke-static {p0}, Lcom/androidnetworking/utils/Utils;->getErrorForNetworkOnMainThreadOrConnection(Ljava/lang/Exception;)Lcom/androidnetworking/error/ANError;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANResponse;-><init>(Lcom/androidnetworking/error/ANError;)V

    return-object v0

    :catch_1
    move-exception p0

    .line 106
    new-instance v0, Lcom/androidnetworking/common/ANResponse;

    new-instance v1, Lcom/androidnetworking/error/ANError;

    invoke-direct {v1, p0}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANResponse;-><init>(Lcom/androidnetworking/error/ANError;)V

    return-object v0
.end method

.method private static executeSimpleRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidnetworking/common/ANRequest;",
            ")",
            "Lcom/androidnetworking/common/ANResponse<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    :try_start_0
    invoke-static {p0}, Lcom/androidnetworking/internal/InternalNetworking;->performSimpleRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    new-instance v1, Lcom/androidnetworking/common/ANResponse;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2}, Lcom/androidnetworking/error/ANError;-><init>()V

    invoke-static {v2}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/androidnetworking/common/ANResponse;-><init>(Lcom/androidnetworking/error/ANError;)V
    :try_end_0
    .catch Lcom/androidnetworking/error/ANError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-static {v0, p0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-object v1

    .line 66
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getResponseAs()Lcom/androidnetworking/common/ResponseType;

    move-result-object v1

    sget-object v2, Lcom/androidnetworking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/androidnetworking/common/ResponseType;

    if-ne v1, v2, :cond_1

    .line 67
    new-instance v1, Lcom/androidnetworking/common/ANResponse;

    invoke-direct {v1, v0}, Lcom/androidnetworking/common/ANResponse;-><init>(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/androidnetworking/common/ANResponse;->setOkHttpResponse(Lokhttp3/Response;)V
    :try_end_1
    .catch Lcom/androidnetworking/error/ANError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-static {v0, p0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-object v1

    .line 71
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_2

    .line 72
    new-instance v1, Lcom/androidnetworking/common/ANResponse;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2, v0}, Lcom/androidnetworking/error/ANError;-><init>(Lokhttp3/Response;)V

    .line 73
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    .line 72
    invoke-static {v2, p0, v3}, Lcom/androidnetworking/utils/Utils;->getErrorForServerResponse(Lcom/androidnetworking/error/ANError;Lcom/androidnetworking/common/ANRequest;I)Lcom/androidnetworking/error/ANError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/androidnetworking/common/ANResponse;-><init>(Lcom/androidnetworking/error/ANError;)V

    .line 74
    invoke-virtual {v1, v0}, Lcom/androidnetworking/common/ANResponse;->setOkHttpResponse(Lokhttp3/Response;)V
    :try_end_2
    .catch Lcom/androidnetworking/error/ANError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    invoke-static {v0, p0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-object v1

    .line 77
    :cond_2
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/androidnetworking/common/ANRequest;->parseResponse(Lokhttp3/Response;)Lcom/androidnetworking/common/ANResponse;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Lcom/androidnetworking/common/ANResponse;->setOkHttpResponse(Lokhttp3/Response;)V
    :try_end_3
    .catch Lcom/androidnetworking/error/ANError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    invoke-static {v0, p0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 83
    :try_start_4
    new-instance v2, Lcom/androidnetworking/common/ANResponse;

    invoke-static {v1}, Lcom/androidnetworking/utils/Utils;->getErrorForNetworkOnMainThreadOrConnection(Ljava/lang/Exception;)Lcom/androidnetworking/error/ANError;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/androidnetworking/common/ANResponse;-><init>(Lcom/androidnetworking/error/ANError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    invoke-static {v0, p0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-object v2

    :catch_1
    move-exception v1

    .line 81
    :try_start_5
    new-instance v2, Lcom/androidnetworking/common/ANResponse;

    new-instance v3, Lcom/androidnetworking/error/ANError;

    invoke-direct {v3, v1}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/androidnetworking/common/ANResponse;-><init>(Lcom/androidnetworking/error/ANError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    invoke-static {v0, p0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-object v2

    :goto_0
    invoke-static {v0, p0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    throw v1
.end method

.method private static executeUploadRequest(Lcom/androidnetworking/common/ANRequest;)Lcom/androidnetworking/common/ANResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidnetworking/common/ANRequest;",
            ")",
            "Lcom/androidnetworking/common/ANResponse<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-static {p0}, Lcom/androidnetworking/internal/InternalNetworking;->performUploadRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    new-instance v1, Lcom/androidnetworking/common/ANResponse;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2}, Lcom/androidnetworking/error/ANError;-><init>()V

    invoke-static {v2}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/androidnetworking/common/ANResponse;-><init>(Lcom/androidnetworking/error/ANError;)V
    :try_end_0
    .catch Lcom/androidnetworking/error/ANError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-static {v0, p0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-object v1

    .line 121
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->getResponseAs()Lcom/androidnetworking/common/ResponseType;

    move-result-object v1

    sget-object v2, Lcom/androidnetworking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/androidnetworking/common/ResponseType;

    if-ne v1, v2, :cond_1

    .line 122
    new-instance v1, Lcom/androidnetworking/common/ANResponse;

    invoke-direct {v1, v0}, Lcom/androidnetworking/common/ANResponse;-><init>(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v1, v0}, Lcom/androidnetworking/common/ANResponse;->setOkHttpResponse(Lokhttp3/Response;)V
    :try_end_1
    .catch Lcom/androidnetworking/error/ANError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    invoke-static {v0, p0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-object v1

    .line 126
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_2

    .line 127
    new-instance v1, Lcom/androidnetworking/common/ANResponse;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2, v0}, Lcom/androidnetworking/error/ANError;-><init>(Lokhttp3/Response;)V

    .line 128
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    .line 127
    invoke-static {v2, p0, v3}, Lcom/androidnetworking/utils/Utils;->getErrorForServerResponse(Lcom/androidnetworking/error/ANError;Lcom/androidnetworking/common/ANRequest;I)Lcom/androidnetworking/error/ANError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/androidnetworking/common/ANResponse;-><init>(Lcom/androidnetworking/error/ANError;)V

    .line 129
    invoke-virtual {v1, v0}, Lcom/androidnetworking/common/ANResponse;->setOkHttpResponse(Lokhttp3/Response;)V
    :try_end_2
    .catch Lcom/androidnetworking/error/ANError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    invoke-static {v0, p0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-object v1

    .line 132
    :cond_2
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/androidnetworking/common/ANRequest;->parseResponse(Lokhttp3/Response;)Lcom/androidnetworking/common/ANResponse;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v0}, Lcom/androidnetworking/common/ANResponse;->setOkHttpResponse(Lokhttp3/Response;)V
    :try_end_3
    .catch Lcom/androidnetworking/error/ANError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    invoke-static {v0, p0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 138
    :try_start_4
    new-instance v2, Lcom/androidnetworking/common/ANResponse;

    invoke-static {v1}, Lcom/androidnetworking/utils/Utils;->getErrorForNetworkOnMainThreadOrConnection(Ljava/lang/Exception;)Lcom/androidnetworking/error/ANError;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/androidnetworking/common/ANResponse;-><init>(Lcom/androidnetworking/error/ANError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    invoke-static {v0, p0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-object v2

    :catch_1
    move-exception v1

    .line 136
    :try_start_5
    new-instance v2, Lcom/androidnetworking/common/ANResponse;

    invoke-static {v1}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/androidnetworking/common/ANResponse;-><init>(Lcom/androidnetworking/error/ANError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    invoke-static {v0, p0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-object v2

    :goto_0
    invoke-static {v0, p0}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    throw v1
.end method
