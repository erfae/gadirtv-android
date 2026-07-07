.class public abstract Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ListItemAccountSubscriptionsBinding.java"


# instance fields
.field public final accountSubscriptionEndDate:Landroid/widget/TextView;

.field public final accountSubscriptionStartDate:Landroid/widget/TextView;

.field protected mAccountSubscription:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscription;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final textView12:Landroid/widget/TextView;

.field public final textView14:Landroid/widget/TextView;

.field public final textView18:Landroid/widget/TextView;

.field public final textView20:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "accountSubscriptionEndDate",
            "accountSubscriptionStartDate",
            "textView12",
            "textView14",
            "textView18",
            "textView20"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 45
    iput-object p4, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;->accountSubscriptionEndDate:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;->accountSubscriptionStartDate:Landroid/widget/TextView;

    .line 47
    iput-object p6, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;->textView12:Landroid/widget/TextView;

    .line 48
    iput-object p7, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;->textView14:Landroid/widget/TextView;

    .line 49
    iput-object p8, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;->textView18:Landroid/widget/TextView;

    .line 50
    iput-object p9, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;->textView20:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 100
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0e012b

    .line 113
    invoke-static {p1, p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 82
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    .line 63
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0e012b

    .line 77
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0e012b

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;

    return-object p0
.end method


# virtual methods
.method public getAccountSubscription()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscription;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountSubscriptionsBinding;->mAccountSubscription:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscription;

    return-object v0
.end method

.method public abstract setAccountSubscription(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscription;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountSubscription"
        }
    .end annotation
.end method
