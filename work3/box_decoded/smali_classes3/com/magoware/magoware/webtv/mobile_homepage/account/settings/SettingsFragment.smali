.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SettingsFragment.kt"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/Injectable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment\n+ 2 DependencyExtensions.kt\ncom/magoware/magoware/webtv/di/DependencyExtensionsKt\n*L\n1#1,114:1\n18#2:115\n*E\n*S KotlinDebug\n*F\n+ 1 SettingsFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment\n*L\n32#1:115\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u0017H\u0002J\u0008\u0010\u001b\u001a\u00020\u0017H\u0002J\u0008\u0010\u001c\u001a\u00020\u0017H\u0002J\u0008\u0010\u001d\u001a\u00020\u0017H\u0003J\u0008\u0010\u001e\u001a\u00020\u0017H\u0002J\u0008\u0010\u001f\u001a\u00020\u0017H\u0002J\u0008\u0010 \u001a\u00020\u0017H\u0002J&\u0010!\u001a\u0004\u0018\u00010\u00192\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006("
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/magoware/magoware/webtv/di/Injectable;",
        "()V",
        "accountSetting",
        "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;",
        "getAccountSetting",
        "()Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;",
        "setAccountSetting",
        "(Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;)V",
        "viewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;",
        "getViewModel",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;",
        "setViewModel",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;)V",
        "viewModelFactory",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "getViewModelFactory",
        "()Landroidx/lifecycle/ViewModelProvider$Factory;",
        "setViewModelFactory",
        "(Landroidx/lifecycle/ViewModelProvider$Factory;)V",
        "getSettings",
        "",
        "view",
        "Landroid/view/View;",
        "intentAccountInfo",
        "intentAccountNotification",
        "intentAccountPassword",
        "intentAccountPlayer",
        "intentAccountPurchases",
        "intentAccountSubscriptions",
        "intentPinProtection",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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

.field public accountSetting:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

.field public viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

.field public viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$intentAccountInfo(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->intentAccountInfo()V

    return-void
.end method

.method public static final synthetic access$intentAccountNotification(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->intentAccountNotification()V

    return-void
.end method

.method public static final synthetic access$intentAccountPassword(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->intentAccountPassword()V

    return-void
.end method

.method public static final synthetic access$intentAccountPlayer(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->intentAccountPlayer()V

    return-void
.end method

.method public static final synthetic access$intentAccountPurchases(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->intentAccountPurchases()V

    return-void
.end method

.method public static final synthetic access$intentAccountSubscriptions(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->intentAccountSubscriptions()V

    return-void
.end method

.method public static final synthetic access$intentPinProtection(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->intentPinProtection()V

    return-void
.end method

.method private final getSettings(Landroid/view/View;)V
    .locals 7

    .line 51
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$getSettings$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$getSettings$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final intentAccountInfo()V
    .locals 2

    .line 68
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;->actionNavSettingsToNavAccountInfo()Landroidx/navigation/NavDirections;

    move-result-object v0

    .line 69
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method private final intentAccountNotification()V
    .locals 3

    .line 106
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->accountSetting:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    if-nez v1, :cond_0

    const-string v2, "accountSetting"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->get_messages:Z

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;->actionNavSettingsToNavAccountNotification(Z)Landroidx/navigation/NavDirections;

    move-result-object v0

    .line 107
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method private final intentAccountPassword()V
    .locals 2

    .line 101
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;->actionNavSettingsToNavAccountPassword()Landroidx/navigation/NavDirections;

    move-result-object v0

    .line 102
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method private final intentAccountPlayer()V
    .locals 8

    .line 74
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "resources.getStringArray(R.array.players_array)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 77
    aget-object v5, v0, v4

    iget-object v6, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->accountSetting:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    if-nez v6, :cond_0

    const-string v7, "accountSetting"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v6, v6, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->player:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 82
    :goto_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    aput-object v2, v0, v3

    .line 83
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    aput-object v1, v0, v4

    .line 85
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "player"

    .line 86
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 87
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const v2, 0x7f0b0092

    invoke-virtual {v0, v2, v1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    return-void
.end method

.method private final intentAccountPurchases()V
    .locals 2

    .line 91
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;->actionNavSettingsToNavAccountPurchases()Landroidx/navigation/NavDirections;

    move-result-object v0

    .line 92
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method private final intentAccountSubscriptions()V
    .locals 2

    .line 96
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;->actionNavSettingsToNavAccountSubscriptions()Landroidx/navigation/NavDirections;

    move-result-object v0

    .line 97
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method private final intentPinProtection()V
    .locals 4

    .line 111
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->accountSetting:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    const-string v2, "accountSetting"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->pin:Ljava/lang/String;

    const-string v3, "accountSetting.pin"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->accountSetting:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, v3, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->show_adult:Z

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragmentDirections$Companion;->actionNavSettingsToNavAccountPin(Ljava/lang/String;Z)Landroidx/navigation/NavDirections;

    move-result-object v0

    .line 112
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getAccountSetting()Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->accountSetting:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    if-nez v0, :cond_0

    const-string v1, "accountSetting"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModelFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

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

    .line 32
    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p3, :cond_0

    const-string v0, "viewModelFactory"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-static {p0, p3}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    invoke-virtual {p3, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    const p3, 0x7f0e00ca

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "mView"

    .line 36
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/magoware/magoware/webtv/R$id;->settings_info_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    sget p2, Lcom/magoware/magoware/webtv/R$id;->settings_player_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$2;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget p2, Lcom/magoware/magoware/webtv/R$id;->settings_purchases_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$3;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$3;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    sget p2, Lcom/magoware/magoware/webtv/R$id;->settings_subscriptions_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$4;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$4;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget p2, Lcom/magoware/magoware/webtv/R$id;->change_password_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$5;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$5;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget p2, Lcom/magoware/magoware/webtv/R$id;->communication_pref_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$6;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$6;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget p2, Lcom/magoware/magoware/webtv/R$id;->pin_protected_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$7;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$7;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget p2, Lcom/magoware/magoware/webtv/R$id;->settings_toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$8;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment$onCreateView$8;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->getSettings(Landroid/view/View;)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final setAccountSetting(Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->accountSetting:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    return-void
.end method

.method public final setViewModel(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    return-void
.end method

.method public final setViewModelFactory(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method
