.class public final synthetic Lcom/nettv/livestore/remote/GetSeriesDataRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/nettv/livestore/remote/GetSeriesDataRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/remote/GetSeriesDataRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/remote/GetSeriesDataRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/remote/GetSeriesDataRequest;

    invoke-static {v0, p1}, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->$r8$lambda$yNvMSqX-M818M5k4qWSiP5_RZs4(Lcom/nettv/livestore/remote/GetSeriesDataRequest;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public final onResponse(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/remote/GetSeriesDataRequest$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/remote/GetSeriesDataRequest;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/nettv/livestore/remote/GetSeriesDataRequest;->$r8$lambda$dMkG05YQyOysbM7FUjyBe26uJ18(Lcom/nettv/livestore/remote/GetSeriesDataRequest;Lorg/json/JSONObject;)V

    return-void
.end method
