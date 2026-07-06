.class public Landroidx/leanback/widget/PlaybackTransportRowPresenter;
.super Landroidx/leanback/widget/PlaybackRowPresenter;
.source "PlaybackTransportRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;,
        Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;
    }
.end annotation


# instance fields
.field public mDefaultSeekIncrement:F

.field public mDescriptionPresenter:Landroidx/leanback/widget/Presenter;

.field public mOnActionClickedListener:Landroidx/leanback/widget/OnActionClickedListener;

.field private final mOnControlClickedListener:Landroidx/leanback/widget/ControlBarPresenter$OnControlClickedListener;

.field private final mOnControlSelectedListener:Landroidx/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

.field public mPlaybackControlsPresenter:Landroidx/leanback/widget/ControlBarPresenter;

.field public mProgressColor:I

.field public mProgressColorSet:Z

.field public mSecondaryControlsPresenter:Landroidx/leanback/widget/ControlBarPresenter;

.field public mSecondaryProgressColor:I

.field public mSecondaryProgressColorSet:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/PlaybackRowPresenter;-><init>()V

    const v0, 0x3c23d70a    # 0.01f

    .line 2
    iput v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mDefaultSeekIncrement:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mProgressColor:I

    .line 4
    iput v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryProgressColor:I

    .line 5
    new-instance v1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$1;

    invoke-direct {v1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$1;-><init>()V

    iput-object v1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mOnControlSelectedListener:Landroidx/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    .line 6
    new-instance v2, Landroidx/leanback/widget/PlaybackTransportRowPresenter$2;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$2;-><init>(Landroidx/leanback/widget/PlaybackTransportRowPresenter;)V

    iput-object v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mOnControlClickedListener:Landroidx/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/RowPresenter;->setHeaderPresenter(Landroidx/leanback/widget/RowHeaderPresenter;)V

    .line 8
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/RowPresenter;->setSelectEffectEnabled(Z)V

    .line 9
    new-instance v3, Landroidx/leanback/widget/ControlBarPresenter;

    sget v4, Landroidx/leanback/R$layout;->lb_control_bar:I

    invoke-direct {v3, v4}, Landroidx/leanback/widget/ControlBarPresenter;-><init>(I)V

    iput-object v3, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mPlaybackControlsPresenter:Landroidx/leanback/widget/ControlBarPresenter;

    .line 10
    iput-boolean v0, v3, Landroidx/leanback/widget/ControlBarPresenter;->mDefaultFocusToMiddle:Z

    .line 11
    new-instance v3, Landroidx/leanback/widget/ControlBarPresenter;

    invoke-direct {v3, v4}, Landroidx/leanback/widget/ControlBarPresenter;-><init>(I)V

    iput-object v3, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryControlsPresenter:Landroidx/leanback/widget/ControlBarPresenter;

    .line 12
    iput-boolean v0, v3, Landroidx/leanback/widget/ControlBarPresenter;->mDefaultFocusToMiddle:Z

    .line 13
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mPlaybackControlsPresenter:Landroidx/leanback/widget/ControlBarPresenter;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ControlBarPresenter;->setOnControlSelectedListener(Landroidx/leanback/widget/ControlBarPresenter$OnControlSelectedListener;)V

    .line 14
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryControlsPresenter:Landroidx/leanback/widget/ControlBarPresenter;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ControlBarPresenter;->setOnControlSelectedListener(Landroidx/leanback/widget/ControlBarPresenter$OnControlSelectedListener;)V

    .line 15
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mPlaybackControlsPresenter:Landroidx/leanback/widget/ControlBarPresenter;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ControlBarPresenter;->setOnControlClickedListener(Landroidx/leanback/widget/ControlBarPresenter$OnControlClickedListener;)V

    .line 16
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryControlsPresenter:Landroidx/leanback/widget/ControlBarPresenter;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ControlBarPresenter;->setOnControlClickedListener(Landroidx/leanback/widget/ControlBarPresenter$OnControlClickedListener;)V

    return-void
.end method

.method public static formatTime(JLjava/lang/StringBuilder;)V
    .locals 11

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "--"

    .line 2
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-wide/16 v2, 0x3e8

    .line 3
    div-long/2addr p0, v2

    const-wide/16 v2, 0x3c

    .line 4
    div-long v4, p0, v2

    .line 5
    div-long v6, v4, v2

    mul-long v8, v4, v2

    sub-long/2addr p0, v8

    mul-long v2, v2, v6

    sub-long/2addr v4, v2

    const/16 v2, 0x30

    const-wide/16 v8, 0xa

    const/16 v3, 0x3a

    cmp-long v10, v6, v0

    if-lez v10, :cond_1

    .line 6
    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v0, v4, v8

    if-gez v0, :cond_1

    .line 7
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v0, p0, v8

    if-gez v0, :cond_2

    .line 9
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static getDefaultProgressColor(Landroid/content/Context;)I
    .locals 4

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/leanback/R$attr;->playbackProgressPrimaryColor:I

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/leanback/R$color;->lb_playback_progress_color_no_theme:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method private static getDefaultSecondaryProgressColor(Landroid/content/Context;)I
    .locals 4

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/leanback/R$attr;->playbackProgressSecondaryColor:I

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/leanback/R$color;->lb_playback_progress_secondary_color_no_theme:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method private initRow(Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mPlaybackControlsPresenter:Landroidx/leanback/widget/ControlBarPresenter;

    iget-object v1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ControlBarPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

    iput-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroidx/leanback/widget/SeekBar;

    iget-boolean v1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mProgressColorSet:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mProgressColor:I

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->getDefaultProgressColor(Landroid/content/Context;)I

    move-result v1

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/SeekBar;->setProgressColor(I)V

    .line 6
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroidx/leanback/widget/SeekBar;

    iget-boolean v1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryProgressColorSet:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryProgressColor:I

    goto :goto_1

    :cond_1
    iget-object v1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->getDefaultSecondaryProgressColor(Landroid/content/Context;)I

    move-result v1

    .line 8
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/SeekBar;->setSecondaryProgressColor(I)V

    .line 9
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryControlsPresenter:Landroidx/leanback/widget/ControlBarPresenter;

    iget-object v1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsDock:Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ControlBarPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

    iput-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

    .line 12
    iget-object v1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsDock:Landroid/view/ViewGroup;

    iget-object v0, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    sget v1, Landroidx/leanback/R$id;->transport_row:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/PlaybackTransportRowView;

    new-instance v1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$3;

    invoke-direct {v1, p1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$3;-><init>(Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    .line 14
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/PlaybackTransportRowView;->setOnUnhandledKeyListener(Landroidx/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;)V

    return-void
.end method


# virtual methods
.method public final createRowViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/leanback/R$layout;->lb_playback_transport_controls_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance v0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object v1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mDescriptionPresenter:Landroidx/leanback/widget/Presenter;

    invoke-direct {v0, p0, p1, v1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;-><init>(Landroidx/leanback/widget/PlaybackTransportRowPresenter;Landroid/view/View;Landroidx/leanback/widget/Presenter;)V

    .line 3
    invoke-direct {p0, v0}, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->initRow(Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    return-object v0
.end method

.method public getDefaultSeekIncrement()F
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mDefaultSeekIncrement:F

    return v0
.end method

.method public getOnActionClickedListener()Landroidx/leanback/widget/OnActionClickedListener;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mOnActionClickedListener:Landroidx/leanback/widget/OnActionClickedListener;

    return-object v0
.end method

.method public getProgressColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mProgressColor:I

    return v0
.end method

.method public getSecondaryProgressColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryProgressColor:I

    return v0
.end method

.method public onBindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 2
    check-cast p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    .line 3
    invoke-virtual {p1}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/PlaybackControlsRow;

    .line 4
    invoke-virtual {p2}, Landroidx/leanback/widget/PlaybackControlsRow;->getItem()Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    if-eqz v0, :cond_1

    .line 8
    iget-object v3, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mDescriptionPresenter:Landroidx/leanback/widget/Presenter;

    invoke-virtual {p2}, Landroidx/leanback/widget/PlaybackControlsRow;->getItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroidx/leanback/widget/Presenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroidx/leanback/widget/PlaybackControlsRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :goto_1
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroidx/leanback/widget/PlaybackControlsRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsBoundData:Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-virtual {p2}, Landroidx/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/widget/ControlBarPresenter$BoundData;->adapter:Landroidx/leanback/widget/ObjectAdapter;

    .line 14
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsBoundData:Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getPresenter(Z)Landroidx/leanback/widget/Presenter;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/widget/ControlBarPresenter$BoundData;->presenter:Landroidx/leanback/widget/Presenter;

    .line 15
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsBoundData:Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    iput-object p1, v0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;->mRowViewHolder:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    .line 16
    iget-object v1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mPlaybackControlsPresenter:Landroidx/leanback/widget/ControlBarPresenter;

    iget-object v3, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-virtual {v1, v3, v0}, Landroidx/leanback/widget/ControlBarPresenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 17
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryBoundData:Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-virtual {p2}, Landroidx/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/widget/ControlBarPresenter$BoundData;->adapter:Landroidx/leanback/widget/ObjectAdapter;

    .line 18
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryBoundData:Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getPresenter(Z)Landroidx/leanback/widget/Presenter;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/widget/ControlBarPresenter$BoundData;->presenter:Landroidx/leanback/widget/Presenter;

    .line 19
    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryBoundData:Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    iput-object p1, v0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;->mRowViewHolder:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    .line 20
    iget-object v1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryControlsPresenter:Landroidx/leanback/widget/ControlBarPresenter;

    iget-object v2, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/ControlBarPresenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p2}, Landroidx/leanback/widget/PlaybackControlsRow;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->setTotalTime(J)V

    .line 22
    invoke-virtual {p2}, Landroidx/leanback/widget/PlaybackControlsRow;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->setCurrentPosition(J)V

    .line 23
    invoke-virtual {p2}, Landroidx/leanback/widget/PlaybackControlsRow;->getBufferedPosition()J

    move-result-wide v0

    long-to-double v0, v0

    .line 24
    iget-wide v2, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v0, v0, v2

    .line 25
    iget-object v2, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroidx/leanback/widget/SeekBar;

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/SeekBar;->setSecondaryProgress(I)V

    .line 26
    iget-object p1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mListener:Landroidx/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/PlaybackControlsRow;->setOnPlaybackProgressChangedListener(Landroidx/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;)V

    return-void
.end method

.method public onReappear(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    .line 2
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroidx/leanback/widget/SeekBar;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public final onRowViewAttachedToWindow(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/widget/RowPresenter;->onRowViewAttachedToWindow(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mDescriptionPresenter:Landroidx/leanback/widget/Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/Presenter;->onViewAttachedToWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final onRowViewDetachedFromWindow(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/widget/RowPresenter;->onRowViewDetachedFromWindow(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mDescriptionPresenter:Landroidx/leanback/widget/Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final onRowViewSelected(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/leanback/widget/RowPresenter;->onRowViewSelected(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->dispatchItemSelection()V

    :cond_0
    return-void
.end method

.method public onUnbindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 4

    .line 1
    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    .line 2
    invoke-virtual {v0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/PlaybackControlsRow;

    .line 3
    iget-object v2, v0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mDescriptionPresenter:Landroidx/leanback/widget/Presenter;

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/Presenter;->onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    .line 5
    :cond_0
    iget-object v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mPlaybackControlsPresenter:Landroidx/leanback/widget/ControlBarPresenter;

    iget-object v3, v0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/ControlBarPresenter;->onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    .line 6
    iget-object v2, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryControlsPresenter:Landroidx/leanback/widget/ControlBarPresenter;

    iget-object v0, v0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/ControlBarPresenter;->onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/PlaybackControlsRow;->setOnPlaybackProgressChangedListener(Landroidx/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;)V

    .line 8
    invoke-super {p0, p1}, Landroidx/leanback/widget/RowPresenter;->onUnbindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public setDefaultSeekIncrement(F)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mDefaultSeekIncrement:F

    return-void
.end method

.method public setDescriptionPresenter(Landroidx/leanback/widget/Presenter;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mDescriptionPresenter:Landroidx/leanback/widget/Presenter;

    return-void
.end method

.method public setOnActionClickedListener(Landroidx/leanback/widget/OnActionClickedListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mOnActionClickedListener:Landroidx/leanback/widget/OnActionClickedListener;

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mProgressColor:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mProgressColorSet:Z

    return-void
.end method

.method public setSecondaryProgressColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryProgressColor:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryProgressColorSet:Z

    return-void
.end method
