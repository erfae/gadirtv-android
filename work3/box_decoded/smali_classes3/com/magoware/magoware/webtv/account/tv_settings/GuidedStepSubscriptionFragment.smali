.class public Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;
.super Landroidx/leanback/app/GuidedStepSupportFragment;
.source "GuidedStepSubscriptionFragment.java"


# instance fields
.field account_subscription_recycler:Landroidx/recyclerview/widget/RecyclerView;

.field private activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/leanback/app/GuidedStepSupportFragment;-><init>()V

    return-void
.end method

.method private getUserSubscription()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getAccountSubscriptionObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance v2, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepSubscriptionFragment$LFbYMJxixXBaV3T0vmzw9MXOHCI;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepSubscriptionFragment$LFbYMJxixXBaV3T0vmzw9MXOHCI;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$getUserSubscription$1$GuidedStepSubscriptionFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->view:Landroid/view/View;

    const v1, 0x7f0b0512

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 70
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->view:Landroid/view/View;

    const v2, 0x7f0b0067

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->view:Landroid/view/View;

    const v2, 0x7f0b0064

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->view:Landroid/view/View;

    const v2, 0x7f0b006a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    new-instance v0, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/account/adapter/AccountSubscriptionAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 76
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->account_subscription_recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->view:Landroid/view/View;

    const v2, 0x7f0b0065

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreateView$0$GuidedStepSubscriptionFragment(Landroid/view/View;)V
    .locals 2

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ONLINE_PAYMENT_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&username="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->startActivity(Landroid/content/Intent;)V

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

    .line 38
    invoke-super {p0, p1}, Landroidx/leanback/app/GuidedStepSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    .line 40
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 42
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->getUserSubscription()V

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

    const p3, 0x7f0e00ac

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->view:Landroid/view/View;

    const p2, 0x7f0b0068

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->account_subscription_recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->view:Landroid/view/View;

    const p2, 0x7f0b0063

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 52
    sget-object p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 54
    new-instance p2, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepSubscriptionFragment$r_hZL59OxAEaU8LnnspbUIF6EW0;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepSubscriptionFragment$r_hZL59OxAEaU8LnnspbUIF6EW0;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;->view:Landroid/view/View;

    return-object p1
.end method
