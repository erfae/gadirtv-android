.class Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$76;
.super Ljava/lang/Object;
.source "MagowareRepository.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getPallyconToken()Landroidx/lifecycle/LiveData;
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
        "Lcom/magoware/magoware/webtv/network/mvvm/models/PallyToken;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1757
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$76;->this$0:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

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
            "Lcom/magoware/magoware/webtv/network/mvvm/models/PallyToken;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
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
            "Lcom/magoware/magoware/webtv/network/mvvm/models/PallyToken;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/PallyToken;",
            ">;>;)V"
        }
    .end annotation

    .line 1760
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1761
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 1762
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 1763
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/PallyToken;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/PallyToken;->getToken()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/magoware/magoware/webtv/global/Global;->pallyTok:Ljava/lang/String;

    .line 1764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/magoware/magoware/webtv/global/Global;->updatedTok:J

    :cond_0
    return-void
.end method
