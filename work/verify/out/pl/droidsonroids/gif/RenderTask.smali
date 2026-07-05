.class Lpl/droidsonroids/gif/RenderTask;
.super Lpl/droidsonroids/gif/SafeRunnable;
.source "RenderTask.java"


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/GifDrawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/SafeRunnable;-><init>(Lpl/droidsonroids/gif/GifDrawable;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .registers 8

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, v0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->renderFrame(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6a

    .line 2
    iget-object v4, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v0

    iput-wide v5, v4, Lpl/droidsonroids/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 3
    iget-object v4, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-boolean v4, v4, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-boolean v5, v4, Lpl/droidsonroids/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    if-nez v5, :cond_3e

    .line 4
    iget-object v4, v4, Lpl/droidsonroids/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v4, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v5, v4, Lpl/droidsonroids/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p0, v0, v1, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v4, Lpl/droidsonroids/gif/GifDrawable;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    .line 6
    :cond_3e
    iget-object v0, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->getCurrentFrameIndex()I

    move-result v0

    iget-object v1, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, v1, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getNumberOfFrames()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_73

    .line 7
    iget-object v0, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, v0, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->getCurrentLoop()I

    move-result v0

    iget-object v4, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-wide v4, v4, Lpl/droidsonroids/gif/GifDrawable;->mNextFrameRenderTime:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_73

    .line 8
    :cond_6a
    iget-object v0, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v0, Lpl/droidsonroids/gif/GifDrawable;->mNextFrameRenderTime:J

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    .line 10
    :cond_73
    :goto_73
    iget-object v0, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 11
    iget-object v0, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_8d
    return-void
.end method
