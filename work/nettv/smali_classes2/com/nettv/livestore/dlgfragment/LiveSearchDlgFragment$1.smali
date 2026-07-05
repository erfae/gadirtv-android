.class Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$1;
.super Ljava/lang/Object;
.source "LiveSearchDlgFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->access$000(Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;Ljava/lang/String;)V

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
