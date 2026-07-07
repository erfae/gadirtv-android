.class Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$3;
.super Ljava/lang/Object;
.source "ExoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->updateButtonVisibilities()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 747
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$3;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 750
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$3;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$400(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$3;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$500(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$600(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Ljava/lang/CharSequence;I)V

    return-void
.end method
