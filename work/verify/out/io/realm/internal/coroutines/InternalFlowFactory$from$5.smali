.class final Lio/realm/internal/coroutines/InternalFlowFactory$from$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InternalFlowFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/coroutines/InternalFlowFactory;->from(Lio/realm/Realm;Lio/realm/RealmList;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lio/realm/RealmList<",
        "TT;>;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\u008a@"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lio/realm/RealmList;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.realm.internal.coroutines.InternalFlowFactory$from$5"
    f = "InternalFlowFactory.kt"
    i = {}
    l = {
        0x13a,
        0x156
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic $config:Lio/realm/RealmConfiguration;

.field public final synthetic $realmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/realm/internal/coroutines/InternalFlowFactory;


# direct methods
.method public static synthetic $r8$lambda$2qjOtD7UrBzMxDiDhzxcjgLy8n4(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->invokeSuspend$lambda-0(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmList;)V

    return-void
.end method

.method public constructor <init>(Lio/realm/RealmList;Lio/realm/RealmConfiguration;Lio/realm/internal/coroutines/InternalFlowFactory;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "TT;>;",
            "Lio/realm/RealmConfiguration;",
            "Lio/realm/internal/coroutines/InternalFlowFactory;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/realm/internal/coroutines/InternalFlowFactory$from$5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->$realmList:Lio/realm/RealmList;

    iput-object p2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->$config:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->this$0:Lio/realm/internal/coroutines/InternalFlowFactory;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmList;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2
    invoke-virtual {p2}, Lio/realm/RealmList;->isValid()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 3
    invoke-static {p0, p2, p1, p2}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    goto :goto_28

    .line 4
    :cond_12
    # getter for: Lio/realm/internal/coroutines/InternalFlowFactory;->returnFrozenObjects:Z
    invoke-static {p1}, Lio/realm/internal/coroutines/InternalFlowFactory;->access$getReturnFrozenObjects$p(Lio/realm/internal/coroutines/InternalFlowFactory;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 5
    invoke-virtual {p2}, Lio/realm/RealmList;->freeze()Lio/realm/RealmList;

    move-result-object p1

    const-string p2, "listenerResults.freeze()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->offer(Ljava/lang/Object;)Z

    goto :goto_28

    .line 6
    :cond_25
    invoke-interface {p0, p2}, Lkotlinx/coroutines/channels/SendChannel;->offer(Ljava/lang/Object;)Z

    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->$realmList:Lio/realm/RealmList;

    iget-object v2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->$config:Lio/realm/RealmConfiguration;

    iget-object v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->this$0:Lio/realm/internal/coroutines/InternalFlowFactory;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;-><init>(Lio/realm/RealmList;Lio/realm/RealmConfiguration;Lio/realm/internal/coroutines/InternalFlowFactory;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p1    # Lkotlinx/coroutines/channels/ProducerScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lio/realm/RealmList<",
            "TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_1e

    if-eq v1, v2, :cond_1a

    if-ne v1, v3, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_79

    .line 2
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_38

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 4
    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->$realmList:Lio/realm/RealmList;

    invoke-virtual {v1}, Lio/realm/RealmList;->isValid()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 5
    sget-object v1, Lio/realm/internal/coroutines/InternalFlowFactory$from$5$1;->INSTANCE:Lio/realm/internal/coroutines/InternalFlowFactory$from$5$1;

    iput v2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_38

    return-object v0

    .line 6
    :cond_38
    :goto_38
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 7
    :cond_3b
    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->$config:Lio/realm/RealmConfiguration;

    invoke-static {v1}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->this$0:Lio/realm/internal/coroutines/InternalFlowFactory;

    new-instance v4, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, v2, v3}, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;I)V

    .line 9
    iget-object v2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->$realmList:Lio/realm/RealmList;

    invoke-virtual {v2, v4}, Lio/realm/RealmList;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 10
    iget-object v2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->this$0:Lio/realm/internal/coroutines/InternalFlowFactory;

    # getter for: Lio/realm/internal/coroutines/InternalFlowFactory;->returnFrozenObjects:Z
    invoke-static {v2}, Lio/realm/internal/coroutines/InternalFlowFactory;->access$getReturnFrozenObjects$p(Lio/realm/internal/coroutines/InternalFlowFactory;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 11
    iget-object v2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->$realmList:Lio/realm/RealmList;

    invoke-virtual {v2}, Lio/realm/RealmList;->freeze()Lio/realm/RealmList;

    move-result-object v2

    const-string v5, "realmList.freeze()"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lkotlinx/coroutines/channels/SendChannel;->offer(Ljava/lang/Object;)Z

    goto :goto_69

    .line 12
    :cond_64
    iget-object v2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->$realmList:Lio/realm/RealmList;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/channels/SendChannel;->offer(Ljava/lang/Object;)Z

    .line 13
    :goto_69
    new-instance v2, Lio/realm/internal/coroutines/InternalFlowFactory$from$5$2;

    iget-object v5, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->$realmList:Lio/realm/RealmList;

    invoke-direct {v2, v1, v5, v4}, Lio/realm/internal/coroutines/InternalFlowFactory$from$5$2;-><init>(Lio/realm/Realm;Lio/realm/RealmList;Lio/realm/RealmChangeListener;)V

    iput v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->label:I

    invoke-static {p1, v2, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_79

    return-object v0

    .line 14
    :cond_79
    :goto_79
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
