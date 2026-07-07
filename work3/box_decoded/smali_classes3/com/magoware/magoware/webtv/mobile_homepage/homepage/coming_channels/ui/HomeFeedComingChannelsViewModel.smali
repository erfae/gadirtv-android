.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "HomeFeedComingChannelsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\nJ\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0007J\u001d\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00170\u0016H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R#\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "repository",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRepository;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRepository;)V",
        "_comingChannels",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "channelList",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;",
        "comingChannels",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/data/Resource;",
        "getComingChannels",
        "()Landroidx/lifecycle/LiveData;",
        "scheduleChannel",
        "",
        "channel",
        "setUrl",
        "url",
        "syncScheduledChannels",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "Lcom/magoware/magoware/webtv/api/ResponseObject;",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final _comingChannels:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private channelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;",
            ">;"
        }
    .end annotation
.end field

.field private final comingChannels:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final repository:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRepository;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRepository;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->repository:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRepository;

    .line 12
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->_comingChannels:Landroidx/lifecycle/MutableLiveData;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->channelList:Ljava/util/List;

    .line 16
    check-cast p1, Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel$comingChannels$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel$comingChannels$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;)V

    check-cast v0, Landroidx/arch/core/util/Function;

    invoke-static {p1, v0}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string v0, "Transformations\n        \u2026          }\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->comingChannels:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRepository;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->repository:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRepository;

    return-object p0
.end method


# virtual methods
.method public final getComingChannels()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;",
            ">;>;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->comingChannels:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final scheduleChannel(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;)V
    .locals 7

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel$scheduleChannel$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel$scheduleChannel$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->_comingChannels:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final syncScheduledChannels(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
            "Lcom/magoware/magoware/webtv/api/ResponseObject<",
            "Ljava/lang/Integer;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->repository:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRepository;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRepository;->syncScheduledChannels(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
