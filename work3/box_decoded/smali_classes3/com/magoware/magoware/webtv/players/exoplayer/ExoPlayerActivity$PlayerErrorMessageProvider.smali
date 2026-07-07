.class Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerErrorMessageProvider;
.super Ljava/lang/Object;
.source "ExoPlayerActivity.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ErrorMessageProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerErrorMessageProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
        "Lcom/google/android/exoplayer2/ExoPlaybackException;",
        ">;"
    }
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

    .line 859
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerErrorMessageProvider;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$1;)V
    .locals 0

    .line 859
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerErrorMessageProvider;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    return-void
.end method


# virtual methods
.method public getErrorMessage(Lcom/google/android/exoplayer2/ExoPlaybackException;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerErrorMessageProvider;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    const v1, 0x7f140173

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 865
    iget v1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 866
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object p1

    .line 867
    instance-of v1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz v1, :cond_3

    .line 869
    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 871
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    if-nez v0, :cond_2

    .line 872
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;

    if-eqz v0, :cond_0

    .line 873
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerErrorMessageProvider;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    const v0, 0x7f140179

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 874
    :cond_0
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->secureDecoderRequired:Z

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerErrorMessageProvider;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    const v1, 0x7f140178

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    aput-object p1, v3, v2

    .line 876
    invoke-virtual {v0, v1, v3}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 879
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerErrorMessageProvider;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    const v1, 0x7f140176

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    aput-object p1, v3, v2

    .line 880
    invoke-virtual {v0, v1, v3}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 883
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerErrorMessageProvider;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    const v1, 0x7f140175

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    aput-object p1, v3, v2

    .line 884
    invoke-virtual {v0, v1, v3}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 890
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getErrorMessage(Ljava/lang/Throwable;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .line 859
    check-cast p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerErrorMessageProvider;->getErrorMessage(Lcom/google/android/exoplayer2/ExoPlaybackException;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
