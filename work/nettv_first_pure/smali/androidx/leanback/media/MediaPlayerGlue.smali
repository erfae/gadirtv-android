.class public Landroidx/leanback/media/MediaPlayerGlue;
.super Landroidx/leanback/media/PlaybackControlGlue;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FAST_FORWARD_REWIND_REPEAT_DELAY:I = 0xc8

.field public static final FAST_FORWARD_REWIND_STEP:I = 0x2710

.field public static final NO_REPEAT:I = 0x0

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_ONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaPlayerGlue"


# instance fields
.field private mArtist:Ljava/lang/String;

.field private mCover:Landroid/graphics/drawable/Drawable;

.field public mHandler:Landroid/os/Handler;

.field public mInitialized:Z

.field private mLastKeyDownEvent:J

.field private mMediaSourcePath:Ljava/lang/String;

.field private mMediaSourceUri:Landroid/net/Uri;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field public mPlayer:Landroid/media/MediaPlayer;

.field private final mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSelectedAction:Landroidx/leanback/widget/Action;

.field public final mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

.field public final mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    new-array v3, v0, [I

    aput v0, v3, v2

    .line 1
    invoke-direct {p0, p1, v1, v3}, Landroidx/leanback/media/MediaPlayerGlue;-><init>(Landroid/content/Context;[I[I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I[I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/media/PlaybackControlGlue;-><init>(Landroid/content/Context;[I[I)V

    .line 3
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mLastKeyDownEvent:J

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    .line 8
    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    .line 9
    new-instance p1, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    .line 10
    new-instance p1, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    .line 11
    new-instance p2, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    const/4 p3, 0x1

    .line 12
    invoke-virtual {p1, p3}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    .line 13
    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    return-void
.end method

.method private prepareMediaForPlaying()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->reset()V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :goto_0
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 7
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroidx/leanback/media/MediaPlayerGlue$4;

    invoke-direct {v1, p0}, Landroidx/leanback/media/MediaPlayerGlue$4;-><init>(Landroidx/leanback/media/MediaPlayerGlue;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 8
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroidx/leanback/media/MediaPlayerGlue$5;

    invoke-direct {v1, p0}, Landroidx/leanback/media/MediaPlayerGlue$5;-><init>(Landroidx/leanback/media/MediaPlayerGlue;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 11
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 12
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->onStateChanged()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final changeToUnitialized()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/media/PlaybackGlue$PlayerCallback;

    .line 5
    invoke-virtual {v1, p0}, Landroidx/leanback/media/PlaybackGlue$PlayerCallback;->onPreparedStateChanged(Landroidx/leanback/media/PlaybackGlue;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enableProgressUpdating(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    .line 3
    new-instance p1, Landroidx/leanback/media/MediaPlayerGlue$1;

    invoke-direct {p1, p0}, Landroidx/leanback/media/MediaPlayerGlue$1;-><init>(Landroidx/leanback/media/MediaPlayerGlue;)V

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    .line 4
    :cond_2
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->getUpdatePeriod()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentSpeedId()I
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->isMediaPlaying()Z

    move-result v0

    return v0
.end method

.method public getMediaArt()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mCover:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMediaDuration()I
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMediaSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "N/a"

    :goto_0
    return-object v0
.end method

.method public getMediaTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "N/a"

    :goto_0
    return-object v0
.end method

.method public getSupportedActions()J
    .locals 2

    const-wide/16 v0, 0xe0

    return-wide v0
.end method

.method public hasValidMedia()Z
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMediaPlaying()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

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

.method public isPlaying()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->isMediaPlaying()Z

    move-result v0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    return v0
.end method

.method public onActionClicked(Landroidx/leanback/widget/Action;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/media/PlaybackControlGlue;->onActionClicked(Landroidx/leanback/widget/Action;)V

    .line 2
    instance-of v0, p1, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->nextIndex()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->getIndex()I

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    .line 8
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    if-ne p1, v0, :cond_4

    .line 10
    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->getIndex()I

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    .line 13
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    .line 14
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->onMetadataChanged()V

    return-void
.end method

.method public final onAttachedToHost(Landroidx/leanback/media/PlaybackGlueHost;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/media/PlaybackControlGlue;->onAttachedToHost(Landroidx/leanback/media/PlaybackGlueHost;)V

    .line 2
    instance-of v0, p1, Landroidx/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/leanback/media/SurfaceHolderGlueHost;

    new-instance v0, Landroidx/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;

    invoke-direct {v0, p0}, Landroidx/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;-><init>(Landroidx/leanback/media/MediaPlayerGlue;)V

    invoke-interface {p1, v0}, Landroidx/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    return-void
.end method

.method public final onCreateSecondaryActions(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDetachedFromHost()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v0

    instance-of v0, v0, Landroidx/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v0

    check-cast v0, Landroidx/leanback/media/SurfaceHolderGlueHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->reset()V

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->release()V

    .line 5
    invoke-super {p0}, Landroidx/leanback/media/PlaybackControlGlue;->onDetachedFromHost()V

    return-void
.end method

.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 2
    instance-of p1, p2, Landroidx/leanback/widget/Action;

    if-eqz p1, :cond_0

    .line 3
    check-cast p2, Landroidx/leanback/widget/Action;

    iput-object p2, p0, Landroidx/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroidx/leanback/widget/Action;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroidx/leanback/widget/Action;

    :goto_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/leanback/media/MediaPlayerGlue;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroidx/leanback/widget/Action;

    instance-of v1, v0, Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 2
    instance-of v0, v0, Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_5

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Landroidx/leanback/media/MediaPlayerGlue;->mLastKeyDownEvent:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xc8

    cmp-long v6, v0, v4

    if-lez v6, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_a

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mLastKeyDownEvent:J

    .line 8
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getCurrentPosition()I

    move-result p1

    add-int/lit16 p1, p1, 0x2710

    .line 9
    iget-object p2, p0, Landroidx/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroidx/leanback/widget/Action;

    instance-of p2, p2, Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz p2, :cond_6

    .line 10
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getCurrentPosition()I

    move-result p1

    add-int/lit16 p1, p1, -0x2710

    :cond_6
    if-gez p1, :cond_7

    goto :goto_6

    :cond_7
    move v2, p1

    .line 11
    :goto_6
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getMediaDuration()I

    move-result p1

    if-le v2, p1, :cond_8

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getMediaDuration()I

    move-result v2

    .line 12
    :cond_8
    iget-boolean p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-nez p1, :cond_9

    goto :goto_7

    .line 13
    :cond_9
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :goto_7
    return v3

    .line 14
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/media/PlaybackControlGlue;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public pause()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->isMediaPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->onStateChanged()V

    :cond_0
    return-void
.end method

.method public play(I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->onMetadataChanged()V

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->onStateChanged()V

    .line 5
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->updateProgress()V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->changeToUnitialized()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->changeToUnitialized()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mArtist:Ljava/lang/String;

    return-void
.end method

.method public setCover(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mCover:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setMediaSource(Landroid/net/Uri;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

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
    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Landroidx/leanback/media/MediaPlayerGlue;->prepareMediaForPlaying()V

    const/4 p1, 0x1

    return p1
.end method

.method public setMediaSource(Ljava/lang/String;)Z
    .locals 1

    .line 5
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    .line 7
    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Landroidx/leanback/media/MediaPlayerGlue;->prepareMediaForPlaying()V

    const/4 p1, 0x1

    return p1
.end method

.method public setMode(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Landroidx/leanback/media/MediaPlayerGlue$3;

    invoke-direct {p1, p0}, Landroidx/leanback/media/MediaPlayerGlue$3;-><init>(Landroidx/leanback/media/MediaPlayerGlue;)V

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Landroidx/leanback/media/MediaPlayerGlue$2;

    invoke-direct {p1, p0}, Landroidx/leanback/media/MediaPlayerGlue$2;-><init>(Landroidx/leanback/media/MediaPlayerGlue;)V

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/media/MediaPlayerGlue;->setMediaSource(Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->onMetadataChanged()V

    return-void
.end method
