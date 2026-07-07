.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "AccountPasswordFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 42
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->$mView:Landroid/view/View;

    const-string v1, "mView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/magoware/magoware/webtv/R$id;->account_old_password:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v2, "mView.account_old_password"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->access$verifyActualPassword(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;Ljava/lang/String;Landroid/view/View;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->access$setError$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;Z)V

    .line 44
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_old_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;

    const v2, 0x7f140499

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_old_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/magoware/magoware/webtv/R$id;->account_new_password:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v2, "mView.account_new_password"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/magoware/magoware/webtv/R$id;->account_confirm_password:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const-string v4, "mView.account_confirm_password"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->access$setError$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;Z)V

    .line 48
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_confirm_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;

    const v2, 0x7f14035b

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/magoware/magoware/webtv/R$id;->account_confirm_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/magoware/magoware/webtv/R$id;->account_new_password:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->access$setPassword(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;Ljava/lang/String;Landroid/view/View;)V

    .line 53
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->access$hideKeyboard(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;Landroid/app/Activity;)V

    return-void
.end method
