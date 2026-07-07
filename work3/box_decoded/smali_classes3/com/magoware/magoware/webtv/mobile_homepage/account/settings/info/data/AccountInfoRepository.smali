.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;
.super Ljava/lang/Object;
.source "AccountInfoRepository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008J=\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\n2\"\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u000fj\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010`\u0011H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;",
        "",
        "remote",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;",
        "dao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;)V",
        "getAccountInfo",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
        "setAccountInfo",
        "",
        "accountInfo",
        "params",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final dao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;

.field private final remote:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "remote"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dao"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;->remote:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;->dao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;

    return-void
.end method

.method public static final synthetic access$getDao$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;->dao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;

    return-object p0
.end method

.method public static final synthetic access$getRemote$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;->remote:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;

    return-object p0
.end method


# virtual methods
.method public final getAccountInfo()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
            ">;>;"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$getAccountInfo$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$getAccountInfo$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 11
    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$getAccountInfo$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$getAccountInfo$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 12
    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$getAccountInfo$3;

    invoke-direct {v3, p0, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$getAccountInfo$3;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 9
    invoke-static {v0, v1, v3}, Lcom/magoware/magoware/webtv/api/NetworkBoundResourceKt;->resultLiveData(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final setAccountInfo(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;

    iget v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;

    invoke-direct {v0, p0, p3}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 15
    iget v2, v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    iget-object p1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;

    iget-object p2, v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;->remote:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;

    iput-object p0, v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;->label:I

    invoke-virtual {p3, p2, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;->setAccountInfo(Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p2, p0

    .line 18
    :goto_1
    iget-object p2, p2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;->dao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;

    const/4 p3, 0x0

    iput-object p3, v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository$setAccountInfo$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;->update(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 19
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
