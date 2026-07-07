.class Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;
.super Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;
.source "VOOSMPVideoViewPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;
    }
.end annotation


# static fields
.field private static final ERROR_NETWORK_NO_SOURCE:I = 0x2

.field private static final ERROR_SRC_NOT_SUPPORTED:I = 0x4

.field private static final ERROR_TIMEOUT:I = 0x3

.field private static final ERROR_UNKNOWN:I = 0x1

.field private static final mTag:Ljava/lang/String; = "@@@VOOSMPVideoViewPlayer"

.field private static mVolumeLevel:I


# instance fields
.field private mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

.field private mAudioMgr:Landroid/media/AudioManager;

.field private mExecPlayerStart:Z

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletePos:D

.field private mPosTimer:Ljava/util/Timer;

.field private mPosTimerTask:Ljava/util/TimerTask;

.field private mSurfaceHasNeverBeenCreated:Z

.field private mSurfaceIsValid:Z

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    .line 67
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    .line 68
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 69
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mHolder:Landroid/view/SurfaceHolder;

    .line 70
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 71
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAudioMgr:Landroid/media/AudioManager;

    .line 72
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mPosTimer:Ljava/util/Timer;

    .line 73
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mPosTimerTask:Ljava/util/TimerTask;

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 74
    iput-wide p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mOnCompletePos:D

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceHasNeverBeenCreated:Z

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceIsValid:Z

    .line 78
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mExecPlayerStart:Z

    .line 82
    check-cast p3, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    iput-object p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceHasNeverBeenCreated:Z

    return p0
.end method

.method static synthetic access$1000()I
    .locals 1

    .line 51
    sget v0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mVolumeLevel:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .locals 0

    .line 51
    sput p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mVolumeLevel:I

    return p0
.end method

