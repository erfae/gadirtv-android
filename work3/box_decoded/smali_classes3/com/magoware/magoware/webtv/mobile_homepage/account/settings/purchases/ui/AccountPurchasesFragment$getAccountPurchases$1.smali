.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesFragment$getAccountPurchases$1;
.super Ljava/lang/Object;
.source "AccountPurchasesFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesFragment;->getAccountPurchases(Landroid/view/View;)V
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
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;",
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
        "result",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;",
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
.field final synthetic $adapter:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter;

.field final synthetic $view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesFragment$getAccountPurchases$1;->$adapter:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesFragment$getAccountPurchases$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/magoware/magoware/webtv/data/ErrorHandling;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
            "+",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;",
            ">;>;)V"
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/ErrorHandling;->getStatus()Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesFragment$getAccountPurchases$1;->$view:Landroid/view/View;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/ErrorHandling;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesFragment$getAccountPurchases$1;->$adapter:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/ErrorHandling;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesAdapter;->submitList(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/magoware/magoware/webtv/data/ErrorHandling;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesFragment$getAccountPurchases$1;->onChanged(Lcom/magoware/magoware/webtv/data/ErrorHandling;)V

    return-void
.end method
