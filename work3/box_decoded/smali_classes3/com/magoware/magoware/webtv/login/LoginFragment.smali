.class public Lcom/magoware/magoware/webtv/login/LoginFragment;
.super Lcom/magoware/magoware/webtv/login/LoginFragmentParent;
.source "LoginFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LoginFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;)Lcom/magoware/magoware/webtv/login/LoginFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginListener"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/magoware/magoware/webtv/login/LoginFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/login/LoginFragment;-><init>()V

    .line 17
    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/login/LoginFragment;->setLoginListener(Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;)V

    return-object v0
.end method


# virtual methods
.method protected customizeViewForMagoware()V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragment;->getServerAddress()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 33
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragment;->getServerAddress()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragment$IrqxoNxNaQU2wP_SZJkCVGOsPPE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragment$IrqxoNxNaQU2wP_SZJkCVGOsPPE;-><init>(Lcom/magoware/magoware/webtv/login/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method protected customizeViewForTibo()V
    .locals 0

    return-void
.end method

.method protected customizeViewForYESNET()V
    .locals 0

    return-void
.end method

.method public synthetic lambda$customizeViewForMagoware$0$LoginFragment(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 36
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragment;->requireView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 37
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFragment;->getLoginButton()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    const/4 p1, 0x1

    :cond_0
    return p1
.end method
