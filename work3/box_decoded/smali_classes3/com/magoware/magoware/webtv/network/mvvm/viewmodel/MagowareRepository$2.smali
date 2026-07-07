.class Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$2;
.super Ljava/lang/Object;
.source "MagowareRepository.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getVodCategories(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

.field final synthetic val$data:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$data"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$2;->this$0:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$2;->val$data:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
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
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 170
    iget-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$2;->val$data:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$2;->this$0:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    invoke-static {v1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->access$100(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 171
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$2;->val$data:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->setSuccessful(Z)Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 164
    :cond_0
    new-instance p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;

    invoke-virtual {p2}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$2;->this$0:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->access$200(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-direct {p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;-><init>(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
