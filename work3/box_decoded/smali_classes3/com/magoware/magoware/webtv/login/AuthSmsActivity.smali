.class public Lcom/magoware/magoware/webtv/login/AuthSmsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AuthSmsActivity.java"


# instance fields
.field auth_sms_background:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b00d4
    .end annotation
.end field

.field auth_sms_countdown:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b00d7
    .end annotation
.end field

.field auth_sms_next_btn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b00d8
    .end annotation
.end field

.field auth_sms_resend_btn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b00d9
    .end annotation
.end field

.field hotel_sms_code:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b00d5
    .end annotation
.end field

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getSmsCode()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getSmsCodeObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$AuthSmsActivity$uqPLsL_7zChMkprRbyTIR8LxYyA;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$AuthSmsActivity$uqPLsL_7zChMkprRbyTIR8LxYyA;-><init>(Lcom/magoware/magoware/webtv/login/AuthSmsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initCountDown()V
    .locals 7

    .line 117
    new-instance v6, Lcom/magoware/magoware/webtv/login/AuthSmsActivity$1;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity$1;-><init>(Lcom/magoware/magoware/webtv/login/AuthSmsActivity;JJ)V

    .line 132
    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity$1;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private postAuthSmsVerification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "smsCode"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->postSmsVerificationObservable(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/login/-$$Lambda$AuthSmsActivity$yHZqEmIdKYTFpd-AgQqXnlNK04M;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$AuthSmsActivity$yHZqEmIdKYTFpd-AgQqXnlNK04M;-><init>(Lcom/magoware/magoware/webtv/login/AuthSmsActivity;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$getSmsCode$2$AuthSmsActivity(Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->hotel_sms_code:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_resend_btn:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->initCountDown()V

    return-void
.end method

.method public synthetic lambda$onCreate$0$AuthSmsActivity(Landroid/view/View;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->username:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->hotel_sms_code:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 54
    :try_start_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->hotel_sms_code:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->username:Ljava/lang/String;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->hotel_sms_code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->postAuthSmsVerification(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_next_btn:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const p1, 0x7f1400de

    const/4 v0, 0x1

    .line 59
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$1$AuthSmsActivity(Landroid/view/View;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_resend_btn:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 66
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->getSmsCode()V

    return-void
.end method

.method public synthetic lambda$postAuthSmsVerification$3$AuthSmsActivity(Lcom/google/gson/JsonObject;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "response_code"

    .line 95
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    :try_start_0
    const-string v1, "response_object"

    .line 97
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v1, "company_id"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    sput p1, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, -0x1

    .line 101
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->setResult(I)V

    .line 102
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->finish()V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "status"

    .line 103
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "incorrect_code"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0x7f140494

    .line 104
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "extra_data"

    .line 107
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    const p1, 0x7f14049e

    .line 109
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 112
    :goto_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_next_btn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 80
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->setResult(I)V

    .line 82
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->finish()V

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

    .line 43
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0026

    .line 44
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->setContentView(I)V

    .line 45
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 47
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 49
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->username:Ljava/lang/String;

    .line 51
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_next_btn:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/login/-$$Lambda$AuthSmsActivity$HEj8dgqzfDvaVfzUm84ZGcCawf8;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$AuthSmsActivity$HEj8dgqzfDvaVfzUm84ZGcCawf8;-><init>(Lcom/magoware/magoware/webtv/login/AuthSmsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_resend_btn:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/login/-$$Lambda$AuthSmsActivity$TTqAnUWhXEW4olRml3TFeMz8XGQ;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$AuthSmsActivity$TTqAnUWhXEW4olRml3TFeMz8XGQ;-><init>(Lcom/magoware/magoware/webtv/login/AuthSmsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f0803c5

    goto :goto_0

    :cond_0
    const p1, 0x7f0803c6

    .line 71
    :goto_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_background:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 75
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->initCountDown()V

    return-void
.end method
