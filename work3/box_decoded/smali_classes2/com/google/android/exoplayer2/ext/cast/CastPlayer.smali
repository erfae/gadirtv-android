.class public final Lcom/google/android/exoplayer2/ext/cast/CastPlayer;
.super Lcom/google/android/exoplayer2/BasePlayer;
.source "CastPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;,
        Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;,
        Lcom/google/android/exoplayer2/ext/cast/CastPlayer$SeekResultCallback;,
        Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StatusListener;
    }
.end annotation


# static fields
.field private static final EMPTY_TRACK_ID_ARRAY:[J

.field private static final EMPTY_TRACK_SELECTION_ARRAY:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

.field private static final PROGRESS_REPORT_PERIOD_MS:J = 0x3e8L

.field private static final RENDERER_COUNT:I = 0x3

.field private static final RENDERER_INDEX_AUDIO:I = 0x1

.field private static final RENDERER_INDEX_TEXT:I = 0x2

.field private static final RENDERER_INDEX_VIDEO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CastPlayer"


# instance fields
.field private final castContext:Lcom/google/android/gms/cast/framework/CastContext;

.field private currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

.field private currentTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private currentTrackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

.field private currentWindowIndex:I

.field private lastReportedPositionMs:J

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaItemConverter:Lcom/google/android/exoplayer2/ext/cast/MediaItemConverter;

.field private final notificationsBatch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;",
            ">;"
        }
    .end annotation
.end field

.field private final ongoingNotificationsTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;",
            ">;"
        }
    .end annotation
.end field

.field private pendingSeekCount:I

.field private pendingSeekPositionMs:J

.field private pendingSeekWindowIndex:I

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final playWhenReady:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private playbackState:I

.field private remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private final repeatMode:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final seekResultCallback:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$SeekResultCallback;

.field private sessionAvailabilityListener:Lcom/google/android/exoplayer2/ext/cast/SessionAvailabilityListener;

.field private final statusListener:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StatusListener;

