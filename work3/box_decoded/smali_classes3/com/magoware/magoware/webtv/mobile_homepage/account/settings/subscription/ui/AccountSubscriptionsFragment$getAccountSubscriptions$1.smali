.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment$getAccountSubscriptions$1;
.super Ljava/lang/Object;
.source "AccountSubscriptionsFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->getAccountSubscriptions(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
        "+",
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004 \u0006*\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscription;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionAdapter;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment$getAccountSubscriptions$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment$getAccountSubscriptions$1;->$adapter:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionAdapter;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment$getAccountSubscriptions$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/magoware/magoware/webtv/data/ErrorHandling;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
            "+",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscription;",
            ">;>;)V"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/ErrorHandling;->getStatus()Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment$getAccountSubscriptions$1;->$view:Landroid/view/View;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/ErrorHandling;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/ErrorHandling;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    const-string v0, "mView.empty_subscriptions"

    if-eqz v1, :cond_4

    .line 43
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment$getAccountSubscriptions$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->getMView()Landroid/view/View;

    move-result-object p1

    sget v1, Lcom/magoware/magoware/webtv/R$id;->empty_subscriptions:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 45
    :cond_4
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment$getAccountSubscriptions$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;->getMView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/magoware/magoware/webtv/R$id;->empty_subscriptions:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment$getAccountSubscriptions$1;->$adapter:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/ErrorHandling;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionAdapter;->submitList(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/magoware/magoware/webtv/data/ErrorHandling;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment$getAccountSubscriptions$1;->onChanged(Lcom/magoware/magoware/webtv/data/ErrorHandling;)V

    return-void
.end method
