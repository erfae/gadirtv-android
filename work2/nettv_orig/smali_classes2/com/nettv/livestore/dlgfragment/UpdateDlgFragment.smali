.class public Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "UpdateDlgFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment$UpdateAvailableListener;
    }
.end annotation


# instance fields
.field public btn_cancel:Landroid/widget/Button;

.field public btn_ok:Landroid/widget/Button;

.field public description:Ljava/lang/String;

.field public is_available:Z

.field public listener:Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment$UpdateAvailableListener;

.field public str_cancel:Ljava/lang/String;

.field public str_update:Ljava/lang/String;

.field public txt_description:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->str_update:Ljava/lang/String;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->str_cancel:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->is_available:Z

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b03cb

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->txt_description:Landroid/widget/TextView;

    const v0, 0x7f0b0096

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->btn_ok:Landroid/widget/Button;

    const v0, 0x7f0b0089

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->btn_cancel:Landroid/widget/Button;

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->btn_ok:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->txt_description:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->btn_ok:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->str_update:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->btn_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->str_cancel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;
    .locals 0

    .line 1
    new-instance p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;

    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->description:Ljava/lang/String;

    .line 3
    iput-boolean p4, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->is_available:Z

    .line 4
    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->str_update:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->str_cancel:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0089

    if-eq p1, v0, :cond_2

    const v0, 0x7f0b0096

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->is_available:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment$UpdateAvailableListener;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment$UpdateAvailableListener;->onUpdateAvailable()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_0
    return-void
.end method

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

    const p3, 0x7f0e006f

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public setOnUpdateAvailableListener(Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment$UpdateAvailableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/UpdateDlgFragment$UpdateAvailableListener;

    return-void
.end method
