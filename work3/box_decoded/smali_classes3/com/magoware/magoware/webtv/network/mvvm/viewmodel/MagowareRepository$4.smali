.class Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$4;
.super Ljava/lang/Object;
.source "MagowareRepository.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getVodTvShowDetails(I)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;",
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

    .line 202
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$4;->this$0:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$4;->val$data:Landroidx/lifecycle/MutableLiveData;

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
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 212
    iget-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$4;->val$data:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->setSuccessful(Z)Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->setErrorMessage(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

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
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;",
            ">;)V"
        }
    .end annotation

    .line 205
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$4;->val$data:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->setSuccessful(Z)Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
