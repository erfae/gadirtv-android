.class public abstract Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ListItemAccountPurchasesBinding.java"


# instance fields
.field public final accountDistributorEmail:Landroid/widget/TextView;

.field public final accountPurchaseDate:Landroid/widget/TextView;

.field public final accountPurchaseDuration:Landroid/widget/TextView;

.field public final accountUsername:Landroid/widget/TextView;

.field protected mAccountPurchase:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final textView12:Landroid/widget/TextView;

.field public final textView14:Landroid/widget/TextView;

.field public final textView18:Landroid/widget/TextView;

.field public final textView20:Landroid/widget/TextView;

.field public final textView22:Landroid/widget/TextView;

.field public final textView23:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
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
            "accountDistributorEmail",
            "accountPurchaseDate",
            "accountPurchaseDuration",
            "accountUsername",
            "textView12",
            "textView14",
            "textView18",
            "textView20",
            "textView22",
            "textView23"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 58
    iput-object p4, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->accountDistributorEmail:Landroid/widget/TextView;

    .line 59
    iput-object p5, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->accountPurchaseDate:Landroid/widget/TextView;

    .line 60
    iput-object p6, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->accountPurchaseDuration:Landroid/widget/TextView;

    .line 61
    iput-object p7, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->accountUsername:Landroid/widget/TextView;

    .line 62
    iput-object p8, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->textView12:Landroid/widget/TextView;

    .line 63
    iput-object p9, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->textView14:Landroid/widget/TextView;

    .line 64
    iput-object p10, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->textView18:Landroid/widget/TextView;

    .line 65
    iput-object p11, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->textView20:Landroid/widget/TextView;

    .line 66
    iput-object p12, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->textView22:Landroid/widget/TextView;

    .line 67
    iput-object p13, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->textView23:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 117
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;
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

    const v0, 0x7f0e012a

    .line 130
    invoke-static {p1, p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 99
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;
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

    .line 80
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;
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

    const v0, 0x7f0e012a

    .line 94
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;
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

    const v0, 0x7f0e012a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;

    return-object p0
.end method


# virtual methods
.method public getAccountPurchase()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->mAccountPurchase:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;

    return-object v0
.end method

.method public abstract setAccountPurchase(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountPurchase"
        }
    .end annotation
.end method
