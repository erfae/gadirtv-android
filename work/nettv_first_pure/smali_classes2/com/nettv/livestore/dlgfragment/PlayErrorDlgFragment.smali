.class public Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "PlayErrorDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$OkButtonClickListener;
    }
.end annotation


# instance fields
.field public btn_cancel:Landroid/widget/Button;

.field public btn_ok:Landroid/widget/Button;

.field public description:Ljava/lang/String;

.field public header:Ljava/lang/String;

.field public is_vod:Z

.field public listener:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$OkButtonClickListener;

.field public txt_description:Landroid/widget/TextView;

.field public txt_quit:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$-b3ezED4-ck2E29OcKWmcnK0GRk(Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ABNSnnWgh1XVcbwyKhaVWUbvEq8(Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->is_vod:Z

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0b03ef

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->txt_quit:Landroid/widget/TextView;

    const v0, 0x7f0b03cb

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->txt_description:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->txt_quit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->txt_description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0096

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->btn_ok:Landroid/widget/Button;

    const v0, 0x7f0b0089

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->btn_cancel:Landroid/widget/Button;

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->btn_ok:Landroid/widget/Button;

    const-string v0, "Exit"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->btn_cancel:Landroid/widget/Button;

    const-string v0, "Play Next"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->txt_quit:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 10
    iget-boolean p1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->is_vod:Z

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->btn_cancel:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->btn_ok:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->btn_cancel:Landroid/widget/Button;

    new-instance v1, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->btn_ok:Landroid/widget/Button;

    new-instance v1, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$OkButtonClickListener;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$OkButtonClickListener;->onCancelClick()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$OkButtonClickListener;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$OkButtonClickListener;->onOkClick()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->header:Ljava/lang/String;

    .line 3
    iput-object p1, v0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->description:Ljava/lang/String;

    .line 4
    iput-boolean p2, v0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->is_vod:Z

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

    const p3, 0x7f0e005d

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public setOkButtonClickListener(Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$OkButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$OkButtonClickListener;

    return-void
.end method
