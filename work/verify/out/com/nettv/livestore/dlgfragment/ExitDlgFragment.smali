.class public Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ExitDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;
    }
.end annotation


# instance fields
.field public btn_cancel:Landroid/widget/Button;

.field public btn_ok:Landroid/widget/Button;

.field public description:Ljava/lang/String;

.field public header:Ljava/lang/String;

.field public listener:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;

.field public str_no:Ljava/lang/String;

.field public str_yes:Ljava/lang/String;

.field public txt_description:Landroid/widget/TextView;

.field public txt_quit:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$lVqoPEukhF_gYv3xvbTOMUtj9VE(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->lambda$initView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q2cMs__56GVUeOzqB9685oJ0Rk0(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->lambda$onCreateView$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uecrIxHw7bIfsbzty8TQmDQjtA8(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0b03ef

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->txt_quit:Landroid/widget/TextView;

    const v0, 0x7f0b03cb

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->txt_description:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->txt_quit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->txt_description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0096

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->btn_ok:Landroid/widget/Button;

    const v0, 0x7f0b0089

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->btn_cancel:Landroid/widget/Button;

    .line 7
    new-instance v0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->btn_ok:Landroid/widget/Button;

    new-instance v0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->btn_ok:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->str_yes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->btn_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->str_no:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;->onCancelClick()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic lambda$initView$2(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;->onOkClick()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_12

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_12

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;
    .registers 5

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->header:Ljava/lang/String;

    .line 3
    iput-object p1, v0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->description:Ljava/lang/String;

    .line 4
    iput-object p2, v0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->str_yes:Ljava/lang/String;

    .line 5
    iput-object p3, v0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->str_no:Ljava/lang/String;

    return-object v0
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
    .registers 5

    const p3, 0x7f0e005d

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->initView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    return-object p1
.end method

.method public setOkButtonClickListener(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;

    return-void
.end method
