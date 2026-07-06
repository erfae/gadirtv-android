.class Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;
.super Landroidx/leanback/widget/SeekBar$AccessibilitySeekListener;
.source "PlaybackTransportRowPresenter.java"


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

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-direct {p0}, Landroidx/leanback/widget/SeekBar$AccessibilitySeekListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilitySeekBackward()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    .line 2
    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->startSeek()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->updateProgressInSeek(Z)V

    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method public onAccessibilitySeekForward()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    .line 2
    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->startSeek()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->updateProgressInSeek(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0
.end method
