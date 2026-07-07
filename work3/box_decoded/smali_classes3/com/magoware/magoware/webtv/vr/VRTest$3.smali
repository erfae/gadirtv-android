.class Lcom/magoware/magoware/webtv/vr/VRTest$3;
.super Ljava/lang/Object;
.source "VRTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vr/VRTest;->setupVrVideoViewUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vr/VRTest;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vr/VRTest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vr/VRTest$3;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

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
            "v"
        }
    .end annotation

    .line 121
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vr/VRTest$3;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vr/VRTest$3;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->isVideoPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vr/VRTest$3;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->pauseVideo()V

    .line 127
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vr/VRTest$3;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/vr/VRTest;->playPauseToggle:Landroid/widget/ImageButton;

    const v0, 0x7f080348

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 128
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vr/VRTest$3;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/vr/VRTest;->playPauseToggle:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest$3;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vr/VRTest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140334

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vr/VRTest$3;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->playVideo()V

    .line 131
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vr/VRTest$3;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/vr/VRTest;->playPauseToggle:Landroid/widget/ImageButton;

    const v0, 0x7f08033b

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 132
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vr/VRTest$3;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/vr/VRTest;->playPauseToggle:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest$3;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vr/VRTest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14031d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
