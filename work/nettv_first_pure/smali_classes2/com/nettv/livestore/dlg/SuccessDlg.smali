.class public Lcom/nettv/livestore/dlg/SuccessDlg;
.super Landroid/app/Dialog;
.source "SuccessDlg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;
    }
.end annotation


# instance fields
.field public btn_cancel:Landroid/widget/Button;

.field public btn_ok:Landroid/widget/Button;

.field public listener:Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;


# direct methods
.method public static synthetic $r8$lambda$NATnKr0vgqU94vR9EXMK4wGliS4(Lcom/nettv/livestore/dlg/SuccessDlg;Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/dlg/SuccessDlg;->lambda$new$0(Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RgeGm_Y388bhZTTSiH9XDGW2gGc(Lcom/nettv/livestore/dlg/SuccessDlg;Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/dlg/SuccessDlg;->lambda$new$1(Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p5, p0, Lcom/nettv/livestore/dlg/SuccessDlg;->listener:Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0e0048

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0096

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlg/SuccessDlg;->btn_ok:Landroid/widget/Button;

    const v0, 0x7f0b0089

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlg/SuccessDlg;->btn_cancel:Landroid/widget/Button;

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/dlg/SuccessDlg;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p3, p0, Lcom/nettv/livestore/dlg/SuccessDlg;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0b03e4

    .line 10
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const p3, 0x7f0b03cb

    .line 11
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 12
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p2, p0, Lcom/nettv/livestore/dlg/SuccessDlg;->btn_ok:Landroid/widget/Button;

    new-instance p3, Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p5, v2}, Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p2, p0, Lcom/nettv/livestore/dlg/SuccessDlg;->btn_cancel:Landroid/widget/Button;

    new-instance p3, Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p5, p1}, Lcom/nettv/livestore/dlg/SuccessDlg$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/dlg/SuccessDlg;->btn_ok:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-interface {p1}, Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;->onOkClick()V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-interface {p1}, Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;->onCancelClick()V

    return-void
.end method
