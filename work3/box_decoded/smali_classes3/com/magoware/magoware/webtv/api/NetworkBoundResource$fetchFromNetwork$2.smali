.class final Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;
.super Ljava/lang/Object;
.source "NetworkBoundResource.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->fetchFromNetwork(Landroidx/lifecycle/LiveData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/magoware/magoware/webtv/api/ApiResponse<",
        "TRequestType;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u001a\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u0002H\u0003 \u0006*\n\u0012\u0004\u0012\u0002H\u0003\u0018\u00010\u00050\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "ResultType",
        "RequestType",
        "response",
        "Lcom/magoware/magoware/webtv/api/ApiResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $apiResponse:Landroidx/lifecycle/LiveData;

.field final synthetic $dbSource:Landroidx/lifecycle/LiveData;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->$apiResponse:Landroidx/lifecycle/LiveData;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->$dbSource:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/magoware/magoware/webtv/api/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/api/ApiResponse<",
            "TRequestType;>;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->access$getResult$p(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->$apiResponse:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 66
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->access$getResult$p(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->$dbSource:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 68
    instance-of v0, p1, Lcom/magoware/magoware/webtv/api/ApiSuccessResponse;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->access$getAppExecutors$p(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;)Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$1;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$1;-><init>(Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;Lcom/magoware/magoware/webtv/api/ApiResponse;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 81
    :cond_0
    instance-of v0, p1, Lcom/magoware/magoware/webtv/api/ApiEmptyResponse;

    if-eqz v0, :cond_1

    .line 82
    iget-object p1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->access$getAppExecutors$p(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;)Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$2;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$2;-><init>(Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 89
    :cond_1
    instance-of v0, p1, Lcom/magoware/magoware/webtv/api/ApiErrorResponse;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->onFetchFailed()V

    .line 91
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->access$getResult$p(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->$dbSource:Landroidx/lifecycle/LiveData;

    new-instance v2, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$3;

    invoke-direct {v2, p0, p1}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$3;-><init>(Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;Lcom/magoware/magoware/webtv/api/ApiResponse;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/magoware/magoware/webtv/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->onChanged(Lcom/magoware/magoware/webtv/api/ApiResponse;)V

    return-void
.end method
