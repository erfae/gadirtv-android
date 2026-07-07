.class Lcom/magoware/magoware/webtv/network/MakeWebRequests$2;
.super Ljava/lang/Object;
.source "MakeWebRequests.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/network/MakeWebRequests;->getUpgradeDetails(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
        "Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$context"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/MakeWebRequests$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 280
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;",
            ">;>;)V"
        }
    .end annotation

    .line 265
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 266
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 267
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/SystemUpgradeObject;->location:Ljava/lang/String;

    const-string p2, "magoUpdate.apk"

    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/MakeWebRequests$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->downloadApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/MakeWebRequests$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->downloadUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
