.class Landroidx/leanback/widget/PlaybackTransportRowPresenter$2;
.super Ljava/lang/Object;
.source "PlaybackTransportRowPresenter.java"

# interfaces
.implements Landroidx/leanback/widget/ControlBarPresenter$OnControlClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/PlaybackTransportRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/PlaybackTransportRowPresenter;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/PlaybackTransportRowPresenter;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$2;->this$0:Landroidx/leanback/widget/PlaybackTransportRowPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/ControlBarPresenter$BoundData;)V
    .locals 2

    .line 1
    check-cast p3, Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    iget-object p3, p3, Landroidx/leanback/widget/PlaybackTransportRowPresenter$BoundData;->mRowViewHolder:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    .line 2
    invoke-virtual {p3}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p3}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    .line 4
    invoke-virtual {p3}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object v1

    .line 5
    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/leanback/widget/BaseOnItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$2;->this$0:Landroidx/leanback/widget/PlaybackTransportRowPresenter;

    iget-object p1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->mOnActionClickedListener:Landroidx/leanback/widget/OnActionClickedListener;

    if-eqz p1, :cond_1

    instance-of p3, p2, Landroidx/leanback/widget/Action;

    if-eqz p3, :cond_1

    .line 7
    check-cast p2, Landroidx/leanback/widget/Action;

    invoke-interface {p1, p2}, Landroidx/leanback/widget/OnActionClickedListener;->onActionClicked(Landroidx/leanback/widget/Action;)V

    :cond_1
    return-void
.end method
