.class public Landroidx/leanback/media/PlaybackTransportControlGlue;
.super Landroidx/leanback/media/PlaybackBaseControlGlue;
.source "PlaybackTransportControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;,
        Landroidx/leanback/media/PlaybackTransportControlGlue$UpdatePlaybackStateHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/leanback/media/PlayerAdapter;",
        ">",
        "Landroidx/leanback/media/PlaybackBaseControlGlue<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final sHandler:Landroid/os/Handler;


# instance fields
.field public final mGlueWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/leanback/media/PlaybackBaseControlGlue;",
            ">;"
        }
    .end annotation
.end field

.field public final mPlaybackSeekUiClient:Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/leanback/media/PlaybackTransportControlGlue<",
            "TT;>.SeekUiClient;"
        }
    .end annotation
.end field

.field public mSeekEnabled:Z

.field public mSeekProvider:Landroidx/leanback/widget/PlaybackSeekDataProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/leanback/media/PlaybackTransportControlGlue$UpdatePlaybackStateHandler;

    invoke-direct {v0}, Landroidx/leanback/media/PlaybackTransportControlGlue$UpdatePlaybackStateHandler;-><init>()V

    sput-object v0, Landroidx/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/leanback/media/PlayerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/leanback/media/PlaybackBaseControlGlue;-><init>(Landroid/content/Context;Landroidx/leanback/media/PlayerAdapter;)V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;

    invoke-direct {p1, p0}, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;-><init>(Landroidx/leanback/media/PlaybackTransportControlGlue;)V

    iput-object p1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mPlaybackSeekUiClient:Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;

    return-void
.end method

