.class Landroidx/leanback/media/PlaybackBaseControlGlue$1;
.super Landroidx/leanback/media/PlayerAdapter$Callback;
.source "PlaybackBaseControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/media/PlaybackBaseControlGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;


# direct methods
.method public constructor <init>(Landroidx/leanback/media/PlaybackBaseControlGlue;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    invoke-direct {p0}, Landroidx/leanback/media/PlayerAdapter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferedPositionChanged(Landroidx/leanback/media/PlayerAdapter;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    .line 2
    iget-object v0, p1, Landroidx/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroidx/leanback/media/PlayerAdapter;

    invoke-virtual {p1}, Landroidx/leanback/media/PlayerAdapter;->getBufferedPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/PlaybackControlsRow;->setBufferedPosition(J)V

    :cond_0
    return-void
.end method

.method public onBufferingStateChanged(Landroidx/leanback/media/PlayerAdapter;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    iput-boolean p2, p1, Landroidx/leanback/media/PlaybackBaseControlGlue;->mBuffering:Z

    .line 2
    iget-object p1, p1, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;->onBufferingStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public onCurrentPositionChanged(Landroidx/leanback/media/PlayerAdapter;)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onUpdateProgress()V

    return-void
.end method

.method public onDurationChanged(Landroidx/leanback/media/PlayerAdapter;)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onUpdateDuration()V

    return-void
.end method

.method public onError(Landroidx/leanback/media/PlayerAdapter;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/leanback/media/PlaybackBaseControlGlue;->mErrorSet:Z

    .line 2
    iput p2, p1, Landroidx/leanback/media/PlaybackBaseControlGlue;->mErrorCode:I

    .line 3
    iput-object p3, p1, Landroidx/leanback/media/PlaybackBaseControlGlue;->mErrorMessage:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p2, p3}, Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;->onError(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Landroidx/leanback/media/PlayerAdapter;)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onMetadataChanged()V

    return-void
.end method

.method public onPlayCompleted(Landroidx/leanback/media/PlayerAdapter;)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onPlayCompleted()V

    return-void
.end method

.method public onPlayStateChanged(Landroidx/leanback/media/PlayerAdapter;)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onPlayStateChanged()V

    return-void
.end method

.method public onPreparedStateChanged(Landroidx/leanback/media/PlayerAdapter;)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onUpdateDuration()V

    .line 3
    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v3, p1}, Landroidx/leanback/media/PlaybackGlue$PlayerCallback;->onPreparedStateChanged(Landroidx/leanback/media/PlaybackGlue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/leanback/media/PlayerAdapter;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    iput p2, p1, Landroidx/leanback/media/PlaybackBaseControlGlue;->mVideoWidth:I

    .line 2
    iput p3, p1, Landroidx/leanback/media/PlaybackBaseControlGlue;->mVideoHeight:I

    .line 3
    iget-object p1, p1, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2, p3}, Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method
