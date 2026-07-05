.class Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;
.super Ljava/lang/Object;
.source "PayForTvDlgFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public count:I

.field public final synthetic this$0:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;->count:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 8

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;

    iget-object p1, p1, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 2
    iget v0, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;->count:I

    const/16 v1, 0xe

    const/16 v2, 0xb

    const/16 v3, 0x8

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-gt v0, p1, :cond_5e

    if-eq p1, v5, :cond_26

    if-eq p1, v4, :cond_26

    if-eq p1, v3, :cond_26

    if-eq p1, v2, :cond_26

    if-ne p1, v1, :cond_5e

    .line 3
    :cond_26
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;

    iget-object p1, p1, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;

    iget-object v1, v1, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;

    iget-object p1, p1, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;

    iget-object v0, v0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_a3

    :cond_5e
    if-lt v0, p1, :cond_a3

    if-eq p1, v5, :cond_6a

    if-eq p1, v4, :cond_6a

    if-eq p1, v3, :cond_6a

    if-eq p1, v2, :cond_6a

    if-ne p1, v1, :cond_a3

    .line 6
    :cond_6a
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;

    iget-object p1, p1, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;

    iget-object v2, v2, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    .line 7
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;

    iget-object p1, p1, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;

    iget-object v0, v0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 13
    :cond_a3
    :goto_a3
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;

    iget-object p1, p1, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment;->et_mac:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$1;->count:I

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
