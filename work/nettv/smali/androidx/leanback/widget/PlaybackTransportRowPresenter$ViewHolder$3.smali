.class Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;
.super Ljava/lang/Object;
.source "PlaybackTransportRowPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;-><init>(Landroidx/leanback/widget/PlaybackTransportRowPresenter;Landroid/view/View;Landroidx/leanback/widget/Presenter;)V
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

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object v0, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->this$0:Landroidx/leanback/widget/PlaybackTransportRowPresenter;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 2
    iget-object v1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    iget-object v2, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v1

    iget-object v2, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 6
    invoke-virtual {p1}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object v3

    .line 7
    invoke-interface {v1, p1, v2, p1, v3}, Landroidx/leanback/widget/BaseOnItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-object v0, v0, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mOnActionClickedListener:Landroidx/leanback/widget/OnActionClickedListener;

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-interface {v0, p1}, Landroidx/leanback/widget/OnActionClickedListener;->onActionClicked(Landroidx/leanback/widget/Action;)V

    :cond_2
    return-void
.end method
