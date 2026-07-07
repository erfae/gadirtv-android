.class public Lcom/nettv/livestore/remote/GetDataRequest;
.super Ljava/lang/Object;
.source "GetDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public listener:Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;

.field public requestCode:I


# direct methods
.method public static synthetic $r8$lambda$MmQNRz4GIVhXyqthiIi3xdnmsNI(Lcom/nettv/livestore/remote/GetDataRequest;Lcom/android/volley/VolleyError;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/remote/GetDataRequest;->lambda$getResponse$1(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i0VnzOVp-xAl7whzhj5a0Y6ZNRk(Lcom/nettv/livestore/remote/GetDataRequest;Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/remote/GetDataRequest;->lambda$getResponse$0(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/remote/GetDataRequest;->context:Landroid/content/Context;

    .line 3
    iput p2, p0, Lcom/nettv/livestore/remote/GetDataRequest;->requestCode:I

    return-void
.end method

.method private synthetic lambda$getResponse$0(Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nettv/livestore/remote/GetDataRequest;->listener:Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;

    iget v1, p0, Lcom/nettv/livestore/remote/GetDataRequest;->requestCode:I

    invoke-interface {v0, p1, v1}, Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;->OnGetResponseResult(Lorg/json/JSONObject;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_14

    :catch_8
    move-exception p1

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/remote/GetDataRequest;->listener:Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nettv/livestore/remote/GetDataRequest;->requestCode:I

    invoke-interface {v0, v1, v2}, Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;->OnGetResponseResult(Lorg/json/JSONObject;I)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_14
    return-void
.end method

.method private synthetic lambda$getResponse$1(Lcom/android/volley/VolleyError;)V
    .registers 4

    iget-object p1, p0, Lcom/nettv/livestore/remote/GetDataRequest;->listener:Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;

    iget v0, p0, Lcom/nettv/livestore/remote/GetDataRequest;->requestCode:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;->OnGetResponseResult(Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method public getResponse(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/remote/GetDataRequest;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    .line 2
    :try_start_5
    new-instance v0, Lcom/nettv/livestore/remote/GetDataRequest$1;

    new-instance v1, Lcom/nettv/livestore/remote/GetDataRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/remote/GetDataRequest$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/remote/GetDataRequest;)V

    new-instance v2, Lcom/nettv/livestore/remote/GetDataRequest$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/nettv/livestore/remote/GetDataRequest$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/remote/GetDataRequest;)V

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/nettv/livestore/remote/GetDataRequest$1;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const/16 p1, 0x4e20

    .line 3
    new-instance p2, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, p1, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, p2}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/remote/GetDataRequest;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/nettv/livestore/remote/VolleySingleton;->getInstance(Landroid/content/Context;)Lcom/nettv/livestore/remote/VolleySingleton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/remote/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    goto :goto_33

    .line 5
    :catch_2b
    iget-object p1, p0, Lcom/nettv/livestore/remote/GetDataRequest;->listener:Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;

    const/4 p2, 0x0

    iget v0, p0, Lcom/nettv/livestore/remote/GetDataRequest;->requestCode:I

    invoke-interface {p1, p2, v0}, Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;->OnGetResponseResult(Lorg/json/JSONObject;I)V

    :goto_33
    return-void
.end method

.method public setOnGetResponseListener(Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/remote/GetDataRequest;->listener:Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;

    return-void
.end method
