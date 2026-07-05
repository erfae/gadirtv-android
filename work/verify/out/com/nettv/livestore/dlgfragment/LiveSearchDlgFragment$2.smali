.class Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$2;
.super Ljava/lang/Object;
.source "LiveSearchDlgFragment.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->showLockDlgFragment(Lcom/nettv/livestore/models/EPGChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

.field public final synthetic val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;Lcom/nettv/livestore/models/EPGChannel;)V
    .registers 3

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$2;->this$0:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPinCorrect()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$2;->this$0:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    iget-object v0, v0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$2;->val$epgChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-interface {v0, v1}, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;->onSelectCurrentChannel(Lcom/nettv/livestore/models/EPGChannel;)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$2;->this$0:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public OnPinIncorrect()V
    .registers 4

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$2;->this$0:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    iget-object v1, v0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getPin_incorrect()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public OnPutPinCode()V
    .registers 4

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$2;->this$0:Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;

    iget-object v1, v0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getPut_pin_code()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
