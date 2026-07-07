.class public Lcom/androidnetworking/internal/InternalRunnable;
.super Ljava/lang/Object;
.source "InternalRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final priority:Lcom/androidnetworking/common/Priority;

.field public final request:Lcom/androidnetworking/common/ANRequest;

.field public final sequence:I


# direct methods
.method public constructor <init>(Lcom/androidnetworking/common/ANRequest;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    .line 46
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getSequenceNumber()I

    move-result v0

    iput v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->sequence:I

    .line 47
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->getPriority()Lcom/androidnetworking/common/Priority;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/internal/InternalRunnable;->priority:Lcom/androidnetworking/common/Priority;

    return-void
.end method

.method private deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    .locals 2

    .line 157
    invoke-static {}, Lcom/androidnetworking/core/Core;->getInstance()Lcom/androidnetworking/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/core/Core;->getExecutorSupplier()Lcom/androidnetworking/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/androidnetworking/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/androidnetworking/internal/InternalRunnable$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/androidnetworking/internal/InternalRunnable$1;-><init>(Lcom/androidnetworking/internal/InternalRunnable;Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeDownloadRequest()V
    .locals 4

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0}, Lcom/androidnetworking/internal/InternalNetworking;->performDownloadRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v1, Lcom/androidnetworking/error/ANError;

    invoke-direct {v1}, Lcom/androidnetworking/error/ANError;-><init>()V

    invoke-static {v1}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V

    return-void

    .line 107
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_1

    .line 108
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2, v0}, Lcom/androidnetworking/error/ANError;-><init>(Lokhttp3/Response;)V

    iget-object v3, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    .line 109
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    .line 108
    invoke-static {v2, v3, v0}, Lcom/androidnetworking/utils/Utils;->getErrorForServerResponse(Lcom/androidnetworking/error/ANError;Lcom/androidnetworking/common/ANRequest;I)Lcom/androidnetworking/error/ANError;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V

    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANRequest;->updateDownloadCompletion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2, v0}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V

    :goto_0
    return-void
.end method

.method private executeSimpleRequest()V
    .locals 5

    const/4 v0, 0x0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1}, Lcom/androidnetworking/internal/InternalNetworking;->performSimpleRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2}, Lcom/androidnetworking/error/ANError;-><init>()V

    invoke-static {v2}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0, v1}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-void

    .line 75
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v1}, Lcom/androidnetworking/common/ANRequest;->getResponseAs()Lcom/androidnetworking/common/ResponseType;

    move-result-object v1

    sget-object v2, Lcom/androidnetworking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/androidnetworking/common/ResponseType;

    if-ne v1, v2, :cond_1

    .line 76
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v1, v0}, Lcom/androidnetworking/common/ANRequest;->deliverOkHttpResponse(Lokhttp3/Response;)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_2

    .line 80
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2, v0}, Lcom/androidnetworking/error/ANError;-><init>(Lokhttp3/Response;)V

    iget-object v3, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    .line 81
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4

    .line 80
    invoke-static {v2, v3, v4}, Lcom/androidnetworking/utils/Utils;->getErrorForServerResponse(Lcom/androidnetworking/error/ANError;Lcom/androidnetworking/common/ANRequest;I)Lcom/androidnetworking/error/ANError;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v1, v0}, Lcom/androidnetworking/common/ANRequest;->parseResponse(Lokhttp3/Response;)Lcom/androidnetworking/common/ANResponse;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/androidnetworking/common/ANResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    .line 87
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v1}, Lcom/androidnetworking/common/ANResponse;->getError()Lcom/androidnetworking/error/ANError;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v1, v0}, Lcom/androidnetworking/common/ANResponse;->setOkHttpResponse(Lokhttp3/Response;)V

    .line 91
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v2, v1}, Lcom/androidnetworking/common/ANRequest;->deliverResponse(Lcom/androidnetworking/common/ANResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 93
    :try_start_2
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v3, Lcom/androidnetworking/error/ANError;

    invoke-direct {v3, v1}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :goto_1
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0, v1}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-void

    :goto_2
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0, v2}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    throw v1
.end method

.method private executeUploadRequest()V
    .locals 5

    const/4 v0, 0x0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v1}, Lcom/androidnetworking/internal/InternalNetworking;->performUploadRequest(Lcom/androidnetworking/common/ANRequest;)Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2}, Lcom/androidnetworking/error/ANError;-><init>()V

    invoke-static {v2}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0, v1}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-void

    .line 128
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v1}, Lcom/androidnetworking/common/ANRequest;->getResponseAs()Lcom/androidnetworking/common/ResponseType;

    move-result-object v1

    sget-object v2, Lcom/androidnetworking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/androidnetworking/common/ResponseType;

    if-ne v1, v2, :cond_1

    .line 129
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v1, v0}, Lcom/androidnetworking/common/ANRequest;->deliverOkHttpResponse(Lokhttp3/Response;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_2

    .line 134
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v2, Lcom/androidnetworking/error/ANError;

    invoke-direct {v2, v0}, Lcom/androidnetworking/error/ANError;-><init>(Lokhttp3/Response;)V

    iget-object v3, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    .line 135
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4

    .line 134
    invoke-static {v2, v3, v4}, Lcom/androidnetworking/utils/Utils;->getErrorForServerResponse(Lcom/androidnetworking/error/ANError;Lcom/androidnetworking/common/ANRequest;I)Lcom/androidnetworking/error/ANError;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v1, v0}, Lcom/androidnetworking/common/ANRequest;->parseResponse(Lokhttp3/Response;)Lcom/androidnetworking/common/ANResponse;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/androidnetworking/common/ANResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    .line 140
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v1}, Lcom/androidnetworking/common/ANResponse;->getError()Lcom/androidnetworking/error/ANError;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {v1, v0}, Lcom/androidnetworking/common/ANResponse;->setOkHttpResponse(Lokhttp3/Response;)V

    .line 144
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v2, v1}, Lcom/androidnetworking/common/ANRequest;->deliverResponse(Lcom/androidnetworking/common/ANResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 146
    :try_start_2
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    new-instance v3, Lcom/androidnetworking/error/ANError;

    invoke-direct {v3, v1}, Lcom/androidnetworking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/androidnetworking/utils/Utils;->getErrorForConnection(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/error/ANError;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/androidnetworking/internal/InternalRunnable;->deliverError(Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/error/ANError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :goto_1
    iget-object v1, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0, v1}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    return-void

    :goto_2
    iget-object v2, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-static {v0, v2}, Lcom/androidnetworking/utils/SourceCloseUtil;->close(Lokhttp3/Response;Lcom/androidnetworking/common/ANRequest;)V

    throw v1
.end method


# virtual methods
.method public getPriority()Lcom/androidnetworking/common/Priority;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->priority:Lcom/androidnetworking/common/Priority;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/androidnetworking/internal/InternalRunnable;->request:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANRequest;->getRequestType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/androidnetworking/internal/InternalRunnable;->executeUploadRequest()V

    goto :goto_0

    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/androidnetworking/internal/InternalRunnable;->executeDownloadRequest()V

    goto :goto_0

    .line 54
    :cond_2
    invoke-direct {p0}, Lcom/androidnetworking/internal/InternalRunnable;->executeSimpleRequest()V

    :goto_0
    return-void
.end method
