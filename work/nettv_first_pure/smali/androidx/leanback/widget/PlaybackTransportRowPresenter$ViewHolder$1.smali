.class Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;
.super Landroidx/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;
.source "PlaybackTransportRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-direct {p0}, Landroidx/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferedPositionChanged(Landroidx/leanback/widget/PlaybackControlsRow;J)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    long-to-double p2, p2

    .line 2
    iget-wide v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v0, v0

    div-double/2addr p2, v0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double p2, p2, v0

    .line 3
    iget-object p1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroidx/leanback/widget/SeekBar;

    double-to-int p2, p2

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/SeekBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public onCurrentPositionChanged(Landroidx/leanback/widget/PlaybackControlsRow;J)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {p1, p2, p3}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->setCurrentPosition(J)V

    return-void
.end method

.method public onDurationChanged(Landroidx/leanback/widget/PlaybackControlsRow;J)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {p1, p2, p3}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->setTotalTime(J)V

    return-void
.end method
