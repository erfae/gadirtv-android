.class public final synthetic Lcom/nettv/livestore/remote/GetSubtitleLinkRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/nettv/livestore/remote/GetSubtitleLinkRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/remote/GetSubtitleLinkRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/remote/GetSubtitleLinkRequest$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/remote/GetSubtitleLinkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/remote/GetSubtitleLinkRequest$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/remote/GetSubtitleLinkRequest;

    invoke-static {v0, p1}, Lcom/nettv/livestore/remote/GetSubtitleLinkRequest;->$r8$lambda$TH7pgOb3V5Bue1gQzHgRnWpS7yQ(Lcom/nettv/livestore/remote/GetSubtitleLinkRequest;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public final onResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/remote/GetSubtitleLinkRequest$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/remote/GetSubtitleLinkRequest;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/nettv/livestore/remote/GetSubtitleLinkRequest;->$r8$lambda$ZgaVig08mk1kIZrkhtUd8wFShjc(Lcom/nettv/livestore/remote/GetSubtitleLinkRequest;Lorg/json/JSONObject;)V

    return-void
.end method
