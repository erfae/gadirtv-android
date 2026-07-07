.class public Lcom/magoware/magoware/webtv/payment/ChoosePaymentActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChoosePaymentActivity.java"


# instance fields
.field pay_pal_btn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b04eb
    .end annotation
.end field

.field voucher_code_btn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b06ee
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$ChoosePaymentActivity(Landroid/view/View;)V
    .locals 1

    .line 26
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/magoware/magoware/webtv/payment/VoucherActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/payment/ChoosePaymentActivity;->startActivity(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/payment/ChoosePaymentActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$ChoosePaymentActivity(Landroid/view/View;)V
    .locals 1

    .line 31
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/payment/ChoosePaymentActivity;->startActivity(Landroid/content/Intent;)V

    .line 32
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/payment/ChoosePaymentActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e002b

    .line 22
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/payment/ChoosePaymentActivity;->setContentView(I)V

    .line 23
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 25
    iget-object p1, p0, Lcom/magoware/magoware/webtv/payment/ChoosePaymentActivity;->voucher_code_btn:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/payment/-$$Lambda$ChoosePaymentActivity$eAT99mtPae--aCLIConpmy4akUQ;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/payment/-$$Lambda$ChoosePaymentActivity$eAT99mtPae--aCLIConpmy4akUQ;-><init>(Lcom/magoware/magoware/webtv/payment/ChoosePaymentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lcom/magoware/magoware/webtv/payment/ChoosePaymentActivity;->pay_pal_btn:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/payment/-$$Lambda$ChoosePaymentActivity$12kCFDjUQhJz_P0qs_yq7LCcIyQ;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/payment/-$$Lambda$ChoosePaymentActivity$12kCFDjUQhJz_P0qs_yq7LCcIyQ;-><init>(Lcom/magoware/magoware/webtv/payment/ChoosePaymentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
