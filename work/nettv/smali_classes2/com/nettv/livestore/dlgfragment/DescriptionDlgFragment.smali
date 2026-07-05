.class public Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "DescriptionDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$ButtonClickListener;
    }
.end annotation


# instance fields
.field public btn_cancel:Landroid/widget/Button;

.field public btn_reload:Landroid/widget/Button;

.field public context:Landroid/content/Context;

.field public description:Ljava/lang/String;

.field public listener:Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$ButtonClickListener;

.field public playlist_size:I

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public str_device_key:Landroid/widget/TextView;

.field public str_mac_address:Landroid/widget/TextView;

.field public subscription:Ljava/lang/String;

.field public txt_description:Landroid/widget/TextView;

.field public txt_device_key:Landroid/widget/TextView;

.field public txt_mac_address:Landroid/widget/TextView;

.field public txt_subscription:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$CsTmsohb8nBlm-cxsfVNLmcpC6o(Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ztzUfKzxk4Yp8d65J5oEi0y9AIA(Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->playlist_size:I

    .line 3
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b03cb

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->txt_description:Landroid/widget/TextView;

    const v0, 0x7f0b03fb

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->txt_subscription:Landroid/widget/TextView;

    const v0, 0x7f0b03df

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->txt_mac_address:Landroid/widget/TextView;

    const v0, 0x7f0b03cc

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->txt_device_key:Landroid/widget/TextView;

    const v0, 0x7f0b035e

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->str_device_key:Landroid/widget/TextView;

    const v0, 0x7f0b009b

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->btn_reload:Landroid/widget/Button;

    const v0, 0x7f0b0089

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->btn_cancel:Landroid/widget/Button;

    const v0, 0x7f0b0368

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->str_mac_address:Landroid/widget/TextView;

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->btn_reload:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getStr_continue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->btn_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->str_device_key:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getDevice_key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget p1, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->playlist_size:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->btn_reload:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->btn_reload:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getOpen_website()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$ButtonClickListener;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$ButtonClickListener;->onContinueClick()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$ButtonClickListener;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$ButtonClickListener;->onCancelClick()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->context:Landroid/content/Context;

    .line 3
    iput-object p1, v0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->subscription:Ljava/lang/String;

    .line 4
    iput-object p2, v0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->description:Ljava/lang/String;

    .line 5
    iput p3, v0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->playlist_size:I

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f14013e

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0e005b

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 3
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceAppInfo()Lcom/nettv/livestore/models/AppInfoModel;

    .line 5
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->initView(Landroid/view/View;)V

    .line 6
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->txt_subscription:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->subscription:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->txt_description:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->description:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->txt_mac_address:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMacAddress()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->txt_device_key:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceDeviceKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->str_mac_address:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getMac_address()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->btn_reload:Landroid/widget/Button;

    new-instance p3, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->btn_cancel:Landroid/widget/Button;

    new-instance p3, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->btn_reload:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    return-object p1
.end method

.method public setButtonClickListener(Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$ButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$ButtonClickListener;

    return-void
.end method
