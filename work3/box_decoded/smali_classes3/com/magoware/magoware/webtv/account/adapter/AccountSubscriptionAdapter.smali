.class public Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AccountSubscriptionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private subscriptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSubscriptionObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscriptionList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSubscriptionObject;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter;->subscriptionList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter;->subscriptionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "i"
        }
    .end annotation

    .line 18
    check-cast p1, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "i"
        }
    .end annotation

    .line 52
    iget-object v0, p1, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter$ViewHolder;->account_subscription_package:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter;->subscriptionList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSubscriptionObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSubscriptionObject;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p1, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter$ViewHolder;->account_subscription_date:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter;->subscriptionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSubscriptionObject;

    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSubscriptionObject;->end_date:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0e0022

    goto :goto_0

    :cond_0
    const p2, 0x7f0e0021

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
