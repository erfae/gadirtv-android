.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "EnterPinFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment$onCreateView$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "------"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment$onCreateView$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;->access$getArgs$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentArgs;->getPin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment$onCreateView$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;->access$getMView$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/magoware/magoware/webtv/R$id;->pin_edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, "mView.pin_edittext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment$onCreateView$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;->access$getMView$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/magoware/magoware/webtv/R$id;->pin_edittext:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment$onCreateView$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;->access$getArgs$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentArgs;->getPin()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment$onCreateView$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;->access$getMView$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment$onCreateView$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;->access$getArgs$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentArgs;->getShowAdult()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;->access$setAdultChannels(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;Landroid/view/View;Z)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment$onCreateView$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;->access$getMView$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment$onCreateView$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;

    const v1, 0x7f1401f7

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_0
    return-void
.end method
