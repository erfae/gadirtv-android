.class public Lcom/nettv/livestore/dlgfragment/LockDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "LockDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;
    }
.end annotation


# instance fields
.field public btn_ok:Landroid/widget/Button;

.field public et_pass:Landroid/widget/EditText;

.field public listener:Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;

.field public pin_code:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$VIZ2IjPfmqWus74h9fYrJUKjfe8(Lcom/nettv/livestore/dlgfragment/LockDlgFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->et_pass:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;->OnPutPinCode()V

    goto :goto_3d

    .line 3
    :cond_16
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->pin_code:Ljava/lang/String;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->et_pass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;->OnPinCorrect()V

    goto :goto_3d

    .line 6
    :cond_31
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;->OnPinIncorrect()V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->et_pass:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3d
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/LockDlgFragment;
    .registers 2

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->pin_code:Ljava/lang/String;

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
    .registers 7

    const p3, 0x7f0e0063

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b012b

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->et_pass:Landroid/widget/EditText;

    const p2, 0x7f0b0096

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->btn_ok:Landroid/widget/Button;

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->et_pass:Landroid/widget/EditText;

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, p3, v0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->btn_ok:Landroid/widget/Button;

    new-instance p3, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setOnPinEventListener(Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/LockDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;

    return-void
.end method
