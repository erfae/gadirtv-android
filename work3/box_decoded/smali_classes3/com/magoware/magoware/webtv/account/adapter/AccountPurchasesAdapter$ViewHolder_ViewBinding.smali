.class public Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "AccountPurchasesAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "source"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder_ViewBinding;->target:Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;

    .line 22
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0056

    const-string v2, "field \'account_purchases_combo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;->account_purchases_combo:Landroid/widget/TextView;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0058

    const-string v2, "field \'account_purchases_distributor\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;->account_purchases_distributor:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0057

    const-string v2, "field \'account_purchases_date\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;->account_purchases_date:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0059

    const-string v2, "field \'account_purchases_duration\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;->account_purchases_duration:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder_ViewBinding;->target:Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder_ViewBinding;->target:Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;

    .line 35
    iput-object v1, v0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;->account_purchases_combo:Landroid/widget/TextView;

    .line 36
    iput-object v1, v0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;->account_purchases_distributor:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;->account_purchases_date:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;->account_purchases_duration:Landroid/widget/TextView;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
