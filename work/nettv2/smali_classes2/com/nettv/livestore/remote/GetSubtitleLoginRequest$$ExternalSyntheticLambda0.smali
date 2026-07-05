.class public final synthetic Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;

    invoke-static {v0, p1}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->$r8$lambda$ux1UYSalDCLvSKFJ-ER_yoy3BOA(Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public final onResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;->$r8$lambda$2mgey-Isav58n9Nk_4Nk2fhSQ-A(Lcom/nettv/livestore/remote/GetSubtitleLoginRequest;Lorg/json/JSONObject;)V

    return-void
.end method
