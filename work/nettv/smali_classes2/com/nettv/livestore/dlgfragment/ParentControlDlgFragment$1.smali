.class Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment$1;
.super Ljava/lang/Object;
.source "ParentControlDlgFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;

    iget-object v0, v0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->pin_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;

    iget-object v0, p1, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_password:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getPass_incorrect()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;

    iget-object v0, p1, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->et_password:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/nettv/livestore/dlgfragment/ParentControlDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getPass_incorrect()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
