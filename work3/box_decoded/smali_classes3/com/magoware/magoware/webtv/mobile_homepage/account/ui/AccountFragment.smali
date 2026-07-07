.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;
.super Landroidx/fragment/app/Fragment;
.source "AccountFragment.kt"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/Injectable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment\n+ 2 DependencyExtensions.kt\ncom/magoware/magoware/webtv/di/DependencyExtensionsKt\n*L\n1#1,181:1\n18#2:182\n*E\n*S KotlinDebug\n*F\n+ 1 AccountFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment\n*L\n47#1:182\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u0017H\u0002J\u0008\u0010\u001b\u001a\u00020\u0017H\u0002J\u0008\u0010\u001c\u001a\u00020\u0017H\u0002J\u0008\u0010\u001d\u001a\u00020\u0017H\u0002J\u0010\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0008\u0010\u001f\u001a\u00020\u0017H\u0002J\u0008\u0010 \u001a\u00020\u0017H\u0002J\u0008\u0010!\u001a\u00020\u0017H\u0002J\u0008\u0010\"\u001a\u00020\u0017H\u0002J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010$\u001a\u00020%H\u0016J&\u0010&\u001a\u0004\u0018\u00010\u00192\u0006\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010*2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0008\u0010-\u001a\u00020\u0017H\u0002J\u0010\u0010.\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006/"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/magoware/magoware/webtv/di/Injectable;",
        "()V",
        "accountViewModel",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;",
        "getAccountViewModel",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;",
        "setAccountViewModel",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;)V",
        "logoutDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "manager",
        "Lcom/google/android/play/core/review/ReviewManager;",
        "reviewInfo",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        "viewModelFactory",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "getViewModelFactory",
        "()Landroidx/lifecycle/ViewModelProvider$Factory;",
        "setViewModelFactory",
        "(Landroidx/lifecycle/ViewModelProvider$Factory;)V",
        "displayAccountName",
        "",
        "view",
        "Landroid/view/View;",
        "intentContact",
        "intentHelp",
        "intentLanguage",
        "intentLogin",
        "intentRateApp",
        "intentSendFeedback",
        "intentSettings",
        "intentTermsCondition",
        "logOut",
        "onAttach",
        "context",
        "Landroid/content/Context;",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "shareApp",
        "startReviewFlow",
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

.field public accountViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

.field private logoutDialog:Landroidx/appcompat/app/AlertDialog;

.field private manager:Lcom/google/android/play/core/review/ReviewManager;

.field private reviewInfo:Lcom/google/android/play/core/review/ReviewInfo;

.field public viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLogoutDialog$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 35
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->logoutDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p0, :cond_0

    const-string v0, "logoutDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getReviewInfo$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)Lcom/google/android/play/core/review/ReviewInfo;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->reviewInfo:Lcom/google/android/play/core/review/ReviewInfo;

    return-object p0
.end method

