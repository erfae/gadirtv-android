.class final Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$3;
.super Ljava/lang/Object;
.source "NetworkBoundResource.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->onChanged(Lcom/magoware/magoware/webtv/api/ApiResponse;)V
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
        "newData",
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
.field final synthetic $response:Lcom/magoware/magoware/webtv/api/ApiResponse;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;Lcom/magoware/magoware/webtv/api/ApiResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$3;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$3;->$response:Lcom/magoware/magoware/webtv/api/ApiResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$3;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    sget-object v1, Lcom/magoware/magoware/webtv/data/Resource;->Companion:Lcom/magoware/magoware/webtv/data/Resource$Companion;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$fetchFromNetwork$2$3;->$response:Lcom/magoware/magoware/webtv/api/ApiResponse;

    check-cast v2, Lcom/magoware/magoware/webtv/api/ApiErrorResponse;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/api/ApiErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/magoware/magoware/webtv/data/Resource$Companion;->error(Ljava/lang/String;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/data/Resource;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->access$setValue(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;Lcom/magoware/magoware/webtv/data/Resource;)V

    return-void
.end method
