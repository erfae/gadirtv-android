.class Lcom/magoware/magoware/webtv/vr/VRTest$MyVrVideoEventListener;
.super Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;
.source "VRTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vr/VRTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyVrVideoEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vr/VRTest;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/vr/VRTest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vr/VRTest$MyVrVideoEventListener;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/vr/VRTest;Lcom/magoware/magoware/webtv/vr/VRTest$1;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vr/VRTest$MyVrVideoEventListener;-><init>(Lcom/magoware/magoware/webtv/vr/VRTest;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 176
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;->onClick()V

    .line 177
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest$MyVrVideoEventListener;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoViewUi:Lcom/magoware/magoware/webtv/vr/VrVideoViewUi;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vr/VrVideoViewUi;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest$MyVrVideoEventListener;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoViewUi:Lcom/magoware/magoware/webtv/vr/VrVideoViewUi;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/vr/VrVideoViewUi;->setVisibility(I)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest$MyVrVideoEventListener;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoViewUi:Lcom/magoware/magoware/webtv/vr/VrVideoViewUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/vr/VrVideoViewUi;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onDisplayModeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newDisplayMode"
        }
    .end annotation

    return-void
.end method

.method public onLoadError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "errorMessage"
        }
    .end annotation

    .line 190
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;->onLoadError(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadSuccess()V
    .locals 1

    .line 185
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;->onLoadSuccess()V

    .line 186
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest$MyVrVideoEventListener;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/vr/VRTest;->access$100(Lcom/magoware/magoware/webtv/vr/VRTest;)V

    return-void
.end method