.method static synthetic access$1100(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mOnCompletePos:D

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;D)D
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mOnCompletePos:D

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;Ljava/lang/String;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->checkUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;Ljava/lang/String;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->playerPrepareSource(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/view/SurfaceView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceIsValid:Z

    return p0
.end method

.method static synthetic access$502(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mExecPlayerStart:Z

    return p1
.end method

.method static synthetic access$600(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->startPosTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/media/AudioManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAudioMgr:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$702(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAudioMgr:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->stopPosTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    return-object p0
.end method

.method private checkUrl(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "@@@VOOSMPVideoViewPlayer"

    const-wide/16 v1, 0x2

    const/4 v3, 0x0

    .line 393
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 395
    instance-of v4, p1, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_1

    .line 396
    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v4, "HEAD"

    .line 397
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 399
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP response code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0x194

    if-ne p1, v4, :cond_0

    .line 402
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    invoke-virtual {p1, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onError(J)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x190

    if-lt p1, v4, :cond_1

    .line 406
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    const-wide/16 v4, 0x1

    invoke-virtual {p1, v4, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onError(J)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    new-array p1, v3, [Ljava/lang/Object;

    const-string v4, "IOException"

    .line 431
    invoke-static {v0, v4, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    invoke-virtual {p1, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onError(J)V

    goto :goto_0

    :catch_1
    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "SocketTimeoutException"

    .line 426
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    const-wide/16 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onError(J)V

    goto :goto_0

    :catch_2
    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "SecurityException"

    .line 422
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    new-array p1, v3, [Ljava/lang/Object;

    const-string v4, "ProtocolException"

    .line 417
    invoke-static {v0, v4, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    invoke-virtual {p1, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onError(J)V

    goto :goto_0

    :catch_4
    new-array p1, v3, [Ljava/lang/Object;

    const-string v4, "MalformedURLException"

    .line 412
    invoke-static {v0, v4, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    invoke-virtual {p1, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onError(J)V

    :goto_0
    return v3
.end method

.method private fitVideo()V
    .locals 7

    .line 480
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 483
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 484
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    .line 485
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    .line 486
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    .line 488
    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xd

    .line 489
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int v5, v0, v3

    mul-int v6, v2, v1

    if-le v5, v6, :cond_1

    .line 492
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-double v0, v6

    int-to-double v2, v3

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 493
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    .line 496
    :cond_1
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-double v0, v5

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 497
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initPosTimer()V
    .locals 1

    .line 356
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mPosTimer:Ljava/util/Timer;

    .line 357
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$8;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$8;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)V

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mPosTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method private playerPrepareSource(Ljava/lang/String;Z)V
    .locals 3

    .line 440
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    .line 441
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 442
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 443
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mHolder:Landroid/view/SurfaceHolder;

    .line 445
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 446
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 447
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 448
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 449
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 450
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 452
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mViewPlayer:Landroid/view/View;

    .line 454
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 456
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 457
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    if-eqz p2, :cond_0

    .line 461
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 464
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 465
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 466
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mViewContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 467
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->initPosTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 469
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 470
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "voVideoView failed to load "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPVideoViewPlayer"

    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 471
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    .line 472
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 473
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 474
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mHolder:Landroid/view/SurfaceHolder;

    .line 475
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    const-wide/16 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onError(J)V

    :goto_0
    return-void
.end method

.method private printChild()V
    .locals 11

    .line 504
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const-string v1, "visible"

    const-string v2, "not visible"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 505
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HHH mLayout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "@@@VOOSMPVideoViewPlayer"

    invoke-static {v7, v3, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 507
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HHH mSurfaceView: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v7, v3, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 508
    :goto_2
    iget-object v6, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 509
    iget-object v6, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 510
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v1

    goto :goto_3

    :cond_2
    move-object v8, v2

    .line 511
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HHH Child "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v6, v8}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private startPosTimer()V
    .locals 9

    .line 376
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->initPosTimer()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPVideoViewPlayer"

    const-string v2, "Start position timer"

    .line 377
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mPosTimer:Ljava/util/Timer;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mPosTimerTask:Ljava/util/TimerTask;

    const-wide/16 v5, 0xc8

    const-wide/16 v7, 0xc8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopPosTimer()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mPosTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPVideoViewPlayer"

    const-string v2, "Cancel position timer"

    .line 383
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 385
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mPosTimer:Ljava/util/Timer;

    .line 386
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mPosTimerTask:Ljava/util/TimerTask;

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustUIOffset()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->fitVideo()V

    return-void
.end method

.method public configureUI(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public destroyHelper()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPVideoViewPlayer"

    const-string v2, "voVideoView destroyHelper"

    .line 221
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->stopPosTimer()V

    return-void
.end method

.method public load(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    .line 88
    new-instance p2, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;

    invoke-direct {p2, p0, p1, p4}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 89
    invoke-virtual {p2, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPVideoViewPlayer"

    const-string v2, "voVideoView completed"

    .line 238
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-double v0, p1

    .line 240
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->stop()V

    .line 242
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v2, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$7;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;D)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    const/4 p1, 0x1

    const-wide/16 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "@@@VOOSMPVideoViewPlayer"

    const/16 v4, -0x3ec

    if-ne p3, v4, :cond_0

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "Error: MEDIA_ERROR_IO"

    .line 299
    invoke-static {v3, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    invoke-virtual {p2, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onError(J)V

    goto :goto_0

    :cond_0
    const/16 v4, -0x3ef

    if-ne p3, v4, :cond_1

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "Error: MEDIA_ERROR_MALFORMED"

    .line 303
    invoke-static {v3, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    invoke-virtual {p2, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onError(J)V

    goto :goto_0

    :cond_1
    const/16 v4, -0x3f2

    if-ne p3, v4, :cond_2

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "Error: MEDIA_ERROR_UNSUPPORTED"

    .line 307
    invoke-static {v3, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    const-wide/16 v0, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onError(J)V

    goto :goto_0

    :cond_2
    const/16 v4, -0x6e

    if-ne p3, v4, :cond_3

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "Error: MEDIA_ERROR_TIMED_OUT"

    .line 311
    invoke-static {v3, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    const-wide/16 v0, 0x3

    invoke-virtual {p2, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onError(J)V

    goto :goto_0

    :cond_3
    const/16 p3, 0x64

    if-ne p2, p3, :cond_4

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "Error: MEDIA_ERROR_SERVER_DIED"

    .line 315
    invoke-static {v3, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    invoke-virtual {p2, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onError(J)V

    goto :goto_0

    :cond_4
    if-ne p2, p1, :cond_5

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "Error: MEDIA_ERROR_UNKNOWN"

    .line 319
    invoke-static {v3, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onError(J)V

    :cond_5
    :goto_0
    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 p1, 0x1

    const/4 p3, 0x0

    const-string v0, "@@@VOOSMPVideoViewPlayer"

    if-eq p2, p1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/16 v1, 0x385

    if-eq p2, v1, :cond_1

    const/16 v1, 0x386

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "Info: MEDIA_INFO_METADATA_UPDATE"

    .line 282
    invoke-static {v0, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "Info: MEDIA_INFO_NOT_SEEKABLE"

    .line 279
    invoke-static {v0, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "Info: MEDIA_INFO_BAD_INTERLEAVING"

    .line 276
    invoke-static {v0, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "Info: MEDIA_INFO_BUFFERING_END"

    .line 272
    invoke-static {v0, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "Info: MEDIA_INFO_BUFFERING_START"

    .line 268
    invoke-static {v0, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "Info: MEDIA_INFO_VIDEO_TRACK_LAGGING"

    .line 261
    invoke-static {v0, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "Info: MEDIA_INFO_SUBTITLE_TIMED_OUT"

    .line 288
    invoke-static {v0, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "Info: MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    .line 285
    invoke-static {v0, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "Info: MEDIA_INFO_VIDEO_RENDERING_START"

    .line 264
    invoke-static {v0, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "Info: MEDIA_INFO_UNKNOWN"

    .line 258
    invoke-static {v0, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x320
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPVideoViewPlayer"

    const-string v2, "voVideoView loaded"

    .line 231
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onAdLoaded()V

    .line 233
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mAppInf:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onDurationChanged(D)V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 329
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->fitVideo()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$5;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$5;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playPause()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$3;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$3;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->start()V

    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$6;

    invoke-direct {v1, p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$6;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$2;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$2;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOOSMPVideoViewPlayer"

    const-string p3, "voVideoView surfaceChanged"

    .line 334
    invoke-static {p2, p3, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPVideoViewPlayer"

    const-string v2, "voVideoView surfaceCreated"

    .line 339
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceHasNeverBeenCreated:Z

    const/4 p1, 0x1

    .line 341
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceIsValid:Z

    .line 342
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 343
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 344
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mExecPlayerStart:Z

    if-ne v0, p1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->start()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPVideoViewPlayer"

    const-string v2, "voVideoView surfaceDestroyed"

    .line 351
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mSurfaceIsValid:Z

    return-void
.end method

.method public suspend()V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->pause()V

    return-void
.end method

.method public toggleAudio()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$4;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$4;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
