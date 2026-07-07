.class final Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$syncScheduledList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TvHomePageActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->syncScheduledList()Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Integer;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001*\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.magoware.magoware.webtv.mobile_homepage.tv.TvHomePageActivity$syncScheduledList$1"
    f = "TvHomePageActivity.kt"
    i = {}
    l = {
        0x1e0
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$syncScheduledList$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$syncScheduledList$1;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$syncScheduledList$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-direct {p1, v0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$syncScheduledList$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$syncScheduledList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$syncScheduledList$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$syncScheduledList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 479
    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$syncScheduledList$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 481
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 479
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 480
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$syncScheduledList$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getHomeFeedComingChannelsViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    move-result-object p1

    iput v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$syncScheduledList$1;->label:I

    invoke-virtual {p1, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->syncScheduledChannels(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 479
    :cond_2
    :goto_0
    check-cast p1, Lcom/magoware/magoware/webtv/data/ErrorHandling;

    .line 481
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/ErrorHandling;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/api/ResponseObject;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/api/ResponseObject;->getResponse_object()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
