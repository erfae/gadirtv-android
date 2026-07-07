.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository$getAccountPurchases$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AccountPurchasesRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository;->getAccountPurchases()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
        "+",
        "Lcom/magoware/magoware/webtv/api/ResponseObject<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;",
        ">;>;>;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "Lcom/magoware/magoware/webtv/api/ResponseObject;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;",
        "invoke",
        "(Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.magoware.magoware.webtv.mobile_homepage.account.settings.purchases.data.AccountPurchasesRepository$getAccountPurchases$2"
    f = "AccountPurchasesRepository.kt"
    i = {}
    l = {
        0xb
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository$getAccountPurchases$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository$getAccountPurchases$2;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository$getAccountPurchases$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository;

    invoke-direct {v0, v1, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository$getAccountPurchases$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository$getAccountPurchases$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository$getAccountPurchases$2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository$getAccountPurchases$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 11
    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository$getAccountPurchases$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository$getAccountPurchases$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository;->access$getRemote$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRemote;

    move-result-object p1

    iput v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository$getAccountPurchases$2;->label:I

    invoke-virtual {p1, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRemote;->getAccountPurchases(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
