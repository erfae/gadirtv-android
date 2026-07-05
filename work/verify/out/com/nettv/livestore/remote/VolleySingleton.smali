.class public Lcom/nettv/livestore/remote/VolleySingleton;
.super Ljava/lang/Object;
.source "VolleySingleton.java"


# static fields
.field private static mCtx:Landroid/content/Context;

.field private static mInstance:Lcom/nettv/livestore/remote/VolleySingleton;


# instance fields
.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sput-object p1, Lcom/nettv/livestore/remote/VolleySingleton;->mCtx:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/nettv/livestore/remote/VolleySingleton;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/remote/VolleySingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/nettv/livestore/remote/VolleySingleton;
    .registers 3

    const-class v0, Lcom/nettv/livestore/remote/VolleySingleton;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/nettv/livestore/remote/VolleySingleton;->mInstance:Lcom/nettv/livestore/remote/VolleySingleton;

    if-nez v1, :cond_e

    .line 2
    new-instance v1, Lcom/nettv/livestore/remote/VolleySingleton;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/remote/VolleySingleton;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/nettv/livestore/remote/VolleySingleton;->mInstance:Lcom/nettv/livestore/remote/VolleySingleton;

    .line 3
    :cond_e
    sget-object p0, Lcom/nettv/livestore/remote/VolleySingleton;->mInstance:Lcom/nettv/livestore/remote/VolleySingleton;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addToRequestQueue(Lcom/android/volley/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nettv/livestore/remote/VolleySingleton;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/remote/VolleySingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_10

    .line 2
    sget-object v0, Lcom/nettv/livestore/remote/VolleySingleton;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/remote/VolleySingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 3
    :cond_10
    iget-object v0, p0, Lcom/nettv/livestore/remote/VolleySingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method
