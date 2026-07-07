.class public abstract Lcom/magoware/magoware/webtv/api/NetworkBoundResource;
.super Ljava/lang/Object;
.source "NetworkBoundResource.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        "RequestType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\u000f\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\t0\u000bJ\u0014\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\r0\u000bH%J\u0016\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u0002J\u000e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH%J\u0008\u0010\u0012\u001a\u00020\u000fH\u0014J\u001b\u0010\u0013\u001a\u00028\u00012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0015H\u0015\u00a2\u0006\u0002\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00028\u0001H%\u00a2\u0006\u0002\u0010\u0019J\u0016\u0010\u001a\u001a\u00020\u000f2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tH\u0003J\u0017\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00018\u0000H%\u00a2\u0006\u0002\u0010\u001fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/api/NetworkBoundResource;",
        "ResultType",
        "RequestType",
        "",
        "appExecutors",
        "Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V",
        "result",
        "Landroidx/lifecycle/MediatorLiveData;",
        "Lcom/magoware/magoware/webtv/data/Resource;",
        "asLiveData",
        "Landroidx/lifecycle/LiveData;",
        "createCall",
        "Lcom/magoware/magoware/webtv/api/ApiResponse;",
        "fetchFromNetwork",
        "",
        "dbSource",
        "loadFromDb",
        "onFetchFailed",
        "processResponse",
        "response",
        "Lcom/magoware/magoware/webtv/api/ApiSuccessResponse;",
        "(Lcom/magoware/magoware/webtv/api/ApiSuccessResponse;)Ljava/lang/Object;",
        "saveCallResult",
        "item",
        "(Ljava/lang/Object;)V",
        "setValue",
        "newValue",
        "shouldFetch",
        "",
        "data",
        "(Ljava/lang/Object;)Z",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final appExecutors:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

.field private final result:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "TResultType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V
    .locals 2

    const-string v0, "appExecutors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->appExecutors:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    .line 33
    new-instance p1, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    .line 36
    sget-object v0, Lcom/magoware/magoware/webtv/data/Resource;->Companion:Lcom/magoware/magoware/webtv/data/Resource$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/data/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/magoware/magoware/webtv/data/Resource;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->loadFromDb()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;-><init>(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;Landroidx/lifecycle/LiveData;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static final synthetic access$fetchFromNetwork(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;Landroidx/lifecycle/LiveData;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->fetchFromNetwork(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public static final synthetic access$getAppExecutors$p(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;)Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->appExecutors:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    return-object p0
.end method

.method public static final synthetic access$getResult$p(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    return-object p0
.end method

.method public static final synthetic access$setValue(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;Lcom/magoware/magoware/webtv/data/Resource;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->setValue(Lcom/magoware/magoware/webtv/data/Resource;)V

    return-void
.end method

.method private final fetchFromNetwork(Landroidx/lifecycle/LiveData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TResultType;>;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->createCall()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    new-instance v2, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$1;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$1;-><init>(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, p1, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 64
    iget-object v1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    new-instance v2, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;-><init>(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final setValue(Lcom/magoware/magoware/webtv/data/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "+TResultType;>;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/data/Resource;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final asLiveData()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "TResultType;>;>;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->result:Landroidx/lifecycle/MediatorLiveData;

    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LiveData<com.magoware.magoware.webtv.data.Resource<ResultType>>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected abstract createCall()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/api/ApiResponse<",
            "TRequestType;>;>;"
        }
    .end annotation
.end method

.method protected abstract loadFromDb()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TResultType;>;"
        }
    .end annotation
.end method

.method protected onFetchFailed()V
    .locals 0

    return-void
.end method

.method protected processResponse(Lcom/magoware/magoware/webtv/api/ApiSuccessResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/api/ApiSuccessResponse<",
            "TRequestType;>;)TRequestType;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/api/ApiSuccessResponse;->getBody()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract saveCallResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestType;)V"
        }
    .end annotation
.end method

.method protected abstract shouldFetch(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)Z"
        }
    .end annotation
.end method
