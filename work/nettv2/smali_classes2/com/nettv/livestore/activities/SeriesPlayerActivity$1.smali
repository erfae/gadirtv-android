.class Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;
.super Ljava/lang/Object;
.source "SeriesPlayerActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/SeriesPlayerActivity;->showResumeDlgFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/SeriesPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v2, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->contentUrl:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->access$000(Lcom/nettv/livestore/activities/SeriesPlayerActivity;Ljava/lang/String;J)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v2, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->access$100(Lcom/nettv/livestore/activities/SeriesPlayerActivity;)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->recyclerEpisodes:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onOkClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->resumeDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->recyclerEpisodes:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->contentUrl:Ljava/lang/String;

    iget-wide v2, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->last_position:J

    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->access$000(Lcom/nettv/livestore/activities/SeriesPlayerActivity;Ljava/lang/String;J)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->access$100(Lcom/nettv/livestore/activities/SeriesPlayerActivity;)V

    return-void
.end method
