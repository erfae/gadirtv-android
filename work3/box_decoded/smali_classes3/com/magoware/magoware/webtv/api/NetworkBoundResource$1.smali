.class final Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;
.super Ljava/lang/Object;
.source "NetworkBoundResource.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/api/NetworkBoundResource;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V
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
        "TResultType;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u000e\u0010\u0004\u001a\n \u0005*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "ResultType",
        "RequestType",
        "data",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Object;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $dbSource:Landroidx/lifecycle/LiveData;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;Landroidx/lifecycle/LiveData;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;->$dbSource:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->access$getResult$p(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;->$dbSource:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 41
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->shouldFetch(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;->$dbSource:Landroidx/lifecycle/LiveData;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->access$fetchFromNetwork(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;Landroidx/lifecycle/LiveData;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->access$getResult$p(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;->$dbSource:Landroidx/lifecycle/LiveData;

    new-instance v1, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1$1;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1$1;-><init>(Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :goto_0
    return-void
.end method
