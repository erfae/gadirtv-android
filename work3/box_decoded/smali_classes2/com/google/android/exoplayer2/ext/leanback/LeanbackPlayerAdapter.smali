.class public final Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;
.super Landroidx/leanback/media/PlayerAdapter;
.source "LeanbackPlayerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;
    }
.end annotation


# instance fields
.field private final componentListener:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;

.field private final context:Landroid/content/Context;

.field private controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

.field private errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private hasSurface:Z

.field private lastNotifiedPreparedState:Z

.field private playbackPreparer:Lcom/google/android/exoplayer2/PlaybackPreparer;

.field private final player:Lcom/google/android/exoplayer2/Player;

.field private surfaceHolderGlueHost:Landroidx/leanback/media/SurfaceHolderGlueHost;

.field private final updatePeriodMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.leanback"

    .line 46
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/Player;I)V
    .locals 0

    .line 71
    invoke-direct {p0}, Landroidx/leanback/media/PlayerAdapter;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->context:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    .line 74
    iput p3, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->updatePeriodMs:I

    .line 75
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->handler:Landroid/os/Handler;

    .line 76
    new-instance p1, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->componentListener:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;

    .line 77
    new-instance p1, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;)Lcom/google/android/exoplayer2/util/ErrorMessageProvider;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method private maybeNotifyPreparedStateChanged(Landroidx/leanback/media/PlayerAdapter$Callback;)V
    .locals 2

    .line 240
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->isPrepared()Z

    move-result v0

    .line 241
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->lastNotifiedPreparedState:Z

    if-eq v1, v0, :cond_0

    .line 242
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->lastNotifiedPreparedState:Z

    .line 243
    invoke-virtual {p1, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroidx/leanback/media/PlayerAdapter;)V

    :cond_0
    return-void
.end method

.method private static removeSurfaceHolderCallback(Landroidx/leanback/media/SurfaceHolderGlueHost;)V
    .locals 1

    const/4 v0, 0x0

    .line 249
    invoke-interface {p0, v0}, Landroidx/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public getBufferedPosition()J
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getDuration()J
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    .line 156
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPrepared()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->surfaceHolderGlueHost:Landroidx/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->hasSurface:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method notifyStateChanged()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    .line 230
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v1

    .line 231
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->maybeNotifyPreparedStateChanged(Landroidx/leanback/media/PlayerAdapter$Callback;)V

    .line 232
    invoke-virtual {v1, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroidx/leanback/media/PlayerAdapter;)V

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 233
    :goto_0
    invoke-virtual {v1, p0, v2}, Landroidx/leanback/media/PlayerAdapter$Callback;->onBufferingStateChanged(Landroidx/leanback/media/PlayerAdapter;Z)V

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 235
    invoke-virtual {v1, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onPlayCompleted(Landroidx/leanback/media/PlayerAdapter;)V

    :cond_1
    return-void
.end method

.method public onAttachedToHost(Landroidx/leanback/media/PlaybackGlueHost;)V
    .locals 1

    .line 114
    instance-of v0, p1, Landroidx/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    .line 115
    check-cast p1, Landroidx/leanback/media/SurfaceHolderGlueHost;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->surfaceHolderGlueHost:Landroidx/leanback/media/SurfaceHolderGlueHost;

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->componentListener:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;

    invoke-interface {p1, v0}, Landroidx/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->notifyStateChanged()V

    .line 119
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->componentListener:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 120
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->componentListener:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$VideoComponent;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    :cond_1
    return-void
.end method

.method public onDetachedFromHost()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->componentListener:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->componentListener:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->removeVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->surfaceHolderGlueHost:Landroidx/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_1

    .line 134
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->removeSurfaceHolderCallback(Landroidx/leanback/media/SurfaceHolderGlueHost;)V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->surfaceHolderGlueHost:Landroidx/leanback/media/SurfaceHolderGlueHost;

    :cond_1
    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->hasSurface:Z

    .line 138
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v1

    .line 139
    invoke-virtual {v1, p0, v0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onBufferingStateChanged(Landroidx/leanback/media/PlayerAdapter;Z)V

    .line 140
    invoke-virtual {v1, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroidx/leanback/media/PlayerAdapter;)V

    .line 141
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->maybeNotifyPreparedStateChanged(Landroidx/leanback/media/PlayerAdapter$Callback;)V

    return-void
.end method

.method public pause()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroidx/leanback/media/PlayerAdapter;)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->playbackPreparer:Lcom/google/android/exoplayer2/PlaybackPreparer;

    if-eqz v0, :cond_1

    .line 174
    invoke-interface {v0}, Lcom/google/android/exoplayer2/PlaybackPreparer;->preparePlayback()V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSeekTo(Lcom/google/android/exoplayer2/Player;IJ)Z

    .line 179
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroidx/leanback/media/PlayerAdapter;)V

    :cond_2
    return-void
.end method

.method public run()V
    .locals 3

    .line 211
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroidx/leanback/media/PlayerAdapter;)V

    .line 213
    invoke-virtual {v0, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onBufferedPositionChanged(Landroidx/leanback/media/PlayerAdapter;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->updatePeriodMs:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public seekTo(J)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSeekTo(Lcom/google/android/exoplayer2/Player;IJ)Z

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V
    .locals 0

    if-nez p1, :cond_0

    .line 96
    new-instance p1, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;-><init>()V

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    return-void
.end method

.method public setErrorMessageProvider(Lcom/google/android/exoplayer2/util/ErrorMessageProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;)V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/PlaybackPreparer;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->playbackPreparer:Lcom/google/android/exoplayer2/PlaybackPreparer;

    return-void
.end method

.method public setProgressUpdatingEnabled(Z)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method setVideoSurface(Landroid/view/Surface;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 220
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->hasSurface:Z

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoSurface(Landroid/view/Surface;)V

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->maybeNotifyPreparedStateChanged(Landroidx/leanback/media/PlayerAdapter$Callback;)V

    return-void
.end method
