.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;
.super Landroidx/fragment/app/Fragment;
.source "AccountInfoFragment.kt"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/Injectable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountInfoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountInfoFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment\n+ 2 DependencyExtensions.kt\ncom/magoware/magoware/webtv/di/DependencyExtensionsKt\n*L\n1#1,88:1\n18#2:89\n*E\n*S KotlinDebug\n*F\n+ 1 AccountInfoFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment\n*L\n28#1:89\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u001a\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0002J&\u0010\u0017\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J4\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162\"\u0010\u001f\u001a\u001e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020!0 j\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020!`\"H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/magoware/magoware/webtv/di/Injectable;",
        "()V",
        "viewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;",
        "getViewModel",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;",
        "setViewModel",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;)V",
        "viewModelFactory",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "getViewModelFactory",
        "()Landroidx/lifecycle/ViewModelProvider$Factory;",
        "setViewModelFactory",
        "(Landroidx/lifecycle/ViewModelProvider$Factory;)V",
        "getAccountView",
        "",
        "view",
        "Landroid/view/View;",
        "initView",
        "accountInfo",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setAccount",
        "params",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
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
.field private _$_findViewCache:Ljava/util/HashMap;

.field public viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

.field public viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$initView(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;Landroid/view/View;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->initView(Landroid/view/View;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;)V

    return-void
.end method

.method public static final synthetic access$setAccount(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;Ljava/util/HashMap;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->setAccount(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;Ljava/util/HashMap;)V

    return-void
.end method

.method private final getAccountView(Landroid/view/View;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;->getAccountInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$getAccountView$1;

    invoke-direct {v2, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$getAccountView$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;Landroid/view/View;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final initView(Landroid/view/View;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 53
    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_first_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->getFirstName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_last_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->getLastName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_address:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_city:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_telephone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->getTelephone()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_country:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_save:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;Landroid/view/View;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private final setAccount(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;->setAccountInfo(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;Ljava/util/HashMap;)Lkotlinx/coroutines/Job;

    .line 86
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModelFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_0

    const-string v1, "viewModelFactory"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e00a5

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p2, :cond_0

    const-string p3, "viewModelFactory"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-static {p0, p2}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p2

    const-class p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    const-string p3, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    const-string p2, "mView"

    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/magoware/magoware/webtv/R$id;->account_info_toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$onCreateView$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->getAccountView(Landroid/view/View;)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final setViewModel(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    return-void
.end method

.method public final setViewModelFactory(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method
