.class public Landroidx/leanback/media/MediaPlayerAdapter;
.super Landroidx/leanback/media/PlayerAdapter;
.source "MediaPlayerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;
    }
.end annotation


# instance fields
.field public mBufferedProgress:J

.field public mBufferingStart:Z

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mHasDisplay:Z

.field public mInitialized:Z

.field public mMediaSourceUri:Landroid/net/Uri;

.field public final mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field public final mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field public final mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field public final mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field public mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field public final mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field public final mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field public final mPlayer:Landroid/media/MediaPlayer;

.field public final mRunnable:Ljava/lang/Runnable;

.field public mSurfaceHolderGlueHost:Landroidx/leanback/media/SurfaceHolderGlueHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/leanback/media/PlayerAdapter;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    .line 3
    new-instance v0, Landroidx/leanback/media/MediaPlayerAdapter$1;

    invoke-direct {v0, p0}, Landroidx/leanback/media/MediaPlayerAdapter$1;-><init>(Landroidx/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mRunnable:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    .line 7
    new-instance v0, Landroidx/leanback/media/MediaPlayerAdapter$2;

    invoke-direct {v0, p0}, Landroidx/leanback/media/MediaPlayerAdapter$2;-><init>(Landroidx/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 8
    new-instance v0, Landroidx/leanback/media/MediaPlayerAdapter$3;

    invoke-direct {v0, p0}, Landroidx/leanback/media/MediaPlayerAdapter$3;-><init>(Landroidx/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 9
    new-instance v0, Landroidx/leanback/media/MediaPlayerAdapter$4;

    invoke-direct {v0, p0}, Landroidx/leanback/media/MediaPlayerAdapter$4;-><init>(Landroidx/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 10
    new-instance v0, Landroidx/leanback/media/MediaPlayerAdapter$5;

    invoke-direct {v0, p0}, Landroidx/leanback/media/MediaPlayerAdapter$5;-><init>(Landroidx/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 11
    new-instance v0, Landroidx/leanback/media/MediaPlayerAdapter$6;

    invoke-direct {v0, p0}, Landroidx/leanback/media/MediaPlayerAdapter$6;-><init>(Landroidx/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 12
    new-instance v0, Landroidx/leanback/media/MediaPlayerAdapter$7;

    invoke-direct {v0, p0}, Landroidx/leanback/media/MediaPlayerAdapter$7;-><init>(Landroidx/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 13
    new-instance v0, Landroidx/leanback/media/MediaPlayerAdapter$8;

    invoke-direct {v0, p0}, Landroidx/leanback/media/MediaPlayerAdapter$8;-><init>(Landroidx/leanback/media/MediaPlayerAdapter;)V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 14
    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private prepareMediaForPlaying()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerAdapter;->reset()V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 5
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 6
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 7
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 8
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 9
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 10
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 11
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 12
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    .line 13
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 14
    invoke-virtual {p0}, Landroidx/leanback/media/PlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroidx/leanback/media/PlayerAdapter;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final changeToUnitialized()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    .line 4
    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/leanback/media/PlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroidx/leanback/media/PlayerAdapter;)V

    :cond_0
    return-void
.end method

.method public getBufferedPosition()J
    .locals 2

    iget-wide v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mBufferedProgress:J

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public final getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getProgressUpdatingInterval()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroidx/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final notifyBufferingStartEnd()V
    .locals 2

    invoke-virtual {p0}, Landroidx/leanback/media/PlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mBufferingStart:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, p0, v1}, Landroidx/leanback/media/PlayerAdapter$Callback;->onBufferingStateChanged(Landroidx/leanback/media/PlayerAdapter;Z)V

    return-void
.end method

.method public onAttachedToHost(Landroidx/leanback/media/PlaybackGlueHost;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroidx/leanback/media/SurfaceHolderGlueHost;

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroidx/leanback/media/SurfaceHolderGlueHost;

    .line 3
    new-instance v0, Landroidx/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;

    invoke-direct {v0, p0}, Landroidx/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;-><init>(Landroidx/leanback/media/MediaPlayerAdapter;)V

    invoke-interface {p1, v0}, Landroidx/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromHost()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroidx/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Landroidx/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3
    iput-object v1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroidx/leanback/media/SurfaceHolderGlueHost;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerAdapter;->reset()V

    .line 5
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerAdapter;->release()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerAdapter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/media/PlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroidx/leanback/media/PlayerAdapter;)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/media/PlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroidx/leanback/media/PlayerAdapter;)V

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/media/PlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroidx/leanback/media/PlayerAdapter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerAdapter;->changeToUnitialized()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    .line 3
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerAdapter;->changeToUnitialized()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setDataSource(Landroid/net/Uri;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mMediaSourceUri:Landroid/net/Uri;

    .line 3
    invoke-direct {p0}, Landroidx/leanback/media/MediaPlayerAdapter;->prepareMediaForPlaying()V

    const/4 p1, 0x1

    return p1
.end method

.method public final setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iput-boolean v1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 4
    iget-boolean p1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz p1, :cond_2

    .line 5
    iget-boolean p1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0}, Landroidx/leanback/media/PlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroidx/leanback/media/PlayerAdapter;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-boolean p1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroidx/leanback/media/PlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroidx/leanback/media/PlayerAdapter;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setProgressUpdatingEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerAdapter;->getProgressUpdatingInterval()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
