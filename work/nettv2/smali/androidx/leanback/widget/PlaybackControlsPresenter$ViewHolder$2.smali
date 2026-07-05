.class Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder$2;
.super Ljava/lang/Object;
.source "PlaybackControlsPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder$2;->this$1:Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder$2;->this$1:Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 2
    iget-boolean v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroidx/leanback/widget/Presenter;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->showControls(Landroidx/leanback/widget/Presenter;)V

    return-void
.end method
