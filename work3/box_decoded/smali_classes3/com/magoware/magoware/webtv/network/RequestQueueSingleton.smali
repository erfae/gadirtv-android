.class public Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;
.super Ljava/lang/Object;
.source "RequestQueueSingleton.java"


# static fields
.field private static mInstance:Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;


# instance fields
.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;
    .locals 2

    const-class v0, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->mInstance:Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;-><init>()V

    sput-object v1, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->mInstance:Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;

    .line 22
    :cond_0
    sget-object v1, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->mInstance:Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addToRequestQueue(Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "req"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    const/4 v2, 0x0

    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->get()Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/BaseHttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method
