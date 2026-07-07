.class public final Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall$enqueue$1;
.super Ljava/lang/Object;
.source "ApiResponseCallAdapter.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;->enqueue(Lretrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J$\u0010\u0008\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall$enqueue$1",
        "Lretrofit2/Callback;",
        "onFailure",
        "",
        "call",
        "Lretrofit2/Call;",
        "error",
        "",
        "onResponse",
        "response",
        "Lretrofit2/Response;",
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
.field final synthetic $realCallback:Lretrofit2/Callback;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;Lretrofit2/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback;",
            ")V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall$enqueue$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall$enqueue$1;->$realCallback:Lretrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall$enqueue$1;->$realCallback:Lretrofit2/Callback;

    .line 37
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall$enqueue$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;

    check-cast v0, Lretrofit2/Call;

    .line 38
    sget-object v1, Lcom/magoware/magoware/webtv/api/ApiResponse;->Companion:Lcom/magoware/magoware/webtv/api/ApiResponse$Companion;

    invoke-virtual {v1, p2}, Lcom/magoware/magoware/webtv/api/ApiResponse$Companion;->create(Ljava/lang/Throwable;)Lcom/magoware/magoware/webtv/api/ApiErrorResponse;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/Response;->success(Ljava/lang/Object;)Lretrofit2/Response;

    move-result-object p2

    .line 36
    invoke-interface {p1, v0, p2}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall$enqueue$1;->$realCallback:Lretrofit2/Callback;

    .line 44
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall$enqueue$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;

    check-cast v0, Lretrofit2/Call;

    .line 45
    sget-object v1, Lcom/magoware/magoware/webtv/api/ApiResponse;->Companion:Lcom/magoware/magoware/webtv/api/ApiResponse$Companion;

    invoke-virtual {v1, p2}, Lcom/magoware/magoware/webtv/api/ApiResponse$Companion;->create(Lretrofit2/Response;)Lcom/magoware/magoware/webtv/api/ApiResponse;

    move-result-object p2

    .line 44
    invoke-static {p2}, Lretrofit2/Response;->success(Ljava/lang/Object;)Lretrofit2/Response;

    move-result-object p2

    .line 43
    invoke-interface {p1, v0, p2}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    return-void
.end method
