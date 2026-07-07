.class Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;
.super Ljava/lang/Object;
.source "VOOSMPIMAPlayerWithAdPlayback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$OnContentCompleteListener;,
        Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;,
        Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPIMAPlayerWithAdPlayback"

.field private static final msgEOS:I = 0x1


# instance fields
.field private final mAdCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

.field private mContentProgressProvider:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

.field private mController:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

.field private mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;

.field private mIsAdDisplayed:Z

.field private mOnContentCompleteListener:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$OnContentCompleteListener;

.field private mSavedContentVideoPosition:J

.field private mVideoAdPlayer:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mController:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z

    const-wide/16 v1, 0x0

    .line 98
    iput-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mSavedContentVideoPosition:J

    .line 100
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mOnContentCompleteListener:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$OnContentCompleteListener;

    .line 102
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mVideoAdPlayer:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 103
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 105
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mContentProgressProvider:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    .line 112
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->notifyEOSInt(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z

    return p0
.end method

.method static synthetic access$202(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z

    return p1
.end method

.method static synthetic access$302(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mController:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->callVideoAdPlayerCallback(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void
.end method

.method private callVideoAdPlayerCallback(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 3

    .line 228
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 231
    sget-object v2, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_PLAY:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    if-ne v2, p1, :cond_2

    .line 232
    invoke-interface {v1, p2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPlay(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    goto :goto_0

    .line 233
    :cond_2
    sget-object v2, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_RESUME:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    if-ne v2, p1, :cond_3

    .line 234
    invoke-interface {v1, p2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onResume(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    goto :goto_0

    .line 235
    :cond_3
    sget-object v2, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_PAUSE:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    if-ne v2, p1, :cond_4

    .line 236
    invoke-interface {v1, p2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPause(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    goto :goto_0

    .line 237
    :cond_4
    sget-object v2, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_END:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    if-ne v2, p1, :cond_5

    .line 238
    invoke-interface {v1, p2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onEnded(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    goto :goto_0

    .line 239
    :cond_5
    sget-object v2, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_ERROR:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    if-ne v2, p1, :cond_1

    .line 240
    invoke-interface {v1, p2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onError(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private initEventHandler()V
    .locals 4

    .line 116
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPIMAPlayerWithAdPlayback"

    if-eqz v0, :cond_0

    .line 117
    new-instance v3, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;

    invoke-direct {v3, p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Looper.myLooper()"

    .line 118
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    new-instance v3, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;

    invoke-direct {v3, p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getMainLooper()"

    .line 121
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;

    :goto_0
    return-void
.end method

.method private notifyEOSInt(I)V
    .locals 4

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEOSInt Ad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPIMAPlayerWithAdPlayback"

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 308
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_END:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-direct {p0, p1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->callVideoAdPlayerCallback(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mOnContentCompleteListener:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$OnContentCompleteListener;

    if-eqz p1, :cond_1

    .line 312
    invoke-interface {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$OnContentCompleteListener;->onContentComplete()V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "onCompleted mIsContentComplete becomes to true\n"

    .line 313
    invoke-static {v3, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mContentProgressProvider:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-object v0
.end method

.method public getVideoAdPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mVideoAdPlayer:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    return-object v0
.end method

.method public init(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
    .locals 2

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mSavedContentVideoPosition:J

    .line 130
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mController:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    .line 131
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->initEventHandler()V

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 135
    new-instance p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;

    invoke-direct {p1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)V

    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mVideoAdPlayer:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 213
    new-instance p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$2;

    invoke-direct {p1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$2;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)V

    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mContentProgressProvider:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-void
.end method

.method public notifyAdPosition(J)V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mController:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerGetAdDuration()J

    move-result-wide v0

    .line 329
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    .line 330
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 331
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-interface {p2, v0, v2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onAdProgress(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyEOS(I)V
    .locals 2

    .line 320
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 321
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->notifyEOSInt(I)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public notifyError()V
    .locals 2

    .line 302
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_ERROR:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->callVideoAdPlayerCallback(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void
.end method

.method public pauseContentForAdPlayback()V
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->savePosition()V

    .line 277
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mController:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerPauseContent()V

    return-void
.end method

.method public restorePosition()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mController:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    iget-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mSavedContentVideoPosition:J

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerSetContentPosition(J)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restorePosition: mSavedContentVideoPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mSavedContentVideoPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMAPlayerWithAdPlayback"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public resumeContentAfterAdPlayback()V
    .locals 1

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z

    .line 286
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mController:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerPlayContent()V

    .line 287
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->restorePosition()V

    return-void
.end method

.method public savePosition()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mController:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerGetContentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mSavedContentVideoPosition:J

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePosition:mSavedContentVideoPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mSavedContentVideoPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMAPlayerWithAdPlayback"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setOnContentCompleteListener(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$OnContentCompleteListener;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->mOnContentCompleteListener:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$OnContentCompleteListener;

    return-void
.end method
