.class public Lcom/nettv/livestore/remote/GetSeriesDataRequest;
.super Ljava/lang/Object;
.source "GetSeriesDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/remote/GetSeriesDataRequest$OnGetResponseListener;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public listener:Lcom/nettv/livestore/remote/GetSeriesDataRequest$OnGetResponseListener;

.field public requestCode:I


# direct methods
.method public static synthetic $r8$lambda$dMkG05YQyOysbM7FUjyBe26uJ18(Lcom/nettv/livestore/remote/GetSeriesDataRequest;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->lambda$getResponse$0(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yNvMSqX-M818M5k4qWSiP5_RZs4(Lcom/nettv/livestore/remote/GetSeriesDataRequest;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->lambda$getResponse$1(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->context:Landroid/content/Context;

    .line 3
    iput p2, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->requestCode:I

    return-void
.end method

.method private synthetic lambda$getResponse$0(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->listener:Lcom/nettv/livestore/remote/GetSeriesDataRequest$OnGetResponseListener;

    iget v1, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->requestCode:I

    invoke-interface {v0, p1, v1}, Lcom/nettv/livestore/remote/GetSeriesDataRequest$OnGetResponseListener;->OnGetResponseResult(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->listener:Lcom/nettv/livestore/remote/GetSeriesDataRequest$OnGetResponseListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->requestCode:I

    invoke-interface {v0, v1, v2}, Lcom/nettv/livestore/remote/GetSeriesDataRequest$OnGetResponseListener;->OnGetResponseResult(Lorg/json/JSONObject;I)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$getResponse$1(Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object p1, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->listener:Lcom/nettv/livestore/remote/GetSeriesDataRequest$OnGetResponseListener;

    iget v0, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->requestCode:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/nettv/livestore/remote/GetSeriesDataRequest$OnGetResponseListener;->OnGetResponseResult(Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method public getResponse(Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v6, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/nettv/livestore/remote/GetSeriesDataRequest$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/nettv/livestore/remote/GetSeriesDataRequest$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/remote/GetSeriesDataRequest;)V

    new-instance v5, Lcom/nettv/livestore/remote/GetSeriesDataRequest$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/nettv/livestore/remote/GetSeriesDataRequest$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/remote/GetSeriesDataRequest;)V

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const/16 p1, 0x4e20

    .line 2
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v6, v0}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/nettv/livestore/remote/VolleySingleton;->getInstance(Landroid/content/Context;)Lcom/nettv/livestore/remote/VolleySingleton;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/nettv/livestore/remote/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object p1, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->listener:Lcom/nettv/livestore/remote/GetSeriesDataRequest$OnGetResponseListener;

    const/4 v0, 0x0

    iget v1, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->requestCode:I

    invoke-interface {p1, v0, v1}, Lcom/nettv/livestore/remote/GetSeriesDataRequest$OnGetResponseListener;->OnGetResponseResult(Lorg/json/JSONObject;I)V

    :goto_0
    return-void
.end method

.method public setOnGetResponseListener(Lcom/nettv/livestore/remote/GetSeriesDataRequest$OnGetResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->listener:Lcom/nettv/livestore/remote/GetSeriesDataRequest$OnGetResponseListener;

    return-void
.end method
