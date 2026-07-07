.class public Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;
.super Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;
.source "ListItemAccountPurchasesBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/cardview/widget/CardView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0634

    const/4 v2, 0x6

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b063a

    const/4 v2, 0x7

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b063c

    const/16 v2, 0x8

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b063d

    const/16 v2, 0x9

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b063e

    const/16 v2, 0xa

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xb

    invoke-static {p1, p2, v2, v0, v1}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root",
            "bindings"
        }
    .end annotation

    move-object v14, p0

    const/4 v0, 0x2

    .line 35
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 150
    iput-wide v0, v14, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->mDirtyFlags:J

    .line 47
    iget-object v0, v14, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->accountDistributorEmail:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 48
    iget-object v0, v14, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->accountPurchaseDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v0, v14, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->accountPurchaseDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object v0, v14, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->accountUsername:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 51
    aget-object v0, p3, v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, v14, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->mboundView0:Landroidx/cardview/widget/CardView;

    .line 52
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setTag(Ljava/lang/Object;)V

    .line 53
    iget-object v0, v14, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->textView14:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 54
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 7

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 110
    iput-wide v2, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->mDirtyFlags:J

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v4, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->mAccountPurchase:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 125
    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;->getDistributorName()Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;->getSaleDate()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;->getComboDuration()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;->getComboName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v0, v5

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    if-eqz v6, :cond_1

    .line 140
    iget-object v4, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->accountDistributorEmail:Landroid/widget/TextView;

    invoke-static {v4, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 141
    iget-object v4, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->accountPurchaseDate:Landroid/widget/TextView;

    invoke-static {v4, v1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->accountPurchaseDuration:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->accountUsername:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->textView14:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 111
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 71
    monitor-exit p0

    return v0

    .line 73
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 61
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 62
    :try_start_0
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->mDirtyFlags:J

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 63
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localFieldId",
            "object",
            "fieldId"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setAccountPurchase(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "AccountPurchase"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->mAccountPurchase:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 94
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->notifyPropertyChanged(I)V

    .line 95
    invoke-super {p0}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 93
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variableId",
            "variable"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 81
    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;

    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/databinding/ListItemAccountPurchasesBindingImpl;->setAccountPurchase(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
