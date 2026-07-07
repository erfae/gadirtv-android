.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "AccountInfoViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006J2\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\"\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\rj\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e`\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "repository",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;)V",
        "getAccountInfo",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
        "setAccountInfo",
        "Lkotlinx/coroutines/Job;",
        "accountInfo",
        "params",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
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
.field private final repository:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;->repository:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;->repository:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;

    return-object p0
.end method


# virtual methods
.method public final getAccountInfo()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
            ">;>;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;->repository:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;->getAccountInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final setAccountInfo(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;Ljava/util/HashMap;)Lkotlinx/coroutines/Job;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    const-string v0, "accountInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel$setAccountInfo$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel$setAccountInfo$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method
