.class Lcom/google/android/exoplayer2/offline/DownloadHelper$1;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoRendererEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/offline/DownloadHelper;->getRendererCapabilities(Lcom/google/android/exoplayer2/RenderersFactory;)[Lcom/google/android/exoplayer2/RendererCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDroppedFrames(IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onDroppedFrames(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IJ)V

    return-void
.end method

.method public final synthetic onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/Object;J)V

    return-void
.end method

.method public final synthetic onVideoCodecError(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoCodecError(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/String;JJ)V

    return-void
.end method

.method public final synthetic onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoDecoderReleased(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoDisabled(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public final synthetic onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoEnabled(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public final synthetic onVideoFrameProcessingOffset(JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;JI)V

    return-void
.end method

.method public final synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public final synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public final synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method
