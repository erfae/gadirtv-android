.class public abstract Lcom/nettv/livestore/net/NetworkTask;
.super Landroid/os/AsyncTask;
.source "NetworkTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/net/NetworkTask$OnNetworkUnavailableListener;,
        Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;,
        Lcom/nettv/livestore/net/NetworkTask$OnIOExceptionListener;,
        Lcom/nettv/livestore/net/NetworkTask$OnJSONExceptionListener;,
        Lcom/nettv/livestore/net/NetworkTask$OnClientProtocolExceptionListener;,
        Lcom/nettv/livestore/net/NetworkTask$OnProgressListener;,
        Lcom/nettv/livestore/net/NetworkTask$OnCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private clientProtocolException:Lorg/apache/http/client/ClientProtocolException;

.field private clientProtocolExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnClientProtocolExceptionListener;

.field private completeListener:Lcom/nettv/livestore/net/NetworkTask$OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nettv/livestore/net/NetworkTask$OnCompleteListener<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;

.field private exceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;

.field private genericExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;

.field private ioException:Ljava/io/IOException;

.field private ioExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnIOExceptionListener;

.field private isAborted:Z

.field private isComplete:Z

.field private jsonException:Lorg/json/JSONException;

.field private jsonExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnJSONExceptionListener;

.field private networkUnavailableListener:Lcom/nettv/livestore/net/NetworkTask$OnNetworkUnavailableListener;

.field private progressListener:Lcom/nettv/livestore/net/NetworkTask$OnProgressListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/nettv/livestore/net/NetworkTask;->isComplete:Z

    .line 3
    iput-boolean v0, p0, Lcom/nettv/livestore/net/NetworkTask;->isAborted:Z

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/nettv/livestore/net/NetworkTask;->isAborted:Z

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method public final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/nettv/livestore/net/NetworkTask;->doNetworkAction()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    iput-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->exception:Ljava/lang/Exception;

    return-object v0

    :catch_1
    move-exception p1

    .line 4
    iput-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->ioException:Ljava/io/IOException;

    return-object v0

    :catch_2
    move-exception p1

    .line 5
    iput-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->jsonException:Lorg/json/JSONException;

    return-object v0

    :catch_3
    move-exception p1

    .line 6
    iput-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->clientProtocolException:Lorg/apache/http/client/ClientProtocolException;

    return-object v0
.end method