.method public static final synthetic access$intentContact(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->intentContact()V

    return-void
.end method

.method public static final synthetic access$intentHelp(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->intentHelp()V

    return-void
.end method

.method public static final synthetic access$intentLanguage(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->intentLanguage()V

    return-void
.end method

.method public static final synthetic access$intentLogin(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->intentLogin()V

    return-void
.end method

.method public static final synthetic access$intentSendFeedback(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->intentSendFeedback()V

    return-void
.end method

.method public static final synthetic access$intentSettings(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->intentSettings()V

    return-void
.end method

.method public static final synthetic access$intentTermsCondition(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->intentTermsCondition()V

    return-void
.end method

.method public static final synthetic access$logOut(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->logOut()V

    return-void
.end method

.method public static final synthetic access$setLogoutDialog$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->logoutDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static final synthetic access$setReviewInfo$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;Lcom/google/android/play/core/review/ReviewInfo;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->reviewInfo:Lcom/google/android/play/core/review/ReviewInfo;

    return-void
.end method

.method public static final synthetic access$shareApp(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->shareApp()V

    return-void
.end method

.method public static final synthetic access$startReviewFlow(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->startReviewFlow(Landroid/view/View;)V

    return-void
.end method

.method private final displayAccountName(Landroid/view/View;)V
    .locals 4

    .line 157
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v0

    const-string v1, "view.account_username"

    if-eqz v0, :cond_0

    .line 158
    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_username:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getUsername()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_logout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$displayAccountName$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$displayAccountName$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 161
    :cond_0
    sget v0, Lcom/magoware/magoware/webtv/R$id;->personal_settings_linear:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v2, "view.personal_settings_linear"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    sget v0, Lcom/magoware/magoware/webtv/R$id;->personal_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "view.personal_divider"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_logout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "view.account_logout"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_username:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f14024c

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_username:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06006b

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_username:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$displayAccountName$2;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$displayAccountName$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private final intentContact()V
    .locals 2

    .line 103
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections$Companion;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections$Companion;->actionNavSettingsToNavContact()Landroidx/navigation/NavDirections;

    move-result-object v0

    .line 104
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method private final intentHelp()V
    .locals 2

    .line 67
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections$Companion;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections$Companion;->actionNavSettingsToNavHelp()Landroidx/navigation/NavDirections;

    move-result-object v0

    .line 68
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method private final intentLanguage()V
    .locals 2

    .line 127
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections$Companion;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections$Companion;->actionNavAccountToNavAccountLanguage()Landroidx/navigation/NavDirections;

    move-result-object v0

    .line 128
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method private final intentLogin()V
    .locals 3

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "first_open_homepage"

    const/4 v2, 0x0

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final intentRateApp(Landroid/view/View;)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v0

    const-string v1, "ReviewManagerFactory.create(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->manager:Lcom/google/android/play/core/review/ReviewManager;

    if-nez v0, :cond_0

    const-string v1, "manager"

    .line 79
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$intentRateApp$1;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$intentRateApp$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;Landroid/view/View;)V

    check-cast v1, Lcom/google/android/play/core/tasks/OnCompleteListener;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method private final intentSendFeedback()V
    .locals 3

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto:"

    .line 109
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "info@tibo.tv"

    .line 110
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Feedback"

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nAndroid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getAndroidVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    sget-object v2, Lcom/magoware/magoware/webtv/global/Global;->devicebrand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    .line 112
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final intentSettings()V
    .locals 2

    .line 122
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections$Companion;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections$Companion;->actionNavAccountToNavSettings()Landroidx/navigation/NavDirections;

    move-result-object v0

    .line 123
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method private final intentTermsCondition()V
    .locals 2

    .line 72
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections$Companion;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragmentDirections$Companion;->actionNavSettingsToNavTermsCondition()Landroidx/navigation/NavDirections;

    move-result-object v0

    .line 73
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method private final logOut()V
    .locals 4

    .line 143
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f150191

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 144
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e013a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v2, "view"

    .line 145
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/magoware/magoware/webtv/R$id;->guest_cancel_dialog_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$logOut$1;

    invoke-direct {v3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$logOut$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    sget v2, Lcom/magoware/magoware/webtv/R$id;->guest_login_dialog_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$logOut$2;

    invoke-direct {v3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$logOut$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v1, "builder.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->logoutDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    const-string v1, "logoutDialog"

    .line 153
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private final shareApp()V
    .locals 3

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "https://play.google.com/store/apps/details?id=com.tibo.MobileWebTv"

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 138
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 139
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final startReviewFlow(Landroid/view/View;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->reviewInfo:Lcom/google/android/play/core/review/ReviewInfo;

    if-eqz v0, :cond_1

    .line 93
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->manager:Lcom/google/android/play/core/review/ReviewManager;

    if-nez p1, :cond_0

    const-string v0, "manager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->reviewInfo:Lcom/google/android/play/core/review/ReviewInfo;

    invoke-interface {p1, v0, v1}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    .line 94
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$startReviewFlow$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$startReviewFlow$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V

    check-cast v0, Lcom/google/android/play/core/tasks/OnCompleteListener;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    goto :goto_0

    :cond_1
    const v0, 0x7f140250

    .line 98
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getAccountViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->accountViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    if-nez v0, :cond_0

    const-string v1, "accountViewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModelFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_0

    const-string v1, "viewModelFactory"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e001c

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p2, :cond_0

    const-string p3, "viewModelFactory"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-static {p0, p2}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p2

    const-class p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    const-string p3, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->accountViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    const-string p2, "mView"

    .line 48
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->intentRateApp(Landroid/view/View;)V

    .line 50
    sget p2, Lcom/magoware/magoware/webtv/R$id;->account_app_version:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "mView.account_app_version"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "2.9.77"

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->displayAccountName(Landroid/view/View;)V

    .line 53
    sget p2, Lcom/magoware/magoware/webtv/R$id;->accountToolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget p2, Lcom/magoware/magoware/webtv/R$id;->help_support_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$2;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget p2, Lcom/magoware/magoware/webtv/R$id;->terms_and_conditions_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$3;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$3;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget p2, Lcom/magoware/magoware/webtv/R$id;->rate_review_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$4;

    invoke-direct {p3, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$4;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;Landroid/view/View;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget p2, Lcom/magoware/magoware/webtv/R$id;->contact_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$5;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$5;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget p2, Lcom/magoware/magoware/webtv/R$id;->send_feadback_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$6;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$6;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget p2, Lcom/magoware/magoware/webtv/R$id;->personal_settings_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$7;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$7;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget p2, Lcom/magoware/magoware/webtv/R$id;->share_app_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$8;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$8;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget p2, Lcom/magoware/magoware/webtv/R$id;->language_linear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$9;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$onCreateView$9;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final setAccountViewModel(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->accountViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    return-void
.end method

.method public final setViewModelFactory(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method
