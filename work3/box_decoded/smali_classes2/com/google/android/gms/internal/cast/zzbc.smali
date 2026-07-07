.class public final Lcom/google/android/gms/internal/cast/zzbc;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;


# instance fields
.field private final zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

.field private final zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

.field private final zzvk:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;JLcom/google/android/gms/cast/framework/media/uicontroller/zzb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvk:J

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbc;->zzea()V

    return-void
.end method

.method private final zzea()V
    .locals 8

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbc;->zzeb()V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreaks()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 30
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/AdBreakInfo;

    if-eqz v3, :cond_1

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakInfo;->getPlaybackPositionInMs()J

    move-result-wide v3

    const-wide/16 v5, -0x3e8

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 35
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->getMaxProgress()I

    move-result v3

    goto :goto_1

    .line 36
    :cond_2
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    .line 37
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzd(J)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->getMaxProgress()I

    move-result v4

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    if-ltz v3, :cond_1

    .line 41
    new-instance v4, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzb;

    invoke-direct {v4, v3}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzb;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_3
    :goto_2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->setAdBreaks(Ljava/util/List;)V

    return-void

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->setAdBreaks(Ljava/util/List;)V

    return-void
.end method

.method private final zzeb()V
    .locals 6

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->setEnabled(Z)V

    .line 54
    :goto_1
    new-instance v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;-><init>()V

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbc;->zzec()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxi:I

    .line 57
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->getMaxProgress()I

    move-result v3

    .line 58
    iput v3, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    .line 60
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzd(J)I

    move-result v3

    .line 61
    iput v3, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxk:I

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzcz()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 68
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdo()I

    move-result v3

    goto :goto_3

    .line 67
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbc;->zzec()I

    move-result v3

    .line 69
    :goto_3
    iput v3, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxl:I

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 74
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzcz()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    .line 76
    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdp()I

    move-result v3

    goto :goto_5

    .line 75
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbc;->zzec()I

    move-result v3

    .line 77
    :goto_5
    iput v3, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxm:I

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 81
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzcz()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    .line 83
    :goto_6
    iput-boolean v1, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxn:Z

    .line 86
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvj:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;)V

    return-void
.end method

.method private final zzec()I
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdl()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbc;->zzea()V

    return-void
.end method

.method public final onProgressUpdated(JJ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbc;->zzeb()V

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    .line 7
    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzbc;->zzvk:J

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->addProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;J)Z

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbc;->zzea()V

    return-void
.end method

.method public final onSessionEnded()V
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->removeProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V

    .line 14
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbc;->zzea()V

    return-void
.end method
