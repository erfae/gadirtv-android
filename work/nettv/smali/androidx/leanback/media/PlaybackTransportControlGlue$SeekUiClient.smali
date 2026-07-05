.class Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;
.super Landroidx/leanback/widget/PlaybackSeekUi$Client;
.source "PlaybackTransportControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/media/PlaybackTransportControlGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekUiClient"
.end annotation


# instance fields
.field public mIsSeek:Z

.field public mLastUserPosition:J

.field public mPausedBeforeSeek:Z

.field public mPositionBeforeSeek:J

.field public final synthetic this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;


# direct methods
.method public constructor <init>(Landroidx/leanback/media/PlaybackTransportControlGlue;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;

    invoke-direct {p0}, Landroidx/leanback/widget/PlaybackSeekUi$Client;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackSeekDataProvider()Landroidx/leanback/widget/PlaybackSeekDataProvider;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroidx/leanback/widget/PlaybackSeekDataProvider;

    return-object v0
.end method

.method public isSeekEnabled()Z
    .locals 2

    iget-object v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;

    iget-object v1, v0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroidx/leanback/widget/PlaybackSeekDataProvider;

    if-nez v1, :cond_1

    iget-boolean v0, v0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mSeekEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onSeekFinished(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-wide v2, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mLastUserPosition:J

    cmp-long p1, v2, v0

    if-ltz p1, :cond_1

    .line 2
    iget-object p1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {p1, v2, v3}, Landroidx/leanback/media/PlaybackBaseControlGlue;->seekTo(J)V

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v2, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mPositionBeforeSeek:J

    cmp-long p1, v2, v0

    if-ltz p1, :cond_1

    .line 4
    iget-object p1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {p1, v2, v3}, Landroidx/leanback/media/PlaybackBaseControlGlue;->seekTo(J)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mIsSeek:Z

    .line 6
    iget-boolean v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mPausedBeforeSeek:Z

    if-nez v0, :cond_2

    .line 7
    iget-object p1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackBaseControlGlue;->play()V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    .line 9
    iget-object p1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackTransportControlGlue;->onUpdateProgress()V

    :goto_1
    return-void
.end method

.method public onSeekPositionChanged(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;

    iget-object v1, v0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroidx/leanback/widget/PlaybackSeekDataProvider;

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/media/PlayerAdapter;->seekTo(J)V

    goto :goto_0

    .line 3
    :cond_0
    iput-wide p1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mLastUserPosition:J

    .line 4
    :goto_0
    iget-object v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    :cond_1
    return-void
.end method

.method public onSeekStarted()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mIsSeek:Z

    .line 2
    iget-object v1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {v1}, Landroidx/leanback/media/PlaybackBaseControlGlue;->isPlaying()Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mPausedBeforeSeek:Z

    .line 3
    iget-object v1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;

    iget-object v1, v1, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v1, v0}, Landroidx/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    .line 4
    iget-object v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;

    iget-object v1, v0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroidx/leanback/widget/PlaybackSeekDataProvider;

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    iget-object v0, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroidx/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mPositionBeforeSeek:J

    .line 5
    iput-wide v2, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mLastUserPosition:J

    .line 6
    iget-object v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroidx/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->pause()V

    return-void
.end method
