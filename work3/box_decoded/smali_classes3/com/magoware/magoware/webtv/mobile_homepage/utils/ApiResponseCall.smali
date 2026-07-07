.class public final Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;
.super Ljava/lang/Object;
.source "ApiResponseCallAdapter.kt"

# interfaces
.implements Lretrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Call<",
        "Lcom/magoware/magoware/webtv/api/ApiResponse<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00030\u0002B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0014\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u0002H\u0016J\u001c\u0010\t\u001a\u00020\u00072\u0012\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u000bH\u0016J\u0014\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;",
        "T",
        "Lretrofit2/Call;",
        "Lcom/magoware/magoware/webtv/api/ApiResponse;",
        "delegate",
        "(Lretrofit2/Call;)V",
        "cancel",
        "",
        "clone",
        "enqueue",
        "realCallback",
        "Lretrofit2/Callback;",
        "execute",
        "Lretrofit2/Response;",
        "isCanceled",
        "",
        "isExecuted",
        "request",
        "Lokhttp3/Request;",
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
.field private final delegate:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/Call;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;->delegate:Lretrofit2/Call;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;->clone()Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lretrofit2/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/magoware/magoware/webtv/api/ApiResponse<",
            "TT;>;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;->delegate:Lretrofit2/Call;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;-><init>(Lretrofit2/Call;)V

    check-cast v0, Lretrofit2/Call;

    return-object v0
.end method

.method public enqueue(Lretrofit2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback<",
            "Lcom/magoware/magoware/webtv/api/ApiResponse<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "realCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;->delegate:Lretrofit2/Call;

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall$enqueue$1;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall$enqueue$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;Lretrofit2/Callback;)V

    check-cast v1, Lretrofit2/Callback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public execute()Lretrofit2/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response<",
            "Lcom/magoware/magoware/webtv/api/ApiResponse<",
            "TT;>;>;"
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/magoware/magoware/webtv/api/ApiResponse;->Companion:Lcom/magoware/magoware/webtv/api/ApiResponse$Companion;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;->delegate:Lretrofit2/Call;

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    const-string v2, "delegate.execute()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/api/ApiResponse$Companion;->create(Lretrofit2/Response;)Lcom/magoware/magoware/webtv/api/ApiResponse;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/Response;->success(Ljava/lang/Object;)Lretrofit2/Response;

    move-result-object v0

    const-string v1, "Response.success(ApiResp\u2026eate(delegate.execute()))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isExecuted()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isExecuted()Z

    move-result v0

    return v0
.end method

.method public request()Lokhttp3/Request;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "delegate.request()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
