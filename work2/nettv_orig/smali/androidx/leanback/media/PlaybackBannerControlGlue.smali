.class public Landroidx/leanback/media/PlaybackBannerControlGlue;
.super Landroidx/leanback/media/PlaybackBaseControlGlue;
.source "PlaybackBannerControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/media/PlaybackBannerControlGlue$ACTION_;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/leanback/media/PlayerAdapter;",
        ">",
        "Landroidx/leanback/media/PlaybackBaseControlGlue<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final ACTION_CUSTOM_LEFT_FIRST:I = 0x1

.field public static final ACTION_CUSTOM_RIGHT_FIRST:I = 0x1000

.field public static final ACTION_FAST_FORWARD:I = 0x80

.field public static final ACTION_PLAY_PAUSE:I = 0x40

.field public static final ACTION_REWIND:I = 0x20

.field public static final ACTION_SKIP_TO_NEXT:I = 0x100

.field public static final ACTION_SKIP_TO_PREVIOUS:I = 0x10

.field private static final NUMBER_OF_SEEK_SPEEDS:I = 0x5

.field public static final PLAYBACK_SPEED_FAST_L0:I = 0xa

.field public static final PLAYBACK_SPEED_FAST_L1:I = 0xb

.field public static final PLAYBACK_SPEED_FAST_L2:I = 0xc

.field public static final PLAYBACK_SPEED_FAST_L3:I = 0xd

.field public static final PLAYBACK_SPEED_FAST_L4:I = 0xe

.field public static final PLAYBACK_SPEED_INVALID:I = -0x1

.field public static final PLAYBACK_SPEED_NORMAL:I = 0x1

.field public static final PLAYBACK_SPEED_PAUSED:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

