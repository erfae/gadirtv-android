.class final Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel$clearTable$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewsFeedViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;)V
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
        "Lkotlin/Unit;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
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
    c = "com.magoware.magoware.webtv.mobile_homepage.news.ui.NewsFeedViewModel$clearTable$1"
    f = "NewsFeedViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel$clearTable$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;

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

    new-instance p1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel$clearTable$1;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel$clearTable$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;

    invoke-direct {p1, v0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel$clearTable$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel$clearTable$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel$clearTable$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel$clearTable$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 15
    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel$clearTable$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel$clearTable$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;->access$getRepository$p(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;)Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;->clearTable()V

    .line 17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
