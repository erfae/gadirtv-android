.class Lcom/nettv/livestore/activities/CatchUpPlayerActivity$4;
.super Ljava/lang/Object;
.source "CatchUpPlayerActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->showExitDlgFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/CatchUpPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$4;->this$0:Lcom/nettv/livestore/activities/CatchUpPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 0

    return-void
.end method

.method public onOkClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$4;->this$0:Lcom/nettv/livestore/activities/CatchUpPlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$4;->this$0:Lcom/nettv/livestore/activities/CatchUpPlayerActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->access$100(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$4;->this$0:Lcom/nettv/livestore/activities/CatchUpPlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
