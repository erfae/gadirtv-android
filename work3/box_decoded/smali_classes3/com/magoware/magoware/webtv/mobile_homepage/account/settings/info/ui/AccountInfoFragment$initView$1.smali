.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;
.super Ljava/lang/Object;
.source "AccountInfoFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->initView(Landroid/view/View;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;)V
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
.field final synthetic $accountInfo:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;Landroid/view/View;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$accountInfo:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 62
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 63
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$view:Landroid/view/View;

    sget v2, Lcom/magoware/magoware/webtv/R$id;->account_first_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v2, "view.account_first_name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "firstname"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$view:Landroid/view/View;

    sget v3, Lcom/magoware/magoware/webtv/R$id;->account_last_name:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v3, "view.account_last_name"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "lastName"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$view:Landroid/view/View;

    sget v4, Lcom/magoware/magoware/webtv/R$id;->account_address:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v4, "view.account_address"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "address"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$view:Landroid/view/View;

    sget v5, Lcom/magoware/magoware/webtv/R$id;->account_city:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v5, "view.account_city"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "city"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$view:Landroid/view/View;

    sget v6, Lcom/magoware/magoware/webtv/R$id;->account_email:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v6, "view.account_email"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "email"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$view:Landroid/view/View;

    sget v6, Lcom/magoware/magoware/webtv/R$id;->account_telephone:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v6, "view.account_telephone"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "telephone"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$view:Landroid/view/View;

    sget v7, Lcom/magoware/magoware/webtv/R$id;->account_country:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v7, "view.account_country"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "country"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$accountInfo:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->setFirstName(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$accountInfo:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->setLastName(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$accountInfo:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->setAddress(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$accountInfo:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->setCity(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$accountInfo:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->setTelephone(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$accountInfo:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;->setCountry(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$accountInfo:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;

    invoke-static {v0, v1, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->access$setAccount(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;Ljava/util/HashMap;)V

    .line 79
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->$view:Landroid/view/View;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment$initView$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;

    const v1, 0x7f1400c0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
