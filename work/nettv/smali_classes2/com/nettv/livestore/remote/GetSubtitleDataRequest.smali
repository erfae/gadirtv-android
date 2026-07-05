.class public Lcom/nettv/livestore/remote/GetSubtitleDataRequest;
.super Ljava/lang/Object;
.source "GetSubtitleDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/remote/GetSubtitleDataRequest$OnGetResponseListener;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public listener:Lcom/nettv/livestore/remote/GetSubtitleDataRequest$OnGetResponseListener;

.field public requestCode:I


# direct methods
.method public static synthetic $r8$lambda$LIW1oDdyDf9Gv7At_uOsgM4R7Z0(Lcom/nettv/livestore/remote/GetSubtitleDataRequest;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->lambda$getResponse$0(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nzr74ezkICm0fp_RxEp5LJYMn_Q(Lcom/nettv/livestore/remote/GetSubtitleDataRequest;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->lambda$getResponse$1(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->context:Landroid/content/Context;

    .line 3
    iput p2, p0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->requestCode:I

    return-void
.end method

.method private synthetic lambda$getResponse$0(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->listener:Lcom/nettv/livestore/remote/GetSubtitleDataRequest$OnGetResponseListener;

    iget v1, p0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->requestCode:I

    invoke-interface {v0, p1, v1}, Lcom/nettv/livestore/remote/GetSubtitleDataRequest$OnGetResponseListener;->OnGetResponseResult(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->listener:Lcom/nettv/livestore/remote/GetSubtitleDataRequest$OnGetResponseListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->requestCode:I

    invoke-interface {v0, v1, v2}, Lcom/nettv/livestore/remote/GetSubtitleDataRequest$OnGetResponseListener;->OnGetResponseResult(Lorg/json/JSONObject;I)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$getResponse$1(Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object p1, p0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->listener:Lcom/nettv/livestore/remote/GetSubtitleDataRequest$OnGetResponseListener;

    iget v0, p0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->requestCode:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/nettv/livestore/remote/GetSubtitleDataRequest$OnGetResponseListener;->OnGetResponseResult(Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method public getResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    .line 2
    :try_start_0
    new-instance v0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest$1;

    new-instance v1, Lcom/nettv/livestore/remote/GetSubtitleDataRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/remote/GetSubtitleDataRequest$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/remote/GetSubtitleDataRequest;)V

    new-instance v2, Lcom/nettv/livestore/remote/GetSubtitleDataRequest$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/nettv/livestore/remote/GetSubtitleDataRequest$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/remote/GetSubtitleDataRequest;)V

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/nettv/livestore/remote/GetSubtitleDataRequest$1;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    const/16 p1, 0x4e20

    .line 3
    new-instance p2, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, p1, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, p2}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/nettv/livestore/remote/VolleySingleton;->getInstance(Landroid/content/Context;)Lcom/nettv/livestore/remote/VolleySingleton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/remote/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object p1, p0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->listener:Lcom/nettv/livestore/remote/GetSubtitleDataRequest$OnGetResponseListener;

    const/4 p2, 0x0

    iget v0, p0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->requestCode:I

    invoke-interface {p1, p2, v0}, Lcom/nettv/livestore/remote/GetSubtitleDataRequest$OnGetResponseListener;->OnGetResponseResult(Lorg/json/JSONObject;I)V

    :goto_0
    return-void
.end method

.method public setOnGetResponseListener(Lcom/nettv/livestore/remote/GetSubtitleDataRequest$OnGetResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->listener:Lcom/nettv/livestore/remote/GetSubtitleDataRequest$OnGetResponseListener;

    return-void
.end method
