.class public Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AccountPurchasesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private purchasesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;",
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
            "purchasesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter;->purchasesList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter;->purchasesList:Ljava/util/ArrayList;

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

    .line 23
    check-cast p1, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;I)V
    .locals 4
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

    .line 65
    iget-object v0, p1, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;->account_purchases_combo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter;->purchasesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;->combo_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p1, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;->account_purchases_distributor:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter;->purchasesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;->distributorname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p1, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;->account_purchases_date:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter;->purchasesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;->sale_date:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p1, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;->account_purchases_duration:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter;->purchasesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;

    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;->combo_duration:Ljava/lang/String;

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

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;
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

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0e0020

    goto :goto_0

    :cond_0
    const p2, 0x7f0e001f

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    sget-object p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f0b0058

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :cond_1
    new-instance p2, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