.field private final timelineTracker:Lcom/google/android/exoplayer2/ext/cast/CastTimelineTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "goog.exo.cast"

    .line 75
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v4, 0x2

    aput-object v3, v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    sput-object v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->EMPTY_TRACK_SELECTION_ARRAY:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    new-array v0, v2, [J

    .line 87
    sput-object v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->EMPTY_TRACK_ID_ARRAY:[J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastContext;)V
    .locals 1

    .line 125
    new-instance v0, Lcom/google/android/exoplayer2/ext/cast/DefaultMediaItemConverter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ext/cast/DefaultMediaItemConverter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;-><init>(Lcom/google/android/gms/cast/framework/CastContext;Lcom/google/android/exoplayer2/ext/cast/MediaItemConverter;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastContext;Lcom/google/android/exoplayer2/ext/cast/MediaItemConverter;)V
    .locals 4

    .line 134
    invoke-direct {p0}, Lcom/google/android/exoplayer2/BasePlayer;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->castContext:Lcom/google/android/gms/cast/framework/CastContext;

    .line 136
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->mediaItemConverter:Lcom/google/android/exoplayer2/ext/cast/MediaItemConverter;

    .line 137
    new-instance p2, Lcom/google/android/exoplayer2/ext/cast/CastTimelineTracker;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/ext/cast/CastTimelineTracker;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->timelineTracker:Lcom/google/android/exoplayer2/ext/cast/CastTimelineTracker;

    .line 138
    new-instance p2, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 139
    new-instance p2, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StatusListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StatusListener;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/exoplayer2/ext/cast/CastPlayer$1;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->statusListener:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StatusListener;

    .line 140
    new-instance v1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$SeekResultCallback;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$SeekResultCallback;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/exoplayer2/ext/cast/CastPlayer$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->seekResultCallback:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$SeekResultCallback;

    .line 141
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->notificationsBatch:Ljava/util/ArrayList;

    .line 143
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->ongoingNotificationsTasks:Ljava/util/ArrayDeque;

    .line 145
    new-instance v1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playWhenReady:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    .line 146
    new-instance v1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->repeatMode:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    const/4 v1, 0x1

    .line 147
    iput v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playbackState:I

    .line 148
    sget-object v1, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->EMPTY_CAST_TIMELINE:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    .line 149
    sget-object v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 150
    sget-object v1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->EMPTY_TRACK_SELECTION_ARRAY:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTrackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    const/4 v1, -0x1

    .line 151
    iput v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->pendingSeekWindowIndex:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 152
    iput-wide v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->pendingSeekPositionMs:J

    .line 154
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object p1

    .line 155
    const-class v1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    .line 156
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->setRemoteMediaClient(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 158
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->updateInternalStateAndNotifyIfChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->setRemoteMediaClient(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    return-void
.end method

.method static synthetic access$1106(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;)I
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->pendingSeekCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->pendingSeekCount:I

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->pendingSeekWindowIndex:I

    return p1
.end method

.method static synthetic access$1302(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;J)J
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->pendingSeekPositionMs:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->notificationsBatch:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->updatePlayerStateAndNotifyIfChanged(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->flushNotifications()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->updateRepeatModeAndNotifyIfChanged(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method static synthetic access$702(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;J)J
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->lastReportedPositionMs:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->updateInternalStateAndNotifyIfChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->updateTimelineAndNotifyIfChanged()V

    return-void
.end method

.method private addMediaItemsInternal([Lcom/google/android/gms/cast/MediaQueueItem;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .line 815
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueInsertItems([Lcom/google/android/gms/cast/MediaQueueItem;ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static fetchPlaybackState(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)I
    .locals 2

    .line 910
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPlayerState()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method private static fetchRepeatMode(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)I
    .locals 2

    .line 930
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 935
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getQueueRepeatMode()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    goto :goto_0

    .line 945
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method private flushNotifications()V
    .locals 3

    .line 980
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->ongoingNotificationsTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 981
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->ongoingNotificationsTasks:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->notificationsBatch:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 982
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->notificationsBatch:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_0

    return-void

    .line 987
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->ongoingNotificationsTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->ongoingNotificationsTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;->execute()V

    .line 989
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->ongoingNotificationsTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getCastRepeatMode(I)I
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    return v1

    .line 975
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static getRendererIndexForTrackType(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private static isTrackActive(J[J)Z
    .locals 6

    .line 950
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p2, v2

    cmp-long v5, v3, p0

    if-nez v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic lambda$seekTo$0(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 461
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/Player$EventListener;->onPositionDiscontinuity(I)V

    return-void
.end method

.method static synthetic lambda$setPlayerStateAndNotifyIfChanged$6(ZIZZILcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 0

    .line 864
    invoke-interface {p5, p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener;->onPlayerStateChanged(ZI)V

    if-eqz p2, :cond_0

    .line 866
    invoke-interface {p5, p1}, Lcom/google/android/exoplayer2/Player$EventListener;->onPlaybackStateChanged(I)V

    :cond_0
    if-eqz p3, :cond_1

    .line 869
    invoke-interface {p5, p0, p4}, Lcom/google/android/exoplayer2/Player$EventListener;->onPlayWhenReadyChanged(ZI)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$setRepeatModeAndNotifyIfChanged$5(ILcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 0

    .line 847
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$EventListener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateInternalStateAndNotifyIfChanged$1(ZLcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 0

    .line 658
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$EventListener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateInternalStateAndNotifyIfChanged$2(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 677
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/Player$EventListener;->onPositionDiscontinuity(I)V

    return-void
.end method

.method private moveMediaItemsInternal([III)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, p3, :cond_1

    .line 827
    array-length p2, p1

    add-int/2addr p3, p2

    :cond_1
    const/4 p2, 0x0

    .line 829
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getWindowCount()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 830
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p2, p3, v0}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 832
    :cond_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {p3, p1, p2, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueReorderItems([IILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method private removeMediaItemsInternal([I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueRemoveItems([ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method private setMediaItemsInternal([Lcom/google/android/gms/cast/MediaQueueItem;IJI)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            "IJI)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v0, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p3, v0

    if-nez v2, :cond_1

    const-wide/16 p3, 0x0

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 802
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getCurrentWindowIndex()I

    move-result p2

    .line 803
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getCurrentPosition()J

    move-result-wide p3

    :cond_2
    move-wide v4, p3

    .line 805
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    .line 807
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 808
    invoke-static {p5}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getCastRepeatMode(I)I

    move-result v3

    const/4 v6, 0x0

    move-object v1, p1

    .line 805
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueLoad([Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private setPlayerStateAndNotifyIfChanged(ZII)V
    .locals 9

    .line 856
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playWhenReady:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 857
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playbackState:I

    if-eq v0, p3, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v7, :cond_2

    if-eqz v6, :cond_3

    .line 859
    :cond_2
    iput p3, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playbackState:I

    .line 860
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playWhenReady:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->value:Ljava/lang/Object;

    .line 861
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->notificationsBatch:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;

    new-instance v2, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$FaUGemfpp_VKkLs9-aPazHMwuCQ;

    move-object v3, v2

    move v4, p1

    move v5, p3

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$FaUGemfpp_VKkLs9-aPazHMwuCQ;-><init>(ZIZZI)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;Lcom/google/android/exoplayer2/ext/cast/CastPlayer$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private setRemoteMediaClient(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 3

    .line 876
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 881
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->statusListener:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StatusListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->unregisterCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    .line 882
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->statusListener:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StatusListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->removeProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V

    .line 884
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz p1, :cond_3

    .line 886
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->sessionAvailabilityListener:Lcom/google/android/exoplayer2/ext/cast/SessionAvailabilityListener;

    if-eqz v0, :cond_2

    .line 887
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ext/cast/SessionAvailabilityListener;->onCastSessionAvailable()V

    .line 889
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->statusListener:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StatusListener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->registerCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    .line 890
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->statusListener:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StatusListener;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->addProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;J)Z

    .line 891
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->updateInternalStateAndNotifyIfChanged()V

    goto :goto_0

    .line 893
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->updateTimelineAndNotifyIfChanged()V

    .line 894
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->sessionAvailabilityListener:Lcom/google/android/exoplayer2/ext/cast/SessionAvailabilityListener;

    if-eqz p1, :cond_4

    .line 895
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ext/cast/SessionAvailabilityListener;->onCastSessionUnavailable()V

    :cond_4
    :goto_0
    return-void
.end method

.method private setRepeatModeAndNotifyIfChanged(I)V
    .locals 3

    .line 844
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->repeatMode:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 845
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->repeatMode:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->value:Ljava/lang/Object;

    .line 846
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->notificationsBatch:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;

    new-instance v2, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$Sn7Jk5N6rUktd1Oi4MFoBActvIo;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$Sn7Jk5N6rUktd1Oi4MFoBActvIo;-><init>(I)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;Lcom/google/android/exoplayer2/ext/cast/CastPlayer$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private toMediaQueueItems(Ljava/util/List;)[Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)[",
            "Lcom/google/android/gms/cast/MediaQueueItem;"
        }
    .end annotation

    .line 994
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v1, 0x0

    .line 995
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 996
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->mediaItemConverter:Lcom/google/android/exoplayer2/ext/cast/MediaItemConverter;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/MediaItem;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/ext/cast/MediaItemConverter;->toMediaQueueItem(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateInternalStateAndNotifyIfChanged()V
    .locals 6

    .line 649
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-nez v0, :cond_0

    return-void

    .line 653
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playbackState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playWhenReady:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 654
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->updatePlayerStateAndNotifyIfChanged(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 655
    iget v5, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playbackState:I

    if-ne v5, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playWhenReady:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eq v0, v1, :cond_3

    .line 657
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->notificationsBatch:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;

    new-instance v5, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$M5i0KmeKfW6Z7vyo109nEZcTmOc;

    invoke-direct {v5, v1}, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$M5i0KmeKfW6Z7vyo109nEZcTmOc;-><init>(Z)V

    invoke-direct {v2, p0, v5, v4}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;Lcom/google/android/exoplayer2/ext/cast/CastPlayer$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_3
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->updateRepeatModeAndNotifyIfChanged(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 661
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->updateTimelineAndNotifyIfChanged()V

    .line 664
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getCurrentItem()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    .line 666
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    :goto_2
    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    move v3, v0

    .line 672
    :goto_3
    iget v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentWindowIndex:I

    if-eq v0, v3, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->pendingSeekCount:I

    if-nez v0, :cond_6

    .line 673
    iput v3, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentWindowIndex:I

    .line 674
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->notificationsBatch:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;

    sget-object v2, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$ncql6jN-8ufpFdWiYWEfG2iev_4;->INSTANCE:Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$ncql6jN-8ufpFdWiYWEfG2iev_4;

    invoke-direct {v1, p0, v2, v4}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;Lcom/google/android/exoplayer2/ext/cast/CastPlayer$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->updateTracksAndSelectionsAndNotifyIfChanged()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->notificationsBatch:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;

    new-instance v2, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$haBGMNdUmvSYcbP0i2EyRSDLpe0;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$haBGMNdUmvSYcbP0i2EyRSDLpe0;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;)V

    invoke-direct {v1, p0, v2, v4}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;Lcom/google/android/exoplayer2/ext/cast/CastPlayer$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->flushNotifications()V

    return-void
.end method

.method private updatePlayerStateAndNotifyIfChanged(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "remoteMediaClient"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playWhenReady:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 697
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playWhenReady:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->acceptsUpdate(Lcom/google/android/gms/common/api/ResultCallback;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 698
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPaused()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 699
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playWhenReady:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->clearPendingResultCallback()V

    .line 703
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playWhenReady:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v0, p1, :cond_1

    const/4 v1, 0x4

    .line 707
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 708
    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->fetchPlaybackState(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)I

    move-result p1

    .line 707
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->setPlayerStateAndNotifyIfChanged(ZII)V

    return-void
.end method

.method private updateRepeatModeAndNotifyIfChanged(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "remoteMediaClient"
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->repeatMode:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->acceptsUpdate(Lcom/google/android/gms/common/api/ResultCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 714
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->fetchRepeatMode(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->setRepeatModeAndNotifyIfChanged(I)V

    .line 715
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->repeatMode:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->clearPendingResultCallback()V

    :cond_0
    return-void
.end method

.method private updateTimeline()Z
    .locals 3

    .line 735
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    .line 736
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 739
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->timelineTracker:Lcom/google/android/exoplayer2/ext/cast/CastTimelineTracker;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ext/cast/CastTimelineTracker;->getCastTimeline(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    move-result-object v1

    goto :goto_0

    .line 740
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->EMPTY_CAST_TIMELINE:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    .line 741
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private updateTimelineAndNotifyIfChanged()V
    .locals 4

    .line 720
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->updateTimeline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->notificationsBatch:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;

    new-instance v2, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$UnnWX-Lg1QEclT0XwXWl2rNIsMk;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$UnnWX-Lg1QEclT0XwXWl2rNIsMk;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;Lcom/google/android/exoplayer2/ext/cast/CastPlayer$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private updateTracksAndSelectionsAndNotifyIfChanged()Z
    .locals 11

    .line 746
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 751
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 752
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 753
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaInfo;->getMediaTracks()Ljava/util/List;

    move-result-object v2

    :cond_2
    const/4 v3, 0x1

    if-eqz v2, :cond_9

    .line 754
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_3

    .line 760
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getActiveTrackIds()[J

    move-result-object v0

    if-nez v0, :cond_4

    .line 762
    sget-object v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->EMPTY_TRACK_ID_ARRAY:[J

    .line 765
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    const/4 v6, 0x0

    .line 767
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 768
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/cast/MediaTrack;

    .line 769
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v9, v3, [Lcom/google/android/exoplayer2/Format;

    invoke-static {v7}, Lcom/google/android/exoplayer2/ext/cast/CastUtils;->mediaTrackToFormat(Lcom/google/android/gms/cast/MediaTrack;)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v8, v4, v6

    .line 771
    invoke-virtual {v7}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    move-result-wide v8

    .line 772
    invoke-virtual {v7}, Lcom/google/android/gms/cast/MediaTrack;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v7

    .line 773
    invoke-static {v7}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getRendererIndexForTrackType(I)I

    move-result v7

    .line 774
    invoke-static {v8, v9, v0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->isTrackActive(J[J)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    aget-object v8, v5, v7

    if-nez v8, :cond_5

    .line 776
    new-instance v8, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    aget-object v9, v4, v6

    invoke-direct {v8, v9, v1}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    aput-object v8, v5, v7

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 779
    :cond_6
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 780
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-direct {v2, v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    .line 782
    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTrackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 783
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    return v1

    .line 784
    :cond_8
    :goto_2
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTrackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 785
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return v3

    .line 755
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    .line 756
    sget-object v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 757
    sget-object v1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->EMPTY_TRACK_SELECTION_ARRAY:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTrackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    return v0
.end method


# virtual methods
.method public varargs addItems(I[Lcom/google/android/gms/cast/MediaQueueItem;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 195
    :cond_1
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->addMediaItemsInternal([Lcom/google/android/gms/cast/MediaQueueItem;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public varargs addItems([Lcom/google/android/gms/cast/MediaQueueItem;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->addMediaItemsInternal([Lcom/google/android/gms/cast/MediaQueueItem;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 2

    .line 296
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;-><init>(Lcom/google/android/exoplayer2/Player$EventListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 331
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 333
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getWindowCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 336
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->toMediaQueueItems(Ljava/util/List;)[Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->addMediaItemsInternal([Lcom/google/android/gms/cast/MediaQueueItem;I)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public addMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 326
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->toMediaQueueItems(Ljava/util/List;)[Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->addMediaItemsInternal([Lcom/google/android/gms/cast/MediaQueueItem;I)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public clearMediaItems()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->removeMediaItems(II)V

    return-void
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 291
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getAudioComponent()Lcom/google/android/exoplayer2/Player$AudioComponent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 604
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 643
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 638
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 578
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 5

    .line 595
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->pendingSeekPositionMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v0

    goto :goto_0

    .line 599
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->lastReportedPositionMs:J

    :goto_0
    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTrackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 2

    .line 583
    iget v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->pendingSeekWindowIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentWindowIndex:I

    :goto_0
    return v0
.end method

.method public getDeviceComponent()Lcom/google/android/exoplayer2/Player$DeviceComponent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 590
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItem(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 3

    .line 233
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 235
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaStatus;->getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getMetadataComponent()Lcom/google/android/exoplayer2/Player$MetadataComponent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playWhenReady:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPlaybackError()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 475
    sget-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 387
    iget v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playbackState:I

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRendererCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getRendererType(I)I
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 510
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->repeatMode:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTextComponent()Lcom/google/android/exoplayer2/Player$TextComponent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalBufferedDuration()J
    .locals 7

    .line 609
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getBufferedPosition()J

    move-result-wide v0

    .line 610
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getCurrentPosition()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public getTrackSelector()Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCastSessionAvailable()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$updateInternalStateAndNotifyIfChanged$3$CastPlayer(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTrackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$EventListener;->onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public synthetic lambda$updateTimelineAndNotifyIfChanged$4$CastPlayer(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$EventListener;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public loadItem(Lcom/google/android/gms/cast/MediaQueueItem;J)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            "J)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    .line 167
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->repeatMode:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 168
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v3, 0x0

    move-object v1, p0

    move-wide v4, p2

    .line 167
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->setMediaItemsInternal([Lcom/google/android/gms/cast/MediaQueueItem;IJI)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public loadItems([Lcom/google/android/gms/cast/MediaQueueItem;IJI)Lcom/google/android/gms/common/api/PendingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            "IJI)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->setMediaItemsInternal([Lcom/google/android/gms/cast/MediaQueueItem;IJI)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public moveItem(II)Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getWindowCount()I

    move-result v2

    if-ge p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 215
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-eq v2, p2, :cond_1

    new-array v0, v0, [I

    aput p1, v0, v1

    .line 217
    invoke-direct {p0, v0, v2, p2}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->moveMediaItemsInternal([III)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public moveMediaItems(III)V
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 341
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    .line 344
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getWindowCount()I

    move-result v1

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    .line 346
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getWindowCount()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 341
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 347
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getWindowCount()I

    move-result v1

    sub-int v2, p2, p1

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-eq p1, p2, :cond_3

    if-ne p1, p3, :cond_1

    goto :goto_2

    .line 352
    :cond_1
    new-array p2, v2, [I

    :goto_1
    if-ge v0, v2, :cond_2

    .line 354
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    add-int v3, v0, p1

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    :cond_2
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->moveMediaItemsInternal([III)Lcom/google/android/gms/common/api/PendingResult;

    :cond_3
    :goto_2
    return-void
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->castContext:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->statusListener:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StatusListener;

    const-class v2, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/SessionManager;->removeSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 491
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->endCurrentSession(Z)V

    return-void
.end method

.method public removeItem(I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 205
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->removeMediaItemsInternal([I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;

    .line 303
    iget-object v2, v1, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->listener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->release()V

    .line 305
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeMediaItems(II)V
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    .line 362
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getWindowCount()I

    move-result v1

    if-gt p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 361
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    sub-int/2addr p2, p1

    .line 367
    new-array v1, p2, [I

    :goto_1
    if-ge v0, p2, :cond_2

    .line 369
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    add-int v3, v0, p1

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 371
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->removeMediaItemsInternal([I)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public seekTo(IJ)V
    .locals 4

    .line 445
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p2, v1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 450
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getCurrentWindowIndex()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->currentTimeline:Lcom/google/android/exoplayer2/ext/cast/CastTimeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/exoplayer2/ext/cast/CastTimeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, p2, p3, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueJumpToItem(IJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->seekResultCallback:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$SeekResultCallback;

    .line 452
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_1

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(J)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->seekResultCallback:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$SeekResultCallback;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 456
    :goto_1
    iget v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->pendingSeekCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->pendingSeekCount:I

    .line 457
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->pendingSeekWindowIndex:I

    .line 458
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->pendingSeekPositionMs:J

    .line 459
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->notificationsBatch:Ljava/util/ArrayList;

    new-instance p2, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;

    sget-object p3, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$gq04AFRiXYgzcFkixTug0rKq3l8;->INSTANCE:Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$gq04AFRiXYgzcFkixTug0rKq3l8;

    invoke-direct {p2, p0, p3, v1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;Lcom/google/android/exoplayer2/ext/cast/CastPlayer$1;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 462
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->pendingSeekCount:I

    if-nez p1, :cond_3

    .line 463
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->notificationsBatch:Ljava/util/ArrayList;

    new-instance p2, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;

    sget-object p3, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$oCd7Sd1J7S2dXaSGw9hdygGVcYE;->INSTANCE:Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$oCd7Sd1J7S2dXaSGw9hdygGVcYE;

    invoke-direct {p2, p0, p3, v1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;Lcom/google/android/exoplayer2/ext/cast/CastPlayer$1;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->flushNotifications()V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 321
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->toMediaQueueItems(Ljava/util/List;)[Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->repeatMode:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    move v2, p2

    move-wide v3, p3

    .line 320
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->setMediaItemsInternal([Lcom/google/android/gms/cast/MediaQueueItem;IJI)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getCurrentWindowIndex()I

    move-result v0

    :goto_0
    if-eqz p2, :cond_1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getContentPosition()J

    move-result-wide v1

    .line 314
    :goto_1
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 417
    iget v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playbackState:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->setPlayerStateAndNotifyIfChanged(ZII)V

    .line 419
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->flushNotifications()V

    if-eqz p1, :cond_1

    .line 421
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->play()Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->pause()Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    .line 422
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playWhenReady:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    new-instance v1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$1;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$1;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->pendingResultCallback:Lcom/google/android/gms/common/api/ResultCallback;

    .line 432
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playWhenReady:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->pendingResultCallback:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->setRepeatModeAndNotifyIfChanged(I)V

    .line 529
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->flushNotifications()V

    .line 530
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 531
    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->getCastRepeatMode(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueSetRepeatMode(ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    .line 532
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->repeatMode:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    new-instance v1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$2;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$2;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->pendingResultCallback:Lcom/google/android/gms/common/api/ResultCallback;

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->repeatMode:Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$StateHolder;->pendingResultCallback:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public setSessionAvailabilityListener(Lcom/google/android/exoplayer2/ext/cast/SessionAvailabilityListener;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->sessionAvailabilityListener:Lcom/google/android/exoplayer2/ext/cast/SessionAvailabilityListener;

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 0

    return-void
.end method

.method public stop(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 480
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->playbackState:I

    .line 481
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz p1, :cond_0

    .line 483
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->stop()Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method
