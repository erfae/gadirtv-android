.class Lcom/magoware/magoware/webtv/vr/VRTest$2;
.super Ljava/lang/Object;
.source "VRTest.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 97
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vr/VRTest$2;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seekBar",
            "progress",
            "fromUser"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 101
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vr/VRTest$2;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    return-void
.end method
