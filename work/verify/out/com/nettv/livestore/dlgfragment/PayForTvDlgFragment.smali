.class public Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "PayForTvDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$OnButtonClickListener;
    }
.end annotation


# instance fields
.field public btn_cancel:Landroid/widget/Button;

.field public btn_ok:Landroid/widget/Button;

.field public et_mac:Landroid/widget/EditText;

.field public listener:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$OnButtonClickListener;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$3d_W2eXoutMqYiAn6eV6C8DB_T4(Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rswLIz6E3pbHZ3Gavo7-IG6xWYQ(Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f0b03e4

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0b0128

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    const v0, 0x7f0b0096

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->btn_ok:Landroid/widget/Button;

    const v0, 0x7f0b0089

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->btn_cancel:Landroid/widget/Button;

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_52

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nettv/livestore/utils/Utils;->getSamsungMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Samsung Mac"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$OnButtonClickListener;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nettv/livestore/utils/Utils;->getSamsungMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$OnButtonClickListener;->onOkClick(Ljava/lang/String;)V

    goto :goto_60

    .line 5
    :cond_52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Please put the mac address!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_60
    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
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
    .registers 8

    const p3, 0x7f0e0068

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->initView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 4
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->btn_ok:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->btn_cancel:Landroid/widget/Button;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    const/4 p3, 0x1

    new-array v1, p3, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 7
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    new-instance v1, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;-><init>(Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->btn_ok:Landroid/widget/Button;

    new-instance v1, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->btn_cancel:Landroid/widget/Button;

    new-instance v0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->btn_ok:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    return-object p1
.end method

.method public setOnButtonClickListener(Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$OnButtonClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$OnButtonClickListener;

    return-void
.end method
