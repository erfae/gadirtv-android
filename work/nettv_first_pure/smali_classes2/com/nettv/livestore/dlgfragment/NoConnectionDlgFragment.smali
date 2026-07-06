.class public Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "NoConnectionDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment$OnRetryClickListener;
    }
.end annotation


# instance fields
.field public btn_retry:Landroid/widget/Button;

.field public context:Landroid/content/Context;

.field public description:Ljava/lang/String;

.field public listener:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment$OnRetryClickListener;

.field public txt_check_network:Landroid/widget/TextView;

.field public txt_no_connection:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$4g7uTPy0Vka94EbLkJi46VyJPh4(Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->lambda$onCreateView$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$obToUZaFqoVd39zAX1KvTr-7UJ0(Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->description:Ljava/lang/String;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0b03e7

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->txt_no_connection:Landroid/widget/TextView;

    const v0, 0x7f0b03c4

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->txt_check_network:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->txt_no_connection:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getNo_connection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->txt_check_network:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b009d

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->btn_retry:Landroid/widget/Button;

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getRetry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->btn_retry:Landroid/widget/Button;

    new-instance v0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->btn_retry:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment$OnRetryClickListener;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment$OnRetryClickListener;->onRetryClick()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->context:Landroid/content/Context;

    .line 3
    iput-object p1, v0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->description:Ljava/lang/String;

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

    const p3, 0x7f0e0066

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->initView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public setOnRetryClickListener(Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment$OnRetryClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment$OnRetryClickListener;

    return-void
.end method
