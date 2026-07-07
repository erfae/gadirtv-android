.class public abstract Lcom/magoware/magoware/webtv/api/BaseDataSource;
.super Ljava/lang/Object;
.source "BaseDataSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002JA\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0000\u0010\u00052\"\u0010\t\u001a\u001e\u0008\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\nH\u0084@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/api/BaseDataSource;",
        "",
        "()V",
        "error",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "T",
        "message",
        "",
        "getResult",
        "call",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "Lretrofit2/Response;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final error(Ljava/lang/String;)Lcom/magoware/magoware/webtv/data/ErrorHandling;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
            "TT;>;"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Lcom/framework/utilityframe/log/log;->e(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->Companion:Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network call has failed for a following reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;->error$default(Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Lcom/magoware/magoware/webtv/data/ErrorHandling;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final getResult(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/magoware/magoware/webtv/api/BaseDataSource$getResult$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/magoware/magoware/webtv/api/BaseDataSource$getResult$1;

    iget v1, v0, Lcom/magoware/magoware/webtv/api/BaseDataSource$getResult$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/magoware/magoware/webtv/api/BaseDataSource$getResult$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/magoware/magoware/webtv/api/BaseDataSource$getResult$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/api/BaseDataSource$getResult$1;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/api/BaseDataSource$getResult$1;-><init>(Lcom/magoware/magoware/webtv/api/BaseDataSource;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/magoware/magoware/webtv/api/BaseDataSource$getResult$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 12
    iget v2, v0, Lcom/magoware/magoware/webtv/api/BaseDataSource$getResult$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/magoware/magoware/webtv/api/BaseDataSource$getResult$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/magoware/magoware/webtv/api/BaseDataSource;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    :try_start_1
    iput-object p0, v0, Lcom/magoware/magoware/webtv/api/BaseDataSource$getResult$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/magoware/magoware/webtv/api/BaseDataSource$getResult$1;->label:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 12
    :goto_1
    :try_start_2
    check-cast p2, Lretrofit2/Response;

    .line 15
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    sget-object p2, Lcom/magoware/magoware/webtv/data/ErrorHandling;->Companion:Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;

    invoke-virtual {p2, v0}, Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;->success(Ljava/lang/Object;)Lcom/magoware/magoware/webtv/data/ErrorHandling;

    move-result-object p1

    return-object p1

    .line 19
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/magoware/magoware/webtv/api/BaseDataSource;->error(Ljava/lang/String;)Lcom/magoware/magoware/webtv/data/ErrorHandling;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_1
    move-exception p2

    move-object p1, p0

    .line 21
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {p1, v0}, Lcom/magoware/magoware/webtv/api/BaseDataSource;->error(Ljava/lang/String;)Lcom/magoware/magoware/webtv/data/ErrorHandling;

    move-result-object p1

    return-object p1
.end method
