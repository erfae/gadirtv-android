.class Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;
.super Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;
.source "PlaybackControlsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/PlaybackControlsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public final mCurrentTime:Landroid/widget/TextView;

.field public mCurrentTimeInMs:J

.field public mCurrentTimeMarginStart:I

.field public mCurrentTimeStringBuilder:Ljava/lang/StringBuilder;

.field public mMoreActionsAdapter:Landroidx/leanback/widget/ObjectAdapter;

.field public final mMoreActionsDock:Landroid/widget/FrameLayout;

.field public mMoreActionsObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

.field public mMoreActionsShowing:Z

.field public mMoreActionsViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

.field public final mProgressBar:Landroid/widget/ProgressBar;

.field public mSecondaryProgressInMs:J

.field public final mTotalTime:Landroid/widget/TextView;

.field public mTotalTimeInMs:J

.field public mTotalTimeMarginEnd:I

.field public mTotalTimeStringBuilder:Ljava/lang/StringBuilder;

.field public final synthetic this$0:Landroidx/leanback/widget/PlaybackControlsPresenter;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/PlaybackControlsPresenter;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->this$0:Landroidx/leanback/widget/PlaybackControlsPresenter;

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;-><init>(Landroidx/leanback/widget/ControlBarPresenter;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeInMs:J

    .line 4
    iput-wide v0, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeInMs:J

    .line 5
    iput-wide v0, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mSecondaryProgressInMs:J

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeStringBuilder:Ljava/lang/StringBuilder;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeStringBuilder:Ljava/lang/StringBuilder;

    .line 8
    sget p1, Landroidx/leanback/R$id;->more_actions_dock:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsDock:Landroid/widget/FrameLayout;

    .line 9
    sget p1, Landroidx/leanback/R$id;->current_time:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    .line 10
    sget v0, Landroidx/leanback/R$id;->total_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    .line 11
    sget v1, Landroidx/leanback/R$id;->playback_progress:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 12
    new-instance p2, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder$1;

    invoke-direct {p2, p0}, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder$1;-><init>(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V

    iput-object p2, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeMarginStart:I

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeMarginEnd:I

    return-void
.end method


# virtual methods
.method public final getChildMarginFromCenter(Landroid/content/Context;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->this$0:Landroidx/leanback/widget/PlaybackControlsPresenter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ControlBarPresenter;->getControlIconWidth(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    .line 2
    iget-object p2, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->this$0:Landroidx/leanback/widget/PlaybackControlsPresenter;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/PlaybackControlsPresenter;->getChildMarginBiggest(Landroid/content/Context;)I

    move-result p1

    :goto_0
    add-int/2addr v0, p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x6

    if-ge p2, v1, :cond_1

    .line 3
    iget-object p2, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->this$0:Landroidx/leanback/widget/PlaybackControlsPresenter;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/PlaybackControlsPresenter;->getChildMarginBigger(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->this$0:Landroidx/leanback/widget/PlaybackControlsPresenter;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ControlBarPresenter;->getChildMarginDefault(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :goto_1
    return v0
.end method

.method public final getDisplayedAdapter()Landroidx/leanback/widget/ObjectAdapter;
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroidx/leanback/widget/ObjectAdapter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    :goto_0
    return-object v0
.end method
