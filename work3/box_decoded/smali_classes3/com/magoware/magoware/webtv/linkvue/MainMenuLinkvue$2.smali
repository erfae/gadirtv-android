.class Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$2;
.super Lcom/android/volley/toolbox/StringRequest;
.source "MainMenuLinkvue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->getMenuLayer1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "method",
            "url",
            "listener",
            "errorListener"
        }
    .end annotation

    .line 318
    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$2;->this$0:Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    .line 322
    invoke-static {v1}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->httpRequestParameters([Ljava/lang/Long;)Ljava/util/HashMap;

    move-result-object v1

    .line 325
    :try_start_0
    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 327
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v1, ""

    :goto_0
    const-string v2, "auth"

    .line 329
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$2;->this$0:Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;

    iget v1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$2;->this$0:Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->access$200(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->access$102(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 337
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/StringRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
