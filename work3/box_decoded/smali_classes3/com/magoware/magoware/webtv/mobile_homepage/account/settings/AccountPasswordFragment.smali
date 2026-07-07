.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;
.super Landroidx/fragment/app/Fragment;
.source "AccountPasswordFragment.kt"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/Injectable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountPasswordFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountPasswordFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment\n+ 2 DependencyExtensions.kt\ncom/magoware/magoware/webtv/di/DependencyExtensionsKt\n*L\n1#1,120:1\n18#2:121\n*E\n*S KotlinDebug\n*F\n+ 1 AccountPasswordFragment.kt\ncom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment\n*L\n38#1:121\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J&\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0018\u0010\u001f\u001a\u00020\u00142\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0018H\u0002J\u0018\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006%"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/magoware/magoware/webtv/di/Injectable;",
        "()V",
        "error",
        "",
        "isKeyboardShown",
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
        "hideKeyboard",
        "",
        "activity",
        "Landroid/app/Activity;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setPassword",
        "pass",
        "",
        "view",
        "verifyActualPassword",
        "actual_pass",
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

.field private error:Z

.field private isKeyboardShown:Z

.field public viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

.field public viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->isKeyboardShown:Z

    return-void
.end method

.method public static final synthetic access$getError$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->error:Z

    return p0
.end method

.method public static final synthetic access$hideKeyboard(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;Landroid/app/Activity;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->hideKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method public static final synthetic access$setError$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->error:Z

    return-void
.end method

.method public static final synthetic access$setPassword(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->setPassword(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$verifyActualPassword(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;Ljava/lang/String;Landroid/view/View;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->verifyActualPassword(Ljava/lang/String;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private final hideKeyboard(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "input_method"

    .line 112
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Landroid/view/View;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 117
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 118
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->isKeyboardShown:Z

    return-void
.end method

.method private final setPassword(Ljava/lang/String;Landroid/view/View;)V
    .locals 10

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 60
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    const-string v1, "password"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 65
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->error:Z

    .line 66
    sget p1, Lcom/magoware/magoware/webtv/R$id;->account_new_password:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v0, 0x7f140311

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 67
    sget p1, Lcom/magoware/magoware/webtv/R$id;->account_new_password:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 70
    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$setPassword$1;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$setPassword$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;Ljava/util/HashMap;Ljava/lang/String;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    move-object p1, v9

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const/4 p2, 0x3

    const/4 v0, 0x0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move-object v6, p1

    move v7, p2

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 91
    :cond_2
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->error:Z

    .line 92
    sget p1, Lcom/magoware/magoware/webtv/R$id;->account_new_password:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v0, 0x7f140315

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 93
    sget p1, Lcom/magoware/magoware/webtv/R$id;->account_new_password:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_1
    return-void
.end method

.method private final verifyActualPassword(Ljava/lang/String;Landroid/view/View;)Z
    .locals 3

    const-string p2, ""

    .line 101
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Encryption.Decrypt(Prefs\u2026OCAL_ENCRYPTION_KEY, \"\"))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    :cond_0
    :goto_0
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModelFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

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

    const p3, 0x7f0e00a8

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez p2, :cond_0

    const-string p3, "viewModelFactory"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 121
    :cond_0
    invoke-static {p0, p2}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p2

    const-class p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    const-string p3, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    const-string p2, "mView"

    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/magoware/magoware/webtv/R$id;->account_password_toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget p2, Lcom/magoware/magoware/webtv/R$id;->account_save_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;

    invoke-direct {p3, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;Landroid/view/View;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final setViewModel(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->viewModel:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    return-void
.end method

.method public final setViewModelFactory(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method
