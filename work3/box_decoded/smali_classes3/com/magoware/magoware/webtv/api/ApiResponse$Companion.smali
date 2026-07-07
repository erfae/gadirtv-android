.class public final Lcom/magoware/magoware/webtv/api/ApiResponse$Companion;
.super Ljava/lang/Object;
.source "ApiResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/api/ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0008\"\u0004\u0008\u0001\u0010\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/api/ApiResponse$Companion;",
        "",
        "()V",
        "create",
        "Lcom/magoware/magoware/webtv/api/ApiErrorResponse;",
        "T",
        "error",
        "",
        "Lcom/magoware/magoware/webtv/api/ApiResponse;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/api/ApiResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Throwable;)Lcom/magoware/magoware/webtv/api/ApiErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/magoware/magoware/webtv/api/ApiErrorResponse<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/magoware/magoware/webtv/api/ApiErrorResponse;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "unknown error"

    :goto_0
    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/api/ApiErrorResponse;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final create(Lretrofit2/Response;)Lcom/magoware/magoware/webtv/api/ApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Response<",
            "TT;>;)",
            "Lcom/magoware/magoware/webtv/api/ApiResponse<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v1, 0xcc

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Lcom/magoware/magoware/webtv/api/ApiSuccessResponse;

    invoke-direct {p1, v0}, Lcom/magoware/magoware/webtv/api/ApiSuccessResponse;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/magoware/magoware/webtv/api/ApiResponse;

    goto :goto_5

    .line 36
    :cond_1
    :goto_0
    new-instance p1, Lcom/magoware/magoware/webtv/api/ApiEmptyResponse;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/api/ApiEmptyResponse;-><init>()V

    check-cast p1, Lcom/magoware/magoware/webtv/api/ApiResponse;

    goto :goto_5

    .line 41
    :cond_2
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 42
    :goto_1
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_6

    .line 43
    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_6
    new-instance p1, Lcom/magoware/magoware/webtv/api/ApiErrorResponse;

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const-string v0, "unknown error"

    :goto_4
    invoke-direct {p1, v0}, Lcom/magoware/magoware/webtv/api/ApiErrorResponse;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/magoware/magoware/webtv/api/ApiResponse;

    :goto_5
    return-object p1
.end method
