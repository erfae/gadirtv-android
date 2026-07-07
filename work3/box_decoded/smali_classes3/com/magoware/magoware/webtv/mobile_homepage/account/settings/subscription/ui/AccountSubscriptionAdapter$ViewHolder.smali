.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AccountSubscriptionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;",
        "(Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscription;",
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
.field private final binding:Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionAdapter$ViewHolder;->binding:Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscription;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionAdapter$ViewHolder;->binding:Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;

    .line 31
    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;->setAccountSubscription(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscription;)V

    .line 32
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;->executePendingBindings()V

    return-void
.end method
