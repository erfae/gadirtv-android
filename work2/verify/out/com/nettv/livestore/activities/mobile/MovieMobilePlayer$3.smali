.class Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$3;
.super Ljava/lang/Object;
.source "MovieMobilePlayer.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->showResumeDlgFragment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

.field public final synthetic val$contentUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$3;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iput-object p2, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$3;->val$contentUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$3;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$3;->val$contentUrl:Ljava/lang/String;

    const-wide/16 v2, 0x0

    # invokes: Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->playVideo(Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->access$300(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$3;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$3;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    # invokes: Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->listTimer()V
    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->access$400(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    return-void
.end method

.method public onOkClick()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$3;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->resumeDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$3;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$3;->val$contentUrl:Ljava/lang/String;

    iget-wide v2, v0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->last_position:J

    # invokes: Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->playVideo(Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->access$300(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;Ljava/lang/String;J)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$3;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$3;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    # invokes: Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->listTimer()V
    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->access$400(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    return-void
.end method
