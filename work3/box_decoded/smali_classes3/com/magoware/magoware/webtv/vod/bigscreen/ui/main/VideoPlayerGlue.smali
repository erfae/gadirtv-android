.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;
.super Landroidx/leanback/media/PlaybackTransportControlGlue;
.source "VideoPlayerGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue$OnActionClickedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/leanback/media/PlaybackTransportControlGlue<",
        "Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TEN_SECONDS:J


# instance fields
.field private final mActionListener:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue$OnActionClickedListener;

.field private mAudioAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

.field private mClosedCaptioningAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

.field private mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

.field private mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

.field private mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

.field private mSkipNextAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

.field private mSkipPreviousAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

.field private mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

.field private mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

.field private mVideoAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

.field private showAudio:Ljava/lang/Boolean;

.field private showCC:Ljava/lang/Boolean;

.field private showVideo:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->TEN_SECONDS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue$OnActionClickedListener;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "playerAdapter",
            "actionListener",
            "showCc",
            "showAudio",
            "showVideo"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Landroidx/leanback/media/PlaybackTransportControlGlue;-><init>(Landroid/content/Context;Landroidx/leanback/media/PlayerAdapter;)V

    .line 84
    iput-object p3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mActionListener:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue$OnActionClickedListener;

    .line 85
    iput-object p4, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->showCC:Ljava/lang/Boolean;

    .line 86
    iput-object p5, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->showAudio:Ljava/lang/Boolean;

    .line 87
    iput-object p6, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->showVideo:Ljava/lang/Boolean;

    .line 89
    new-instance p2, Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    invoke-direct {p2, p1}, Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mSkipPreviousAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    .line 90
    new-instance p2, Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    invoke-direct {p2, p1}, Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mSkipNextAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    .line 91
    new-instance p2, Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-direct {p2, p1}, Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    .line 92
    new-instance p2, Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-direct {p2, p1}, Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    .line 94
    new-instance p2, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-direct {p2, p1}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    const/4 p3, 0x1

    .line 95
    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->setIndex(I)V

    .line 96
    new-instance p2, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-direct {p2, p1}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    .line 97
    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->setIndex(I)V

    .line 98
    new-instance p2, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-direct {p2, p1}, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    .line 99
    new-instance p2, Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    invoke-direct {p2, p1}, Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mClosedCaptioningAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    .line 100
    new-instance p2, Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    invoke-direct {p2, p1}, Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mAudioAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f080172

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 102
    new-instance p2, Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    invoke-direct {p2, p1}, Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mVideoAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f080174

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private dispatchAction(Landroidx/leanback/widget/Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    if-ne p1, v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->rewind()V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-ne p1, v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->fastForward()V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mClosedCaptioningAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    if-ne p1, v0, :cond_2

    .line 167
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mActionListener:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue$OnActionClickedListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue$OnActionClickedListener;->onClosedCaptionsClicked()V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mAudioAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    if-ne p1, v0, :cond_3

    .line 169
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mActionListener:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue$OnActionClickedListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue$OnActionClickedListener;->onAudioClicked()V

    goto :goto_0

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mVideoAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    if-ne p1, v0, :cond_4

    .line 171
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mActionListener:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue$OnActionClickedListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue$OnActionClickedListener;->onVideoClicked()V

    goto :goto_0

    .line 172
    :cond_4
    instance-of v0, p1, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;

    if-eqz v0, :cond_5

    .line 173
    check-cast p1, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;

    .line 174
    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->nextIndex()V

    .line 177
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->getControlsRow()Landroidx/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->notifyActionChanged(Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private notifyActionChanged(Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "adapter"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 183
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 p1, 0x1

    .line 185
    invoke-virtual {p2, v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->notifyArrayItemRangeChanged(II)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldDispatchAction(Landroidx/leanback/widget/Action;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mClosedCaptioningAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mAudioAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mVideoAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public fastForward()V
    .locals 5

    .line 215
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->getCurrentPosition()J

    move-result-wide v0

    sget-wide v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->TEN_SECONDS:J

    add-long/2addr v0, v2

    .line 217
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->getDuration()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->getDuration()J

    move-result-wide v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->getPlayerAdapter()Landroidx/leanback/media/PlayerAdapter;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->seekTo(J)V

    :cond_1
    return-void
.end method

.method public next()V
    .locals 0

    return-void
.end method

.method public notifyAudioAction()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mAudioAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->getControlsRow()Landroidx/leanback/widget/PlaybackControlsRow;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->notifyActionChanged(Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    return-void
.end method

.method public onActionClicked(Landroidx/leanback/widget/Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->shouldDispatchAction(Landroidx/leanback/widget/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->dispatchAction(Landroidx/leanback/widget/Action;)V

    return-void

    .line 145
    :cond_0
    invoke-super {p0, p1}, Landroidx/leanback/media/PlaybackTransportControlGlue;->onActionClicked(Landroidx/leanback/widget/Action;)V

    return-void
.end method

.method protected onCreatePrimaryActions(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 112
    invoke-super {p0, p1}, Landroidx/leanback/media/PlaybackTransportControlGlue;->onCreatePrimaryActions(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 114
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->showCC:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mClosedCaptioningAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->showAudio:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mAudioAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->showVideo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->mVideoAction:Landroidx/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected onCreateSecondaryActions(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 132
    invoke-super {p0, p1}, Landroidx/leanback/media/PlaybackTransportControlGlue;->onCreateSecondaryActions(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    return-void
.end method

.method public previous()V
    .locals 0

    return-void
.end method

.method public rewind()V
    .locals 5

    .line 206
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->getCurrentPosition()J

    move-result-wide v0

    sget-wide v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->TEN_SECONDS:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VideoPlayerGlue;->getPlayerAdapter()Landroidx/leanback/media/PlayerAdapter;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->seekTo(J)V

    return-void
.end method
