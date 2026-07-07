.class Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;
.super Lcom/google/android/exoplayer2/Player$DefaultEventListener;
.source "ExoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 900
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Player$DefaultEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$1;)V
    .locals 0

    .line 900
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    return-void
.end method


# virtual methods
.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 924
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 925
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object v0

    .line 926
    instance-of v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz v2, :cond_3

    .line 927
    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 929
    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 930
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;

    if-eqz v2, :cond_0

    .line 931
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    const v2, 0x7f140179

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 932
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->secureDecoderRequired:Z

    if-eqz v2, :cond_1

    .line 933
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    const v4, 0x7f140178

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    aput-object v0, v5, v3

    invoke-virtual {v2, v4, v5}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 936
    :cond_1
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    const v4, 0x7f140176

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    aput-object v0, v5, v3

    invoke-virtual {v2, v4, v5}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 940
    :cond_2
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    const v4, 0x7f140175

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    aput-object v0, v5, v3

    invoke-virtual {v2, v4, v5}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const v2, 0x7f14047a

    if-eqz v0, :cond_4

    .line 946
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {v3, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1300(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 947
    :cond_4
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$800(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 948
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1300(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Ljava/lang/String;)V

    .line 951
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    iget v4, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {v3, v0, v4}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->sendLogChannelError(Ljava/lang/String;I)V

    .line 953
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1102(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Z)Z

    .line 954
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1400(Lcom/google/android/exoplayer2/ExoPlaybackException;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 955
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1500(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    goto :goto_2

    .line 958
    :cond_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1200(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    .line 959
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1000(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    .line 960
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$700(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    .line 961
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1300(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playWhenReady",
            "playbackState"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 904
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$700(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    .line 906
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$802(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Z)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    .line 908
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$900(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    .line 910
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1000(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 915
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1100(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 916
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1200(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    :cond_0
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trackGroups",
            "trackSelections"
        }
    .end annotation

    .line 968
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1000(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    .line 969
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1600(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p2

    if-eq p1, p2, :cond_2

    .line 970
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1700(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    .line 972
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackTypeRendererSupport(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 974
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    const v2, 0x7f14017d

    invoke-static {v0, v2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1800(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;I)V

    .line 976
    :cond_0
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackTypeRendererSupport(I)I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 978
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    const v0, 0x7f14017c

    invoke-static {p2, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1800(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;I)V

    .line 981
    :cond_1
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-static {p2, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->access$1602(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :cond_2
    return-void
.end method