.method private updatePlaybackState(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->onUpdateProgress()V

    .line 3
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    iget-object v1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mPlaybackSeekUiClient:Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;

    iget-boolean v1, v1, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mIsSeek:Z

    invoke-virtual {v0, v1}, Landroidx/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    .line 5
    :goto_0
    iget-boolean v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mFadeWhenPlaying:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/media/PlaybackGlueHost;->setControlsOverlayAutoHideEnabled(Z)V

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->getIndex()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 9
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->getControlsRow()Landroidx/leanback/widget/PlaybackControlsRow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-static {p1, v0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->notifyItemChanged(Landroidx/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final dispatchAction(Landroidx/leanback/widget/Action;Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/16 p1, 0x55

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x7e

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p2, :cond_3

    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, p1, :cond_3

    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x7f

    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_4

    .line 6
    iget-boolean p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    if-eqz p1, :cond_4

    .line 7
    iput-boolean v1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    .line 8
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->pause()V

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_5

    .line 9
    iget-boolean p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    if-nez p1, :cond_5

    .line 10
    iput-boolean v2, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    .line 11
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->play()V

    .line 12
    :cond_5
    :goto_4
    iget-boolean p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    invoke-direct {p0, p1}, Landroidx/leanback/media/PlaybackTransportControlGlue;->updatePlaybackState(Z)V

    .line 13
    sget-object p1, Landroidx/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    const/16 v0, 0x64

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 14
    iget-object p2, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 15
    :cond_6
    instance-of p2, p1, Landroidx/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-eqz p2, :cond_7

    .line 16
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->next()V

    :goto_5
    const/4 v1, 0x1

    goto :goto_6

    .line 17
    :cond_7
    instance-of p1, p1, Landroidx/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-eqz p1, :cond_8

    .line 18
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->previous()V

    goto :goto_5

    :cond_8
    :goto_6
    return v1
.end method

.method public final getSeekProvider()Landroidx/leanback/widget/PlaybackSeekDataProvider;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroidx/leanback/widget/PlaybackSeekDataProvider;

    return-object v0
.end method

.method public final isSeekEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mSeekEnabled:Z

    return v0
.end method

.method public onActionClicked(Landroidx/leanback/widget/Action;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->dispatchAction(Landroidx/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public final onAttachedToHost(Landroidx/leanback/media/PlaybackGlueHost;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onAttachedToHost(Landroidx/leanback/media/PlaybackGlueHost;)V

    .line 2
    instance-of v0, p1, Landroidx/leanback/widget/PlaybackSeekUi;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/leanback/widget/PlaybackSeekUi;

    iget-object v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mPlaybackSeekUiClient:Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;

    invoke-interface {p1, v0}, Landroidx/leanback/widget/PlaybackSeekUi;->setPlaybackSeekUiClient(Landroidx/leanback/widget/PlaybackSeekUi$Client;)V

    :cond_0
    return-void
.end method

.method public final onCreatePrimaryActions(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayPauseAction:Landroidx/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 3
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateRowPresenter()Landroidx/leanback/widget/PlaybackRowPresenter;
    .locals 2

    .line 1
    new-instance v0, Landroidx/leanback/media/PlaybackTransportControlGlue$1;

    invoke-direct {v0}, Landroidx/leanback/media/PlaybackTransportControlGlue$1;-><init>()V

    .line 2
    new-instance v1, Landroidx/leanback/media/PlaybackTransportControlGlue$2;

    invoke-direct {v1, p0}, Landroidx/leanback/media/PlaybackTransportControlGlue$2;-><init>(Landroidx/leanback/media/PlaybackTransportControlGlue;)V

    .line 3
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/PlaybackTransportRowPresenter;->setDescriptionPresenter(Landroidx/leanback/widget/Presenter;)V

    return-object v1
.end method

.method public final onDetachedFromHost()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onDetachedFromHost()V

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v0

    instance-of v0, v0, Landroidx/leanback/widget/PlaybackSeekUi;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/PlaybackSeekUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/leanback/widget/PlaybackSeekUi;->setPlaybackSeekUiClient(Landroidx/leanback/widget/PlaybackSeekUi$Client;)V

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x4

    const/4 v0, 0x0

    if-eq p2, p1, :cond_2

    const/16 p1, 0x6f

    if-eq p2, p1, :cond_2

    packed-switch p2, :pswitch_data_0

    .line 1
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    .line 2
    iget-object v1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v1, p1, p2}, Landroidx/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroidx/leanback/widget/ObjectAdapter;I)Landroidx/leanback/widget/Action;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroidx/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroidx/leanback/widget/ObjectAdapter;I)Landroidx/leanback/widget/Action;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p0, p1, p3}, Landroidx/leanback/media/PlaybackTransportControlGlue;->dispatchAction(Landroidx/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPlayStateChanged()V
    .locals 4

    .line 1
    sget-object v0, Landroidx/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v1}, Landroidx/leanback/media/PlayerAdapter;->isPlaying()Z

    move-result v1

    iget-boolean v3, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    if-eq v1, v3, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->onUpdatePlaybackState()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->onUpdatePlaybackState()V

    .line 7
    :goto_0
    invoke-super {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onPlayStateChanged()V

    return-void
.end method

.method public final onUpdatePlaybackState()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroidx/leanback/media/PlayerAdapter;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    .line 2
    invoke-direct {p0, v0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->updatePlaybackState(Z)V

    return-void
.end method

.method public final onUpdateProgress()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mPlaybackSeekUiClient:Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;

    iget-boolean v0, v0, Landroidx/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mIsSeek:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onUpdateProgress()V

    :cond_0
    return-void
.end method

.method public setControlsRow(Landroidx/leanback/widget/PlaybackControlsRow;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/media/PlaybackBaseControlGlue;->setControlsRow(Landroidx/leanback/widget/PlaybackControlsRow;)V

    .line 2
    sget-object p1, Landroidx/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    const/16 v1, 0x64

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->onUpdatePlaybackState()V

    return-void
.end method

.method public final setSeekEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mSeekEnabled:Z

    return-void
.end method

.method public final setSeekProvider(Landroidx/leanback/widget/PlaybackSeekDataProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroidx/leanback/widget/PlaybackSeekDataProvider;

    return-void
.end method
