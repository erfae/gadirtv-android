.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PinDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->resetPin(Landroid/view/View;)V
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
    c = "com.magoware.magoware.webtv.mobile_homepage.account.settings.PinDetailFragment$resetPin$1"
    f = "PinDetailFragment.kt"
    i = {}
    l = {
        0x46
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field label:I

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;->$view:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;->$view:Landroid/view/View;

    invoke-direct {p1, v0, v1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 69
    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->getViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    move-result-object p1

    iput v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;->label:I

    invoke-virtual {p1, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;->resetPassword(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 69
    :cond_2
    :goto_0
    check-cast p1, Lcom/magoware/magoware/webtv/data/ErrorHandling;

    .line 71
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/ErrorHandling;->getStatus()Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;->$view:Landroid/view/View;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/ErrorHandling;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_1

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;->$view:Landroid/view/View;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment$resetPin$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;

    const v2, 0x7f14037a

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 80
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
