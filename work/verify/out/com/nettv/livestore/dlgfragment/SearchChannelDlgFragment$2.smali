.class Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$2;
.super Ljava/lang/Object;
.source "SearchChannelDlgFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$2;->this$0:Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$2;->this$0:Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;

    iget-object v0, p1, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->searchTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$2;->this$0:Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;

    # invokes: Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->searchTimer()V
    invoke-static {p1}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->access$000(Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;)V

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
