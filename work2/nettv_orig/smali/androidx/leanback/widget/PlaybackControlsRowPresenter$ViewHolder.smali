.class public Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;
.super Landroidx/leanback/widget/PlaybackRowPresenter$ViewHolder;
.source "PlaybackControlsRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/PlaybackControlsRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mBgView:Landroid/view/View;

.field public final mBottomSpacer:Landroid/view/View;

.field public final mCard:Landroid/view/ViewGroup;

.field public final mCardRightPanel:Landroid/view/ViewGroup;

.field public mControlsBoundData:Landroidx/leanback/widget/PlaybackControlsRowPresenter$BoundData;

.field public final mControlsDock:Landroid/view/ViewGroup;

.field public mControlsDockMarginEnd:I

.field public mControlsDockMarginStart:I

.field public mControlsVh:Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;

.field public final mDescriptionDock:Landroid/view/ViewGroup;

.field public final mDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

.field public final mImageView:Landroid/widget/ImageView;

.field public final mListener:Landroidx/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

.field public mSecondaryBoundData:Landroidx/leanback/widget/PlaybackControlsRowPresenter$BoundData;

.field public final mSecondaryControlsDock:Landroid/view/ViewGroup;

.field public mSecondaryControlsVh:Landroidx/leanback/widget/Presenter$ViewHolder;

.field public mSelectedItem:Ljava/lang/Object;

.field public mSelectedViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

.field public final mSpacer:Landroid/view/View;

.field public final synthetic this$0:Landroidx/leanback/widget/PlaybackControlsRowPresenter;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/PlaybackControlsRowPresenter;Landroid/view/View;Landroidx/leanback/widget/Presenter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->this$0:Landroidx/leanback/widget/PlaybackControlsRowPresenter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/leanback/widget/PlaybackRowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    new-instance p1, Landroidx/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-direct {p1}, Landroidx/leanback/widget/PlaybackControlsRowPresenter$BoundData;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsBoundData:Landroidx/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    .line 4
    new-instance p1, Landroidx/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-direct {p1}, Landroidx/leanback/widget/PlaybackControlsRowPresenter$BoundData;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryBoundData:Landroidx/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    .line 5
    new-instance p1, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder$1;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder$1;-><init>(Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mListener:Landroidx/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    .line 6
    sget p1, Landroidx/leanback/R$id;->controls_card:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCard:Landroid/view/ViewGroup;

    .line 7
    sget p1, Landroidx/leanback/R$id;->controls_card_right_panel:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCardRightPanel:Landroid/view/ViewGroup;

    .line 8
    sget p1, Landroidx/leanback/R$id;->image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 9
    sget p1, Landroidx/leanback/R$id;->description_dock:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    .line 10
    sget v0, Landroidx/leanback/R$id;->controls_dock:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    .line 11
    sget v0, Landroidx/leanback/R$id;->secondary_controls_dock:I

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryControlsDock:Landroid/view/ViewGroup;

    .line 13
    sget v0, Landroidx/leanback/R$id;->spacer:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSpacer:Landroid/view/View;

    .line 14
    sget v0, Landroidx/leanback/R$id;->bottom_spacer:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mBottomSpacer:Landroid/view/View;

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p3, p1}, Landroidx/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    if-eqz p2, :cond_1

    .line 16
    iget-object p2, p2, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
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
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSelectedViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

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

    iget-object v1, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSelectedViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object v2, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSelectedItem:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object v3

    .line 10
    invoke-interface {v0, v1, v2, p0, v3}, Landroidx/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getPresenter(Z)Landroidx/leanback/widget/Presenter;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroidx/leanback/widget/PresenterSelector;

    move-result-object v2

    instance-of v2, v2, Landroidx/leanback/widget/ControlButtonPresenterSelector;

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroidx/leanback/widget/PresenterSelector;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ControlButtonPresenterSelector;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/ControlButtonPresenterSelector;->getPrimaryPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroidx/leanback/widget/ControlButtonPresenterSelector;->getSecondaryPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object p1

    :goto_1
    return-object p1

    .line 7
    :cond_3
    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    :cond_4
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ObjectAdapter;->getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;

    move-result-object p1

    return-object p1
.end method

.method public final setOutline(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mBgView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v2}, Landroidx/leanback/widget/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;Z)V

    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mBgView:Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setZ(Landroid/view/View;F)V

    .line 4
    :cond_0
    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mBgView:Landroid/view/View;

    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0}, Landroidx/leanback/widget/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;Z)V

    .line 6
    sget v0, Landroidx/leanback/widget/PlaybackControlsRowPresenter;->sShadowZ:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$dimen;->lb_playback_controls_z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Landroidx/leanback/widget/PlaybackControlsRowPresenter;->sShadowZ:F

    .line 8
    :cond_1
    sget v0, Landroidx/leanback/widget/PlaybackControlsRowPresenter;->sShadowZ:F

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setZ(Landroid/view/View;F)V

    return-void
.end method
