.class Lcom/nettv/livestore/activities/SeriesPlayerActivity$2;
.super Ljava/lang/Object;
.source "SeriesPlayerActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/SeriesPlayerActivity;->showExitDlgFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/SeriesPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    # invokes: Lcom/nettv/livestore/activities/SeriesPlayerActivity;->listTimer()V
    invoke-static {v0}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->access$100(Lcom/nettv/livestore/activities/SeriesPlayerActivity;)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onOkClick()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    invoke-virtual {v0}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->releasePlayer()V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$2;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
