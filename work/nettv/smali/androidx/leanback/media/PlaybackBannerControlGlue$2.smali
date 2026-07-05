.class Landroidx/leanback/media/PlaybackBannerControlGlue$2;
.super Landroidx/leanback/widget/PlaybackControlsRowPresenter;
.source "PlaybackBannerControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/media/PlaybackBannerControlGlue;->onCreateRowPresenter()Landroidx/leanback/widget/PlaybackRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/media/PlaybackBannerControlGlue;


# direct methods
.method public constructor <init>(Landroidx/leanback/media/PlaybackBannerControlGlue;Landroidx/leanback/widget/Presenter;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/PlaybackBannerControlGlue$2;->this$0:Landroidx/leanback/media/PlaybackBannerControlGlue;

    invoke-direct {p0, p2}, Landroidx/leanback/widget/PlaybackControlsRowPresenter;-><init>(Landroidx/leanback/widget/Presenter;)V

    return-void
.end method


# virtual methods
.method public final onBindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/leanback/widget/PlaybackControlsRowPresenter;->onBindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Landroidx/leanback/media/PlaybackBannerControlGlue$2;->this$0:Landroidx/leanback/media/PlaybackBannerControlGlue;

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public final onUnbindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/widget/PlaybackControlsRowPresenter;->onUnbindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
