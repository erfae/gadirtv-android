.class public Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;
.super Landroidx/leanback/app/GuidedStepSupportFragment;
.source "GuidedStepPurchasesFragment.java"


# instance fields
.field account_purchases_recycler:Landroidx/recyclerview/widget/RecyclerView;

.field private activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/leanback/app/GuidedStepSupportFragment;-><init>()V

    return-void
.end method

.method private getPurchases()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getAccountPurchasesObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance v2, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepPurchasesFragment$YCqwDaRrK90hQqBZswM5NJN-qAM;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepPurchasesFragment$YCqwDaRrK90hQqBZswM5NJN-qAM;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$getPurchases$0$GuidedStepPurchasesFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->view:Landroid/view/View;

    const v1, 0x7f0b0512

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 49
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    .line 50
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->view:Landroid/view/View;

    const v3, 0x7f0b005d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->view:Landroid/view/View;

    const v3, 0x7f0b0056

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->view:Landroid/view/View;

    const v3, 0x7f0b0057

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->view:Landroid/view/View;

    const v3, 0x7f0b0059

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    const v3, 0x7f0b0058

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :goto_0
    new-instance v0, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/account/adapter/AccountPurchasesAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 61
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->account_purchases_recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->view:Landroid/view/View;

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 68
    :cond_2
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 29
    invoke-super {p0, p1}, Landroidx/leanback/app/GuidedStepSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    .line 31
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 32
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->getPurchases()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0e00a9

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->view:Landroid/view/View;

    const p2, 0x7f0b005c

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->account_purchases_recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 41
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;->view:Landroid/view/View;

    return-object p1
.end method
