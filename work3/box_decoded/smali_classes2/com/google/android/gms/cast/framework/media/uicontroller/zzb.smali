.class public final Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# static fields
.field private static zzuy:I


# instance fields
.field zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    sget v0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzc;->zzva:I

    sput v0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzuy:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getMetadata()Lcom/google/android/gms/cast/MediaMetadata;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 127
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static zzdk()Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;-><init>()V

    return-object v0
.end method

.method private final zzdr()Ljava/lang/Long;
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    .line 87
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const-string v0, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    .line 89
    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    .line 90
    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 91
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzcz()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    :cond_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/MediaMetadata;->getTimeMillis(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private final zzdt()Ljava/lang/Long;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzcz()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateLiveSeekableRangeStart()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private final zzdu()Ljava/lang/Long;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzcz()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateLiveSeekableRangeEnd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private final zzdv()Ljava/lang/Long;
    .locals 7

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 146
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStartAbsoluteTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStartAbsoluteTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static zzf(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3e8

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    .line 154
    div-long/2addr p0, v0

    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "-"

    neg-long p0, p0

    .line 155
    div-long/2addr p0, v0

    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final getMaxProgress()I
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getLoadingItem()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getStreamDuration()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzds()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 18
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdu()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 22
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdq()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final zzc(J)Z
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzcz()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdp()I

    move-result v0

    int-to-long v2, v0

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdq()J

    move-result-wide v4

    add-long/2addr v2, v4

    sub-long/2addr v2, p1

    const-wide/16 p1, 0x2710

    cmp-long v0, v2, p1

    if-gez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final zzd(J)I
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdq()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method public final zzdl()I
    .locals 6

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdq()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 28
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzcz()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdo()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdp()I

    move-result v3

    .line 31
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zzb(III)I

    move-result v0

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->getMaxProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->zzb(III)I

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final zzdm()Z
    .locals 6

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdl()I

    move-result v0

    int-to-long v0, v0

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdq()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdo()I

    move-result v2

    int-to-long v2, v2

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdq()J

    move-result-wide v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzdn()Z
    .locals 4

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdl()I

    move-result v0

    int-to-long v0, v0

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdq()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzc(J)Z

    move-result v0

    return v0
.end method

.method public final zzdo()I
    .locals 6

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzcz()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdt()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdq()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->getMaxProgress()I

    move-result v2

    .line 58
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->zzb(III)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final zzdp()I
    .locals 6

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzcz()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdu()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdq()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->getMaxProgress()I

    move-result v2

    .line 68
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->zzb(III)I

    move-result v0

    return v0

    .line 62
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->getMaxProgress()I

    move-result v0

    return v0
.end method

.method public final zzdq()J
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdr()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdt()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v0

    return-wide v0

    :cond_3
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzds()Ljava/lang/Long;
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    .line 99
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdr()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/MediaMetadata;->getTimeMillis(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final zze(J)Ljava/lang/String;
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 130
    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->zzux:[I

    .line 131
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzuy:I

    sget v3, Lcom/google/android/gms/cast/framework/media/uicontroller/zzc;->zzuz:I

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 135
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdv()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    sget v2, Lcom/google/android/gms/cast/framework/media/uicontroller/zzc;->zzva:I

    goto :goto_2

    :cond_3
    sget v2, Lcom/google/android/gms/cast/framework/media/uicontroller/zzc;->zzuz:I

    goto :goto_2

    .line 134
    :cond_4
    :goto_0
    sget v2, Lcom/google/android/gms/cast/framework/media/uicontroller/zzc;->zzuz:I

    goto :goto_2

    .line 132
    :cond_5
    :goto_1
    sget v2, Lcom/google/android/gms/cast/framework/media/uicontroller/zzc;->zzuz:I

    :goto_2
    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 136
    aget v0, v0, v2

    if-eq v0, v3, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    return-object v1

    .line 140
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdr()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_7

    .line 141
    invoke-static {p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 142
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdq()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdv()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 138
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_3
    return-object v1
.end method

.method public final zzw(I)J
    .locals 4

    int-to-long v0, p1

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdq()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method
