.class public Lcom/magoware/magoware/webtv/vr/MyVrVideoView;
.super Lcom/google/vr/sdk/widgets/video/VrVideoView;
.source "MyVrVideoView.java"


# instance fields
.field private isVideoPlaying:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attributeSet"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/VrVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->isVideoPlaying:Z

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 18
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isVideoPlaying()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->isVideoPlaying:Z

    return v0
.end method

.method public pauseVideo()V
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->pauseVideo()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->isVideoPlaying:Z

    return-void
.end method

.method public playVideo()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->playVideo()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->isVideoPlaying:Z

    return-void
.end method
