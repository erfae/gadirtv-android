.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository$getAccountSubscriptionList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AccountSubscriptionRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;->getAccountSubscriptionList()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/LiveData<",
        "Ljava/util/List<",
        "+",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscription;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscription;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository$getAccountSubscriptionList$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscription;",
            ">;>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository$getAccountSubscriptionList$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;->access$getDao$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;->getAccountSubscriptions()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository$getAccountSubscriptionList$1;->invoke()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method
