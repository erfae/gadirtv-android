.class final Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$1;
.super Ljava/lang/Object;
.source "NetworkBoundResource.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->onChanged(Lcom/magoware/magoware/webtv/api/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "ResultType",
        "RequestType",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $response:Lcom/magoware/magoware/webtv/api/ApiResponse;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;Lcom/magoware/magoware/webtv/api/ApiResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$1;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$1;->$response:Lcom/magoware/magoware/webtv/api/ApiResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$1;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$1;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$1;->$response:Lcom/magoware/magoware/webtv/api/ApiResponse;

    check-cast v2, Lcom/magoware/magoware/webtv/api/ApiSuccessResponse;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->processResponse(Lcom/magoware/magoware/webtv/api/ApiSuccessResponse;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->saveCallResult(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$1;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->access$getAppExecutors$p(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;)Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$1$1;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$1$1;-><init>(Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
