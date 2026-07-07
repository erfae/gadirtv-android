.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "ChangePinFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $mView:Landroid/view/View;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 38
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;->$mView:Landroid/view/View;

    const-string v0, "mView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/magoware/magoware/webtv/R$id;->account_old_pin:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v1, "mView.account_old_pin"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/magoware/magoware/webtv/R$id;->account_new_pin:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v4, "mView.account_new_pin"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/magoware/magoware/webtv/R$id;->account_old_pin:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;->access$getArgs$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragmentArgs;->getPin()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 41
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_new_pin:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;->access$setPin(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    .line 43
    :cond_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;->$mView:Landroid/view/View;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;

    const v1, 0x7f1401f7

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_3

    .line 39
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;->$mView:Landroid/view/View;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;

    const v1, 0x7f140150

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 45
    :goto_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;->access$hideKeyboard(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;Landroid/app/Activity;)V

    return-void
.end method