.method public abstract doNetworkAction()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public execute()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public isAborted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nettv/livestore/net/NetworkTask;->isAborted:Z

    return v0
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nettv/livestore/net/NetworkTask;->isComplete:Z

    return v0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nettv/livestore/net/NetworkTask;->isComplete:Z

    .line 3
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/nettv/livestore/net/NetworkTask;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/net/NetworkTask;->clientProtocolException:Lorg/apache/http/client/ClientProtocolException;

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->clientProtocolExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnClientProtocolExceptionListener;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1, v0}, Lcom/nettv/livestore/net/NetworkTask$OnClientProtocolExceptionListener;->onClientProtocolException(Lorg/apache/http/client/ClientProtocolException;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->genericExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;

    if-eqz p1, :cond_9

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/net/NetworkTask;->clientProtocolException:Lorg/apache/http/client/ClientProtocolException;

    invoke-interface {p1, v0}, Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;->onException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/nettv/livestore/net/NetworkTask;->jsonException:Lorg/json/JSONException;

    if-eqz v0, :cond_4

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->ioExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnIOExceptionListener;

    if-eqz p1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/net/NetworkTask;->ioException:Ljava/io/IOException;

    invoke-interface {p1, v0}, Lcom/nettv/livestore/net/NetworkTask$OnIOExceptionListener;->onIOException(Ljava/io/IOException;)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->genericExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;

    if-eqz p1, :cond_9

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/net/NetworkTask;->ioException:Ljava/io/IOException;

    invoke-interface {p1, v0}, Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;->onException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/nettv/livestore/net/NetworkTask;->ioException:Ljava/io/IOException;

    if-eqz v0, :cond_6

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->ioExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnIOExceptionListener;

    if-eqz p1, :cond_5

    .line 16
    invoke-interface {p1, v0}, Lcom/nettv/livestore/net/NetworkTask$OnIOExceptionListener;->onIOException(Ljava/io/IOException;)V

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->genericExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;

    if-eqz p1, :cond_9

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/net/NetworkTask;->ioException:Ljava/io/IOException;

    invoke-interface {p1, v0}, Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;->onException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/nettv/livestore/net/NetworkTask;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_8

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->exceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;

    if-eqz p1, :cond_7

    .line 21
    invoke-interface {p1, v0}, Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;->onException(Ljava/lang/Exception;)V

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->genericExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;

    if-eqz p1, :cond_9

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/net/NetworkTask;->exception:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;->onException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/nettv/livestore/net/NetworkTask;->completeListener:Lcom/nettv/livestore/net/NetworkTask$OnCompleteListener;

    if-eqz v0, :cond_9

    .line 25
    invoke-interface {v0, p1}, Lcom/nettv/livestore/net/NetworkTask$OnCompleteListener;->onComplete(Ljava/lang/Object;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/nettv/livestore/net/NetworkTask;->isComplete:Z

    .line 3
    iput-boolean v0, p0, Lcom/nettv/livestore/net/NetworkTask;->isAborted:Z

    .line 4
    invoke-static {}, Lcom/nettv/livestore/apps/LTVApp;->getInstance()Lcom/nettv/livestore/apps/LTVApp;

    move-result-object v0

    invoke-static {v0}, Lcom/nettv/livestore/net/NetworkUtil;->hasInternetAccess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/net/NetworkTask;->networkUnavailableListener:Lcom/nettv/livestore/net/NetworkTask$OnNetworkUnavailableListener;

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Landroid/accounts/NetworkErrorException;

    const-string v2, "Not aviable connection"

    invoke-direct {v1, v2}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, v1}, Lcom/nettv/livestore/net/NetworkTask$OnNetworkUnavailableListener;->onNetworkException(Landroid/accounts/NetworkErrorException;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/nettv/livestore/net/NetworkTask;->abort()V

    :cond_1
    return-void
.end method

.method public final varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/net/NetworkTask;->progressListener:Lcom/nettv/livestore/net/NetworkTask$OnProgressListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/nettv/livestore/net/NetworkTask$OnProgressListener;->onProgressListener(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnClientProtocolExceptionListener(Lcom/nettv/livestore/net/NetworkTask$OnClientProtocolExceptionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->clientProtocolExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnClientProtocolExceptionListener;

    return-void
.end method

.method public setOnCompleteListener(Lcom/nettv/livestore/net/NetworkTask$OnCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nettv/livestore/net/NetworkTask$OnCompleteListener<",
            "TResult;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->completeListener:Lcom/nettv/livestore/net/NetworkTask$OnCompleteListener;

    return-void
.end method

.method public setOnExceptionListener(Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->exceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;

    return-void
.end method

.method public setOnGenericExceptionListener(Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->genericExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnExceptionListener;

    return-void
.end method

.method public setOnIOExceptionListener(Lcom/nettv/livestore/net/NetworkTask$OnIOExceptionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->ioExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnIOExceptionListener;

    return-void
.end method

.method public setOnJSONExceptionListener(Lcom/nettv/livestore/net/NetworkTask$OnJSONExceptionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->jsonExceptionListener:Lcom/nettv/livestore/net/NetworkTask$OnJSONExceptionListener;

    return-void
.end method

.method public setOnNetworkUnavailableListener(Lcom/nettv/livestore/net/NetworkTask$OnNetworkUnavailableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->networkUnavailableListener:Lcom/nettv/livestore/net/NetworkTask$OnNetworkUnavailableListener;

    return-void
.end method

.method public setProgressListener(Lcom/nettv/livestore/net/NetworkTask$OnProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/net/NetworkTask;->progressListener:Lcom/nettv/livestore/net/NetworkTask$OnProgressListener;

    return-void
.end method
