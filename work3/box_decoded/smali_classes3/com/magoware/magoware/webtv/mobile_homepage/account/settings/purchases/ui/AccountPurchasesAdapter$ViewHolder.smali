.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AccountPurchasesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter;
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
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;",
        "(Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;",
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
.field private final binding:Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;->binding:Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter$ViewHolder;->binding:Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;

    .line 28
    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->setAccountPurchase(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;)V

    .line 29
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->executePendingBindings()V

    return-void
.end method
