.class public Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;
.super Ljava/lang/Object;
.source "GetSubtitleLoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public listener:Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;

.field public requestCode:I


# direct methods
.method public static synthetic $r8$lambda$2mgey-Isav58n9Nk_4Nk2fhSQ-A(Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->lambda$getResponse$0(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ux1UYSalDCLvSKFJ-ER_yoy3BOA(Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->lambda$getResponse$1(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->context:Landroid/content/Context;

    .line 3
    iput p2, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->requestCode:I

    return-void
.end method

.method private synthetic lambda$getResponse$0(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->listener:Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;

    iget v1, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->requestCode:I

    invoke-interface {v0, p1, v1}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;->OnGetLinkModelResult(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->listener:Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->requestCode:I

    invoke-interface {v0, v1, v2}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;->OnGetLinkModelResult(Lorg/json/JSONObject;I)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$getResponse$1(Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object p1, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->listener:Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;

    iget v0, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->requestCode:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;->OnGetLinkModelResult(Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method public getResponse(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v7, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$1;

    new-instance v4, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;)V

    new-instance v5, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;)V

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$1;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    const/16 p1, 0x4e20

    .line 3
    new-instance p2, Lcom/android/volley/DefaultRetryPolicy;

    const/4 p3, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, p1, p3, v1}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v7, p2}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 4
    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object p1, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->listener:Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;

    const/4 p2, 0x0

    iget p3, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->requestCode:I

    invoke-interface {p1, p2, p3}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;->OnGetLinkModelResult(Lorg/json/JSONObject;I)V

    :goto_0
    return-void
.end method

.method public setOnGetLinkModelListener(Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->listener:Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;

    return-void
.end method
