.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->drop(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,479:1\n1#2:480\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"
    }
    d2 = {
        "E",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$drop$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x2
    }
    l = {
        0xa4,
        0xa9,
        0xaa
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "remaining",
        "$this$produce",
        "$this$produce"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field public final synthetic $n:I

.field public final synthetic $this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlinx/coroutines/channels/ChannelIterator;

.field public label:I


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V
    .registers 4

    iput p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$n:I

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;

    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$n:I

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;-><init>(ILkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_4b

    if-eq v1, v4, :cond_37

    if-eq v1, v2, :cond_27

    if-ne v1, v3, :cond_1f

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$1:Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v1

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_a5

    .line 2
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_27
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$1:Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v3, 0x2

    move-object v2, v0

    move-object v5, v4

    const/4 v4, 0x3

    move-object v0, p0

    goto/16 :goto_b9

    :cond_37
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->I$0:I

    iget-object v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$1:Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, v1

    move-object v7, v6

    const/4 v3, 0x2

    const/4 v4, 0x3

    move-object v1, v0

    move-object v6, v5

    const/4 v5, 0x1

    move-object v0, p0

    goto :goto_7e

    :cond_4b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 4
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$n:I

    if-ltz v1, :cond_58

    const/4 v5, 0x1

    goto :goto_59

    :cond_58
    const/4 v5, 0x0

    :goto_59
    if-eqz v5, :cond_db

    if-lez v1, :cond_9c

    .line 5
    iget-object v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v5}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5

    move-object v6, p1

    move-object p1, p0

    :goto_65
    iput-object v6, p1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    iput-object v5, p1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$1:Lkotlinx/coroutines/channels/ChannelIterator;

    iput v1, p1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->I$0:I

    iput v4, p1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->label:I

    invoke-interface {v5, p1}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_74

    return-object v0

    :cond_74
    move-object v8, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v8

    :goto_7e
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_98

    invoke-interface {v6}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    add-int/lit8 p1, v2, -0x1

    if-nez p1, :cond_8e

    goto :goto_98

    :cond_8e
    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v8, v1

    move v1, p1

    move-object p1, v0

    move-object v0, v8

    goto :goto_65

    :cond_98
    :goto_98
    move v2, v3

    move v3, v4

    move-object v4, v7

    goto :goto_9f

    :cond_9c
    move-object v4, p1

    move-object v1, v0

    move-object v0, p0

    .line 6
    :goto_9f
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p1

    :goto_a5
    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$1:Lkotlinx/coroutines/channels/ChannelIterator;

    iput v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_b2

    return-object v1

    :cond_b2
    move-object v8, v1

    move-object v1, p1

    move-object p1, v5

    move-object v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v8

    :goto_b9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d8

    invoke-interface {v1}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 7
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$1:Lkotlinx/coroutines/channels/ChannelIterator;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->label:I

    invoke-interface {v5, p1, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_d2

    return-object v2

    :cond_d2
    move-object p1, v1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    goto :goto_a5

    .line 8
    :cond_d8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_db
    const-string p1, "Requested element count "

    const-string v0, " is less than zero."

    .line 9
    invoke-static {p1, v1, v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
