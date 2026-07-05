.class Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$1;
.super Ljava/lang/Object;
.source "AddPlaylistDlgFragment.java"

# interfaces
.implements Lcom/nettv/livestore/dlg/SuccessDlg$OkButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->showSuccessDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    iget-object v0, v0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$SuccessAddedListener;

    invoke-interface {v0}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$SuccessAddedListener;->onSkip()V

    return-void
.end method

.method public onOkClick()V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$1;->this$0:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    iget-object v0, v0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$SuccessAddedListener;

    invoke-interface {v0}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$SuccessAddedListener;->onSkip()V

    return-void
.end method
