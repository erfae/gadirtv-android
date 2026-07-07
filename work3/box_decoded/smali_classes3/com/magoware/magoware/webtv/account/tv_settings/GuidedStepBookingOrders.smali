.class public Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;
.super Landroidx/leanback/app/GuidedStepSupportFragment;
.source "GuidedStepBookingOrders.java"


# instance fields
.field activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/leanback/app/GuidedStepSupportFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$GuidedStepBookingOrders(Landroid/view/View;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 3

    const v0, 0x7f0b0512

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 43
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 44
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->getResponse_object()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->getResponse_object()Ljava/util/ArrayList;

    move-result-object p2

    const v0, 0x7f0b0334

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0b0330

    .line 48
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0b032f

    .line 49
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0b0333

    .line 50
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0332

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    new-instance v0, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;

    invoke-direct {v0, p2}, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;-><init>(Ljava/util/List;)V

    .line 57
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    .line 58
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0331

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 61
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p2, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_2
    :goto_0
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
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    .line 31
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

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

    const p3, 0x7f0e00bf

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getCustomerOrdersObservable()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object p3, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance v0, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepBookingOrders$ERohRe4isHKA9fHa8Xm7_-E8gu8;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepBookingOrders$ERohRe4isHKA9fHa8Xm7_-E8gu8;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;Landroid/view/View;)V

    invoke-virtual {p2, p3, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-object p1
.end method