.field private final mFastForwardSpeeds:[I

.field private mIsCustomizedFastForwardSupported:Z

.field private mIsCustomizedRewindSupported:Z

.field private mPlaybackSpeed:I

.field private mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

.field private final mRewindSpeeds:[I

.field private mSkipNextAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

.field private mSkipPreviousAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

.field private mStartPosition:J

.field private mStartTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Landroidx/leanback/media/PlaybackBannerControlGlue;

    const-string v0, "PlaybackBannerControlGlue"

    sput-object v0, Landroidx/leanback/media/PlaybackBannerControlGlue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[ILandroidx/leanback/media/PlayerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[ITT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p2, p3}, Landroidx/leanback/media/PlaybackBannerControlGlue;-><init>(Landroid/content/Context;[I[ILandroidx/leanback/media/PlayerAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I[ILandroidx/leanback/media/PlayerAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I[ITT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p4}, Landroidx/leanback/media/PlaybackBaseControlGlue;-><init>(Landroid/content/Context;Landroidx/leanback/media/PlayerAdapter;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 5
    array-length p1, p2

    if-eqz p1, :cond_3

    array-length p1, p2

    const/4 p4, 0x5

    if-gt p1, p4, :cond_3

    .line 6
    iput-object p2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    .line 7
    array-length p1, p3

    if-eqz p1, :cond_2

    array-length p1, p3

    if-gt p1, p4, :cond_2

    .line 8
    iput-object p3, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    .line 9
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {p1}, Landroidx/leanback/media/PlayerAdapter;->getSupportedActions()J

    move-result-wide p1

    const-wide/16 p3, 0x80

    and-long/2addr p1, p3

    const/4 p3, 0x1

    cmp-long p4, p1, v0

    if-eqz p4, :cond_0

    .line 10
    iput-boolean p3, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedFastForwardSupported:Z

    .line 11
    :cond_0
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {p1}, Landroidx/leanback/media/PlayerAdapter;->getSupportedActions()J

    move-result-wide p1

    const-wide/16 v2, 0x20

    and-long/2addr p1, v2

    cmp-long p4, p1, v0

    if-eqz p4, :cond_1

    .line 12
    iput-boolean p3, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedRewindSupported:Z

    :cond_1
    return-void

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid rewindSpeeds array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid fastForwardSpeeds array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decrementRewindPlaybackSpeed()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, -0xa

    .line 2
    iput v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    .line 3
    iput v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private fakePause()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    .line 4
    invoke-super {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->pause()V

    .line 5
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void
.end method

.method private getMaxForwardSpeedId()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private getMaxRewindSpeedId()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private incrementFastForwardPlaybackSpeed()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePlaybackState(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onUpdateProgress()V

    .line 3
    iget-object v2, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v2, v0}, Landroidx/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v2, v1}, Landroidx/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    .line 5
    :goto_0
    iget-boolean v2, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mFadeWhenPlaying:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/leanback/media/PlaybackGlueHost;->setControlsOverlayAutoHideEnabled(Z)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->getControlsRow()Landroidx/leanback/widget/PlaybackControlsRow;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 8
    iget-object v3, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v3}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->getIndex()I

    move-result v3

    if-eq v3, p1, :cond_3

    .line 10
    iget-object v3, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v3, p1}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    .line 11
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-static {v2, p1}, Landroidx/leanback/media/PlaybackBaseControlGlue;->notifyItemChanged(Landroidx/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    .line 12
    :cond_3
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    const/16 v3, 0xa

    if-eqz p1, :cond_5

    .line 13
    iget v4, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-lt v4, v3, :cond_4

    sub-int/2addr v4, v3

    add-int/2addr v4, v1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 14
    :goto_1
    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->getIndex()I

    move-result p1

    if-eq p1, v4, :cond_5

    .line 15
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {p1, v4}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    .line 16
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-static {v2, p1}, Landroidx/leanback/media/PlaybackBaseControlGlue;->notifyItemChanged(Landroidx/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    .line 17
    :cond_5
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz p1, :cond_7

    .line 18
    iget v4, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v5, -0xa

    if-gt v4, v5, :cond_6

    neg-int v0, v4

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 19
    :cond_6
    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->getIndex()I

    move-result p1

    if-eq p1, v0, :cond_7

    .line 20
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    .line 21
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-static {v2, p1}, Landroidx/leanback/media/PlaybackBaseControlGlue;->notifyItemChanged(Landroidx/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final dispatchAction(Landroidx/leanback/widget/Action;Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_7

    const/16 p1, 0x55

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x7e

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, p1, :cond_2

    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x7f

    if-ne p1, p2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_5

    .line 6
    iget p1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-eqz v0, :cond_4

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 7
    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->pause()V

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 8
    iget p1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-eq p1, v2, :cond_6

    .line 9
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->play()V

    .line 10
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    goto :goto_4

    .line 11
    :cond_7
    iget-object p2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-ne p1, p2, :cond_9

    .line 12
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->next()V

    :cond_8
    :goto_4
    const/4 v1, 0x1

    goto :goto_7

    .line 13
    :cond_9
    iget-object p2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-ne p1, p2, :cond_a

    .line 14
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->previous()V

    goto :goto_4

    .line 15
    :cond_a
    iget-object p2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-ne p1, p2, :cond_c

    .line 16
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {p1}, Landroidx/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->getMaxForwardSpeedId()I

    move-result p2

    if-ge p1, p2, :cond_8

    .line 17
    iget-boolean p1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedFastForwardSupported:Z

    if-eqz p1, :cond_b

    .line 18
    iput-boolean v2, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    .line 19
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {p1}, Landroidx/leanback/media/PlayerAdapter;->fastForward()V

    goto :goto_5

    .line 20
    :cond_b
    invoke-direct {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->fakePause()V

    .line 21
    :goto_5
    invoke-direct {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->incrementFastForwardPlaybackSpeed()V

    .line 22
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    goto :goto_4

    .line 23
    :cond_c
    iget-object p2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    if-ne p1, p2, :cond_e

    .line 24
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {p1}, Landroidx/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->getMaxRewindSpeedId()I

    move-result p2

    neg-int p2, p2

    if-le p1, p2, :cond_8

    .line 25
    iget-boolean p1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedFastForwardSupported:Z

    if-eqz p1, :cond_d

    .line 26
    iput-boolean v2, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    .line 27
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {p1}, Landroidx/leanback/media/PlayerAdapter;->rewind()V

    goto :goto_6

    .line 28
    :cond_d
    invoke-direct {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->fakePause()V

    .line 29
    :goto_6
    invoke-direct {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->decrementRewindPlaybackSpeed()V

    .line 30
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    goto :goto_4

    :cond_e
    :goto_7
    return v1
.end method

.method public getCurrentPosition()J
    .locals 8

    .line 1
    iget v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 2
    iget-boolean v2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedFastForwardSupported:Z

    if-eqz v2, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroidx/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_1
    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->getFastForwardSpeeds()[I

    move-result-object v1

    aget v0, v1, v0

    goto :goto_0

    :cond_2
    const/16 v2, -0xa

    if-gt v0, v2, :cond_6

    .line 5
    iget-boolean v2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedRewindSupported:Z

    if-eqz v2, :cond_3

    .line 6
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroidx/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_3
    neg-int v0, v0

    sub-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->getRewindSpeeds()[I

    move-result-object v1

    aget v0, v1, v0

    neg-int v0, v0

    .line 8
    :goto_0
    iget-wide v1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    sub-long/2addr v3, v5

    int-to-long v5, v0

    mul-long v3, v3, v5

    add-long/2addr v3, v1

    .line 9
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->getDuration()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v0

    if-lez v7, :cond_4

    .line 10
    iput v2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 11
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->getDuration()J

    move-result-wide v3

    .line 12
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v0, v3, v4}, Landroidx/leanback/media/PlayerAdapter;->seekTo(J)V

    .line 13
    iput-wide v5, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 14
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->pause()V

    goto :goto_1

    :cond_4
    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    .line 15
    iput v2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 16
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v0, v5, v6}, Landroidx/leanback/media/PlayerAdapter;->seekTo(J)V

    .line 17
    iput-wide v5, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 18
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->pause()V

    move-wide v3, v5

    :cond_5
    :goto_1
    return-wide v3

    :cond_6
    const-wide/16 v0, -0x1

    return-wide v0

    .line 19
    :cond_7
    :goto_2
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroidx/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFastForwardSpeeds()[I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    return-object v0
.end method

.method public getRewindSpeeds()[I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    return-object v0
.end method

.method public onActionClicked(Landroidx/leanback/widget/Action;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->dispatchAction(Landroidx/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public final onCreatePrimaryActions(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->getSupportedActions()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-eqz v7, :cond_0

    .line 2
    iget-object v2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    .line 5
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez v7, :cond_1

    .line 6
    iget-object v2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 8
    iput-object v4, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    :cond_1
    :goto_0
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long v7, v2, v5

    if-eqz v7, :cond_2

    .line 9
    iget-object v2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    if-nez v2, :cond_2

    .line 10
    new-instance v2, Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    .line 11
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v7, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    array-length v7, v7

    invoke-direct {v2, v3, v7}, Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    .line 12
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-nez v7, :cond_3

    .line 13
    iget-object v2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 15
    iput-object v4, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    :cond_3
    :goto_1
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long v7, v2, v5

    if-eqz v7, :cond_4

    .line 16
    iget-object v2, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-nez v2, :cond_4

    .line 17
    new-instance v2, Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 18
    new-instance v2, Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 19
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 20
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-nez v7, :cond_5

    .line 21
    iget-object v2, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v2, :cond_5

    .line 22
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 23
    iput-object v4, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    :cond_5
    :goto_2
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    cmp-long v7, v2, v5

    if-eqz v7, :cond_6

    .line 24
    iget-object v2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-nez v2, :cond_6

    .line 25
    new-instance v2, Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v7, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    array-length v7, v7

    invoke-direct {v2, v3, v7}, Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    .line 26
    new-instance v2, Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    .line 27
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v7, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    array-length v7, v7

    invoke-direct {v2, v3, v7}, Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    .line 28
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    if-nez v7, :cond_7

    .line 29
    iget-object v2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-eqz v2, :cond_7

    .line 30
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 31
    iput-object v4, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    :cond_7
    :goto_3
    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    cmp-long v2, v0, v5

    if-eqz v2, :cond_8

    .line 32
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-nez v0, :cond_8

    .line 33
    new-instance v0, Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    .line 34
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    .line 35
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    if-nez v2, :cond_9

    .line 36
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-eqz v0, :cond_9

    .line 37
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 38
    iput-object v4, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    :cond_9
    :goto_4
    return-void
.end method

.method public final onCreateRowPresenter()Landroidx/leanback/widget/PlaybackRowPresenter;
    .locals 2

    .line 1
    new-instance v0, Landroidx/leanback/media/PlaybackBannerControlGlue$1;

    invoke-direct {v0}, Landroidx/leanback/media/PlaybackBannerControlGlue$1;-><init>()V

    .line 2
    new-instance v1, Landroidx/leanback/media/PlaybackBannerControlGlue$2;

    invoke-direct {v1, p0, v0}, Landroidx/leanback/media/PlaybackBannerControlGlue$2;-><init>(Landroidx/leanback/media/PlaybackBannerControlGlue;Landroidx/leanback/widget/Presenter;)V

    return-object v1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 p1, 0x6f

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_3

    if-eq p2, p1, :cond_3

    packed-switch p2, :pswitch_data_0

    .line 1
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroidx/leanback/widget/ObjectAdapter;I)Landroidx/leanback/widget/Action;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroidx/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroidx/leanback/widget/ObjectAdapter;I)Landroidx/leanback/widget/Action;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p0, p1, p3}, Landroidx/leanback/media/PlaybackBannerControlGlue;->dispatchAction(Landroidx/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    :cond_1
    return v1

    :cond_2
    return v2

    .line 6
    :cond_3
    :pswitch_0
    iget p3, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v3, 0xa

    if-ge p3, v3, :cond_5

    const/16 v3, -0xa

    if-gt p3, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p3, 0x1

    :goto_1
    if-eqz p3, :cond_8

    .line 7
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->play()V

    .line 8
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    if-eq p2, v0, :cond_7

    if-ne p2, p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_2
    return v1

    :cond_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPlayCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onPlayCompleted()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    .line 3
    iput v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    .line 6
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void
.end method

.method public final onPlayStateChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    .line 2
    invoke-super {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onPlayStateChanged()V

    return-void
.end method

.method public final onUpdatePlaybackState()V
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    invoke-direct {p0, v0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->updatePlaybackState(Z)V

    return-void
.end method

.method public final onUpdatePlaybackStatusAfterUserAction()V
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    invoke-direct {p0, v0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->updatePlaybackState(Z)V

    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    .line 2
    iput v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    .line 5
    invoke-super {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->pause()V

    .line 6
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void
.end method

.method public play()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroidx/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    .line 3
    invoke-virtual {v0}, Landroidx/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v2}, Landroidx/leanback/media/PlayerAdapter;->getDuration()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 6
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    .line 8
    iput v0, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 9
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    iget-wide v1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/media/PlayerAdapter;->seekTo(J)V

    .line 10
    invoke-super {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->play()V

    .line 11
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void
.end method

.method public setControlsRow(Landroidx/leanback/widget/PlaybackControlsRow;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/media/PlaybackBaseControlGlue;->setControlsRow(Landroidx/leanback/widget/PlaybackControlsRow;)V

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void
.end method
