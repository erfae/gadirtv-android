.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "AccountPurchasesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\tH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;",
        "()V",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "ViewHolder",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/DiffCallback;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 11
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;

    const-string v0, "accountPurchase"

    .line 21
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;->bind(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance p2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    invoke-static {v0, p1, v1}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;

    move-result-object p1

    const-string v0, "ListItemAccountPurchases\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;-><init>(Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;)V

    return-object p2
.end method
