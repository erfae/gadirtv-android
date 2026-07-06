.class public Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;
.super Landroidx/leanback/widget/PlaybackRowPresenter$ViewHolder;
.source "PlaybackTransportRowPresenter.java"

# interfaces
.implements Landroidx/leanback/widget/PlaybackSeekUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/PlaybackTransportRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mControlsBoundData:Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;

.field public final mControlsDock:Landroid/view/ViewGroup;

.field public mControlsVh:Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

.field public final mCurrentTime:Landroid/widget/TextView;

.field public mCurrentTimeInMs:J

.field public final mDescriptionDock:Landroid/view/ViewGroup;

.field public final mDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

.field public final mImageView:Landroid/widget/ImageView;

.field public mInSeek:Z

.field public final mListener:Landroidx/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

.field public mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

.field public mPositions:[J

.field public mPositionsLength:I

.field public final mProgressBar:Landroidx/leanback/widget/SeekBar;

.field public mSecondaryBoundData:Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;

.field public final mSecondaryControlsDock:Landroid/view/ViewGroup;

.field public mSecondaryControlsVh:Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

.field public mSeekClient:Landroidx/leanback/widget/PlaybackSeekUi$Client;

.field public mSeekDataProvider:Landroidx/leanback/widget/PlaybackSeekDataProvider;

.field public mSelectedItem:Ljava/lang/Object;

.field public mSelectedViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

.field public final mTempBuilder:Ljava/lang/StringBuilder;

.field public mThumbHeroIndex:I

.field public mThumbResult:Landroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

.field public final mThumbsBar:Landroidx/leanback/widget/ThumbsBar;

.field public final mTotalTime:Landroid/widget/TextView;

.field public mTotalTimeInMs:J

.field public final synthetic this$0:Landroidx/leanback/widget/PlaybackTransportRowPresenter;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/PlaybackTransportRowPresenter;Landroid/view/View;Landroidx/leanback/widget/Presenter;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->this$0:Landroidx/leanback/widget/PlaybackTransportRowPresenter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/leanback/widget/PlaybackRowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    iput-wide v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    .line 4
    iput-wide v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    .line 6
    new-instance p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-direct {p1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsBoundData:Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    .line 7
    new-instance p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-direct {p1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryBoundData:Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    .line 9
    new-instance p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;-><init>(Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mListener:Landroidx/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    .line 10
    new-instance p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;-><init>(Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbResult:Landroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    .line 11
    sget p1, Landroidx/leanback/R$id;->image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 12
    sget p1, Landroidx/leanback/R$id;->description_dock:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    .line 13
    sget v0, Landroidx/leanback/R$id;->current_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    .line 14
    sget v0, Landroidx/leanback/R$id;->total_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    .line 15
    sget v0, Landroidx/leanback/R$id;->playback_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/SeekBar;

    iput-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroidx/leanback/widget/SeekBar;

    .line 16
    new-instance v1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;

    invoke-direct {v1, p0}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;-><init>(Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance v1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;

    invoke-direct {v1, p0}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;-><init>(Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 18
    new-instance v1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;

    invoke-direct {v1, p0}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;-><init>(Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/SeekBar;->setAccessibilitySeekListener(Landroidx/leanback/widget/SeekBar$AccessibilitySeekListener;)V

    const v1, 0x7fffffff

    .line 19
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/SeekBar;->setMax(I)V

    .line 20
    sget v0, Landroidx/leanback/R$id;->controls_dock:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    .line 21
    sget v0, Landroidx/leanback/R$id;->secondary_controls_dock:I

    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsDock:Landroid/view/ViewGroup;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p3, p1}, Landroidx/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    if-eqz p3, :cond_1

    .line 24
    iget-object p3, p3, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    :cond_1
    sget p1, Landroidx/leanback/R$id;->thumbs_row:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ThumbsBar;

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroidx/leanback/widget/ThumbsBar;

    return-void
.end method


# virtual methods
.method public final dispatchItemSelection()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v2, v2, p0, v1}, Landroidx/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedItem:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object v3

    .line 10
    invoke-interface {v0, v1, v2, p0, v3}, Landroidx/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getCurrentPositionView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getDescriptionViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    return-object v0
.end method

.method public final getDurationView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPresenter(Z)Landroidx/leanback/widget/Presenter;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroidx/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroidx/leanback/widget/PresenterSelector;

    move-result-object v1

    instance-of v1, v1, Landroidx/leanback/widget/ControlButtonPresenterSelector;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroidx/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroidx/leanback/widget/PresenterSelector;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ControlButtonPresenterSelector;

    .line 5
    invoke-virtual {p1}, Landroidx/leanback/widget/ControlButtonPresenterSelector;->getSecondaryPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ObjectAdapter;->getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;

    move-result-object p1

    return-object p1
.end method

.method public final setCurrentPosition(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 2
    iput-wide p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v0}, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->formatTime(JLjava/lang/StringBuilder;)V

    .line 5
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    iget-object p2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-boolean p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 7
    iget-wide v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    .line 8
    iget-wide p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    long-to-double p1, p1

    long-to-double v0, v0

    div-double/2addr p1, v0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 9
    :cond_1
    iget-object p2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroidx/leanback/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void
.end method

.method public setPlaybackSeekUiClient(Landroidx/leanback/widget/PlaybackSeekUi$Client;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroidx/leanback/widget/PlaybackSeekUi$Client;

    return-void
.end method

.method public final setTotalTime(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 2
    iput-wide p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v0}, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->formatTime(JLjava/lang/StringBuilder;)V

    .line 5
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    iget-object p2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final startSeek()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroidx/leanback/widget/PlaybackSeekUi$Client;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackSeekUi$Client;->isSeekEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v3, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iput-boolean v1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroidx/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackSeekUi$Client;->onSeekStarted()V

    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroidx/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackSeekUi$Client;->getPlaybackSeekDataProvider()Landroidx/leanback/widget/PlaybackSeekDataProvider;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroidx/leanback/widget/PlaybackSeekDataProvider;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackSeekDataProvider;->getSeekPositions()[J

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    if-eqz v0, :cond_4

    .line 7
    iget-wide v3, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/2addr v0, v1

    .line 8
    iput v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    goto :goto_1

    :cond_3
    rsub-int/lit8 v0, v0, -0x1

    .line 9
    iput v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    goto :goto_1

    .line 10
    :cond_4
    iput v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    .line 11
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroidx/leanback/widget/ThumbsBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return v1

    :cond_5
    :goto_2
    return v2
.end method

.method public final stopSeek(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroidx/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/PlaybackSeekUi$Client;->onSeekFinished(Z)V

    .line 4
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroidx/leanback/widget/PlaybackSeekDataProvider;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackSeekDataProvider;->reset()V

    :cond_1
    const/4 p1, -0x1

    .line 6
    iput p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    .line 7
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroidx/leanback/widget/ThumbsBar;

    invoke-virtual {p1}, Landroidx/leanback/widget/ThumbsBar;->clearThumbBitmaps()V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroidx/leanback/widget/PlaybackSeekDataProvider;

    .line 9
    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    .line 10
    iput v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    .line 11
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroidx/leanback/widget/ThumbsBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateProgressInSeek(Z)V
    .locals 14

    .line 1
    iget-wide v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    .line 2
    iget v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    const-wide/16 v3, 0x0

    if-lez v2, :cond_11

    .line 3
    iget-object v5, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    const/4 v6, 0x0

    invoke-static {v5, v6, v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-ltz v0, :cond_1

    .line 4
    iget v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    .line 5
    iget-object v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    add-int/lit8 v0, v0, 0x1

    aget-wide v3, v2, v0

    goto :goto_1

    .line 6
    :cond_0
    iget-wide v3, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    goto :goto_1

    :cond_1
    rsub-int/lit8 v0, v0, -0x1

    .line 7
    iget v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_2

    .line 8
    iget-object v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    aget-wide v3, v2, v0

    goto :goto_1

    .line 9
    :cond_2
    iget-wide v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move-wide v3, v2

    goto :goto_1

    :cond_4
    if-ltz v0, :cond_5

    if-lez v0, :cond_6

    .line 10
    iget-object v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v3, v2, v0

    goto :goto_1

    :cond_5
    rsub-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_6

    .line 11
    iget-object v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    sub-int/2addr v0, v1

    aget-wide v3, v2, v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 12
    :goto_1
    iget v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    if-ne v2, v0, :cond_7

    goto/16 :goto_c

    .line 13
    :cond_7
    iget-object v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroidx/leanback/widget/ThumbsBar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ltz v2, :cond_10

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_10

    .line 14
    div-int/lit8 v5, v2, 0x2

    sub-int v7, v0, v5

    .line 15
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v8, v0, v5

    .line 16
    iget v9, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    sub-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 17
    iget v9, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    if-gez v9, :cond_8

    move v9, v7

    goto :goto_4

    :cond_8
    if-le v0, v9, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    sub-int/2addr v9, v5

    .line 18
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 19
    iget v10, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    add-int/2addr v10, v5

    iget v11, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    sub-int/2addr v11, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-eqz p1, :cond_b

    add-int/2addr v10, v1

    .line 20
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v10, v7

    :goto_3
    add-int/lit8 v11, v9, -0x1

    if-gt v10, v11, :cond_a

    .line 21
    iget-object v11, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroidx/leanback/widget/ThumbsBar;

    sub-int v12, v10, v0

    add-int/2addr v12, v5

    iget v13, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int v13, v10, v13

    add-int/2addr v13, v5

    .line 22
    invoke-virtual {v11, v13}, Landroidx/leanback/widget/ThumbsBar;->getThumbBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 23
    invoke-virtual {v11, v12, v13}, Landroidx/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    move v10, v9

    move v9, v8

    goto :goto_6

    :cond_b
    sub-int/2addr v9, v1

    .line 24
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v10, v8

    :goto_5
    add-int/lit8 v11, v9, 0x1

    if-lt v10, v11, :cond_c

    .line 25
    iget-object v11, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroidx/leanback/widget/ThumbsBar;

    sub-int v12, v10, v0

    add-int/2addr v12, v5

    iget v13, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int v13, v10, v13

    add-int/2addr v13, v5

    .line 26
    invoke-virtual {v11, v13}, Landroidx/leanback/widget/ThumbsBar;->getThumbBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 27
    invoke-virtual {v11, v12, v13}, Landroidx/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    :cond_c
    move v10, v7

    .line 28
    :goto_6
    iput v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    if-eqz p1, :cond_d

    :goto_7
    if-gt v10, v9, :cond_e

    .line 29
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroidx/leanback/widget/PlaybackSeekDataProvider;

    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbResult:Landroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    invoke-virtual {p1, v10, v0}, Landroidx/leanback/widget/PlaybackSeekDataProvider;->getThumbnail(ILandroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    if-lt v9, v10, :cond_e

    .line 30
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroidx/leanback/widget/PlaybackSeekDataProvider;

    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbResult:Landroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    invoke-virtual {p1, v9, v0}, Landroidx/leanback/widget/PlaybackSeekDataProvider;->getThumbnail(ILandroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    .line 31
    :cond_e
    :goto_9
    iget p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int v0, v5, p1

    add-int/2addr v0, v7

    const/4 v9, 0x0

    if-ge v6, v0, :cond_f

    .line 32
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroidx/leanback/widget/ThumbsBar;

    invoke-virtual {p1, v6, v9}, Landroidx/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_f
    add-int/2addr v5, v8

    sub-int/2addr v5, p1

    add-int/2addr v5, v1

    :goto_a
    if-ge v5, v2, :cond_15

    .line 33
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroidx/leanback/widget/ThumbsBar;

    invoke-virtual {p1, v5, v9}, Landroidx/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 34
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    .line 35
    :cond_11
    iget-wide v5, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-float v2, v5

    iget-object v5, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->this$0:Landroidx/leanback/widget/PlaybackTransportRowPresenter;

    invoke-virtual {v5}, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->getDefaultSeekIncrement()F

    move-result v5

    mul-float v5, v5, v2

    float-to-long v5, v5

    if-eqz p1, :cond_12

    goto :goto_b

    :cond_12
    neg-long v5, v5

    :goto_b
    add-long/2addr v0, v5

    .line 36
    iget-wide v5, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    cmp-long p1, v0, v5

    if-lez p1, :cond_13

    move-wide v3, v5

    goto :goto_c

    :cond_13
    cmp-long p1, v0, v3

    if-gez p1, :cond_14

    goto :goto_c

    :cond_14
    move-wide v3, v0

    :cond_15
    :goto_c
    long-to-double v0, v3

    .line 37
    iget-wide v5, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v5, v5

    div-double/2addr v0, v5

    .line 38
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroidx/leanback/widget/SeekBar;

    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v0, v0, v5

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/SeekBar;->setProgress(I)V

    .line 39
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroidx/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {p1, v3, v4}, Landroidx/leanback/widget/PlaybackSeekUi$Client;->onSeekPositionChanged(J)V

    return-void
.end method
