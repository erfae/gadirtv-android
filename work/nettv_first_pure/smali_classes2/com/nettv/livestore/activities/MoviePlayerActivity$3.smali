.class Lcom/nettv/livestore/activities/MoviePlayerActivity$3;
.super Ljava/lang/Object;
.source "MoviePlayerActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/MoviePlayerActivity;->showResumeDlgFragment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

.field public final synthetic val$contentUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$3;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iput-object p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$3;->val$contentUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$3;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$3;->val$contentUrl:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->access$300(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$3;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$3;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->access$400(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    return-void
.end method

.method public onOkClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$3;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->resumeDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$3;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$3;->val$contentUrl:Ljava/lang/String;

    iget-wide v2, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->last_position:J

    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->access$300(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/lang/String;J)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$3;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$3;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->access$400(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    return-void
.end method
