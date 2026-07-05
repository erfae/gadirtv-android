.class Landroidx/leanback/widget/PlaybackControlsPresenter;
.super Landroidx/leanback/widget/ControlBarPresenter;
.source "PlaybackControlsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;,
        Landroidx/leanback/widget/PlaybackControlsPresenter$BoundData;
    }
.end annotation


# static fields
.field private static sChildMarginBigger:I

.field private static sChildMarginBiggest:I


# instance fields
.field private mMoreActionsEnabled:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/ControlBarPresenter;-><init>(I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    return-void
.end method

.method public static formatTime(JLjava/lang/StringBuilder;)V
    .locals 11

    const-wide/16 v0, 0x3c

    .line 1
    div-long v2, p0, v0

    .line 2
    div-long v4, v2, v0

    mul-long v6, v2, v0

    sub-long/2addr p0, v6

    mul-long v0, v0, v4

    sub-long/2addr v2, v0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v0, 0x30

    const-wide/16 v6, 0xa

    const/16 v1, 0x3a

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-lez v10, :cond_0

    .line 4
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v4, v2, v6

    if-gez v4, :cond_0

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v1, p0, v6

    if-gez v1, :cond_1

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public areMoreActionsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    return v0
.end method

.method public enableSecondaryActions(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    return-void
.end method

.method public enableTimeMargins(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;Z)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2
    iget v2, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeMarginStart:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 3
    iget-object v2, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_1

    .line 5
    iget v1, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeMarginEnd:I

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 6
    iget-object p1, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final getChildMarginBigger(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Landroidx/leanback/widget/PlaybackControlsPresenter;->sChildMarginBigger:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/leanback/R$dimen;->lb_playback_controls_child_margin_bigger:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Landroidx/leanback/widget/PlaybackControlsPresenter;->sChildMarginBigger:I

    .line 3
    :cond_0
    sget p1, Landroidx/leanback/widget/PlaybackControlsPresenter;->sChildMarginBigger:I

    return p1
.end method

.method public final getChildMarginBiggest(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Landroidx/leanback/widget/PlaybackControlsPresenter;->sChildMarginBiggest:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/leanback/R$dimen;->lb_playback_controls_child_margin_biggest:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Landroidx/leanback/widget/PlaybackControlsPresenter;->sChildMarginBiggest:I

    .line 3
    :cond_0
    sget p1, Landroidx/leanback/widget/PlaybackControlsPresenter;->sChildMarginBiggest:I

    return p1
.end method

.method public getCurrentTime(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;)I
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/PlaybackControlsPresenter;->getCurrentTimeLong(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result p1

    return p1
.end method

.method public getCurrentTimeLong(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J
    .locals 2

    iget-wide v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeInMs:J

    return-wide v0
.end method

.method public getSecondaryProgress(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;)I
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/PlaybackControlsPresenter;->getSecondaryProgressLong(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result p1

    return p1
.end method

.method public getSecondaryProgressLong(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J
    .locals 2

    iget-wide v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mSecondaryProgressInMs:J

    return-wide v0
.end method

.method public getTotalTime(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;)I
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/PlaybackControlsPresenter;->getTotalTimeLong(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result p1

    return p1
.end method

.method public getTotalTimeLong(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J
    .locals 2

    iget-wide v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeInMs:J

    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 3

    .line 1
    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 2
    move-object v1, p2

    check-cast v1, Landroidx/leanback/widget/PlaybackControlsPresenter$BoundData;

    .line 3
    iget-object v2, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroidx/leanback/widget/ObjectAdapter;

    iget-object v1, v1, Landroidx/leanback/widget/PlaybackControlsPresenter$BoundData;->secondaryActionsAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eq v2, v1, :cond_0

    .line 4
    iput-object v1, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroidx/leanback/widget/ObjectAdapter;

    .line 5
    iget-object v2, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ObjectAdapter;->registerObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/leanback/widget/ControlBarPresenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 8
    iget-boolean p1, p0, Landroidx/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    if-nez p1, :cond_1

    .line 10
    new-instance p1, Landroidx/leanback/widget/PlaybackControlsRow$MoreActions;

    iget-object p2, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsDock:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/leanback/widget/PlaybackControlsRow$MoreActions;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object p2, v0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroidx/leanback/widget/Presenter;

    iget-object v1, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsDock:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroidx/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p2

    iput-object p2, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    .line 12
    iget-object v1, v0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroidx/leanback/widget/Presenter;

    invoke-virtual {v1, p2, p1}, Landroidx/leanback/widget/Presenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 13
    iget-object p1, v0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroidx/leanback/widget/Presenter;

    iget-object p2, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    new-instance v1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder$2;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder$2;-><init>(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V

    invoke-virtual {p1, p2, v1}, Landroidx/leanback/widget/Presenter;->setOnClickListener(Landroidx/leanback/widget/Presenter$ViewHolder;Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_1
    iget-object p1, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_3

    .line 15
    iget-object p1, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsDock:Landroid/widget/FrameLayout;

    iget-object p2, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object p2, p2, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    if-eqz p1, :cond_3

    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsDock:Landroid/widget/FrameLayout;

    iget-object p2, v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object p2, p2, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/ControlBarPresenter;->getLayoutResourceId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance v0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-direct {v0, p0, p1}, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;-><init>(Landroidx/leanback/widget/PlaybackControlsPresenter;Landroid/view/View;)V

    return-object v0
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/widget/ControlBarPresenter;->onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    .line 2
    check-cast p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ObjectAdapter;->unregisterObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroidx/leanback/widget/ObjectAdapter;

    :cond_0
    return-void
.end method

.method public resetFocus(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V
    .locals 0

    iget-object p1, p1, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroidx/leanback/widget/ControlBar;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public setCurrentTime(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroidx/leanback/widget/PlaybackControlsPresenter;->setCurrentTimeLong(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    return-void
.end method

.method public setCurrentTimeLong(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x3e8

    .line 2
    div-long v0, p2, v0

    .line 3
    iget-wide v2, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeInMs:J

    cmp-long v4, p2, v2

    if-eqz v4, :cond_0

    .line 4
    iput-wide p2, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeInMs:J

    .line 5
    iget-object p2, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0, v1, p2}, Landroidx/leanback/widget/PlaybackControlsPresenter;->formatTime(JLjava/lang/StringBuilder;)V

    .line 6
    iget-object p2, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    iget-object p3, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_0
    iget-wide p2, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeInMs:J

    long-to-double p2, p2

    iget-wide v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v0, v0

    div-double/2addr p2, v0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double p2, p2, v0

    .line 8
    iget-object p1, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    double-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setProgressColor(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 p2, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 2
    iget-object p1, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const p2, 0x102000d

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    return-void
.end method

.method public setSecondaryProgress(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroidx/leanback/widget/PlaybackControlsPresenter;->setSecondaryProgressLong(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    return-void
.end method

.method public setSecondaryProgressLong(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V
    .locals 2

    .line 1
    iput-wide p2, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mSecondaryProgressInMs:J

    long-to-double p2, p2

    .line 2
    iget-wide v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v0, v0

    div-double/2addr p2, v0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double p2, p2, v0

    .line 3
    iget-object p1, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    double-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public setTotalTime(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroidx/leanback/widget/PlaybackControlsPresenter;->setTotalTimeLong(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    return-void
.end method

.method public setTotalTimeLong(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 1
    iget-object p2, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iput-wide p2, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeInMs:J

    const-wide/16 v0, 0x3e8

    .line 6
    div-long/2addr p2, v0

    iget-object v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {p2, p3, v0}, Landroidx/leanback/widget/PlaybackControlsPresenter;->formatTime(JLjava/lang/StringBuilder;)V

    .line 7
    iget-object p2, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    iget-object p3, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    :goto_0
    return-void
.end method

.method public showPrimaryActions(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iput-boolean v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroidx/leanback/widget/Presenter;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->showControls(Landroidx/leanback/widget/Presenter;)V

    :cond_0
    return-void
.end method
