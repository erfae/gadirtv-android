.class public final Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "Landroidx/paging/LoadStates;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 PageFetcher.kt\nandroidx/paging/PageFetcher$injectRemoteEvents$1$2\n*L\n1#1,132:1\n154#2,14:133\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "emit",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $prev$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;


# direct methods
.method public constructor <init>(Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;->this$0:Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;

    iput-object p2, p0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;->$prev$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;

    iget v1, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;-><init>(Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 153
    iget v2, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/LoadStates;

    iget-object v0, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 146
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_2
    iget-object p1, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/LoadStates;

    iget-object v2, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object p1, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/LoadStates;

    iget-object v2, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    move-object p2, v0

    check-cast p2, Lkotlin/coroutines/Continuation;

    check-cast p1, Landroidx/paging/LoadStates;

    .line 133
    iget-object p2, p0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;->$prev$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroidx/paging/LoadStates;

    invoke-virtual {p2}, Landroidx/paging/LoadStates;->getRefresh()Landroidx/paging/LoadState;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/paging/LoadStates;->getRefresh()Landroidx/paging/LoadState;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v5

    if-eqz p2, :cond_5

    .line 134
    iget-object p2, p0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;->this$0:Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;

    iget-object p2, p2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;->$loadStates:Landroidx/paging/MutableLoadStateCollection;

    sget-object v2, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    invoke-virtual {p1}, Landroidx/paging/LoadStates;->getRefresh()Landroidx/paging/LoadState;

    move-result-object v6

    invoke-virtual {p2, v2, v5, v6}, Landroidx/paging/MutableLoadStateCollection;->set(Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;)Z

    .line 135
    iget-object p2, p0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;->this$0:Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;

    iget-object p2, p2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;->$dispatchIfValid$1:Landroidx/paging/PageFetcher$injectRemoteEvents$1$1;

    sget-object v2, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    invoke-virtual {p1}, Landroidx/paging/LoadStates;->getRefresh()Landroidx/paging/LoadState;

    move-result-object v6

    iput-object p0, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->label:I

    invoke-virtual {p2, v2, v6, v0}, Landroidx/paging/PageFetcher$injectRemoteEvents$1$1;->invoke(Landroidx/paging/LoadType;Landroidx/paging/LoadState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 137
    :goto_1
    iget-object p2, v2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;->$prev$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroidx/paging/LoadStates;

    invoke-virtual {p2}, Landroidx/paging/LoadStates;->getPrepend()Landroidx/paging/LoadState;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/paging/LoadStates;->getPrepend()Landroidx/paging/LoadState;

    move-result-object v6

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v5

    if-eqz p2, :cond_6

    .line 138
    iget-object p2, v2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;->this$0:Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;

    iget-object p2, p2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;->$loadStates:Landroidx/paging/MutableLoadStateCollection;

    sget-object v6, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    invoke-virtual {p1}, Landroidx/paging/LoadStates;->getPrepend()Landroidx/paging/LoadState;

    move-result-object v7

    invoke-virtual {p2, v6, v5, v7}, Landroidx/paging/MutableLoadStateCollection;->set(Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;)Z

    .line 139
    iget-object p2, v2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;->this$0:Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;

    iget-object p2, p2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;->$dispatchIfValid$1:Landroidx/paging/PageFetcher$injectRemoteEvents$1$1;

    sget-object v6, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    invoke-virtual {p1}, Landroidx/paging/LoadStates;->getPrepend()Landroidx/paging/LoadState;

    move-result-object v7

    iput-object v2, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->label:I

    invoke-virtual {p2, v6, v7, v0}, Landroidx/paging/PageFetcher$injectRemoteEvents$1$1;->invoke(Landroidx/paging/LoadType;Landroidx/paging/LoadState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    .line 141
    :cond_6
    :goto_2
    iget-object p2, v2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;->$prev$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroidx/paging/LoadStates;

    invoke-virtual {p2}, Landroidx/paging/LoadStates;->getAppend()Landroidx/paging/LoadState;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/paging/LoadStates;->getAppend()Landroidx/paging/LoadState;

    move-result-object v4

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v5

    if-eqz p2, :cond_8

    .line 142
    iget-object p2, v2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;->this$0:Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;

    iget-object p2, p2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;->$loadStates:Landroidx/paging/MutableLoadStateCollection;

    sget-object v4, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    invoke-virtual {p1}, Landroidx/paging/LoadStates;->getAppend()Landroidx/paging/LoadState;

    move-result-object v6

    invoke-virtual {p2, v4, v5, v6}, Landroidx/paging/MutableLoadStateCollection;->set(Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;)Z

    .line 143
    iget-object p2, v2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;->this$0:Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;

    iget-object p2, p2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2;->$dispatchIfValid$1:Landroidx/paging/PageFetcher$injectRemoteEvents$1$1;

    sget-object v4, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    invoke-virtual {p1}, Landroidx/paging/LoadStates;->getAppend()Landroidx/paging/LoadState;

    move-result-object v5

    iput-object v2, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1$1;->label:I

    invoke-virtual {p2, v4, v5, v0}, Landroidx/paging/PageFetcher$injectRemoteEvents$1$1;->invoke(Landroidx/paging/LoadType;Landroidx/paging/LoadState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, v2

    :goto_3
    move-object v2, v0

    .line 145
    :cond_8
    iget-object p2, v2, Landroidx/paging/PageFetcher$injectRemoteEvents$1$2$invokeSuspend$$inlined$collect$1;->$prev$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 146
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
