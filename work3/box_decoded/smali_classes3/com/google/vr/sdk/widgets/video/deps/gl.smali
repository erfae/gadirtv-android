.class public abstract Lcom/google/vr/sdk/widgets/video/deps/gl;
.super Lcom/google/vr/sdk/widgets/video/deps/a;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/gl$a;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B

.field private static final ADAPTATION_WORKAROUND_MODE_ALWAYS:I = 0x2

.field private static final ADAPTATION_WORKAROUND_MODE_NEVER:I = 0x0

.field private static final ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION:I = 0x1

.field private static final ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT:I = 0x20

.field protected static final CODEC_OPERATING_RATE_UNSET:F = -1.0f

.field protected static final KEEP_CODEC_RESULT_NO:I = 0x0

.field protected static final KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION:I = 0x1

.field protected static final KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION:I = 0x3

.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaCodecRenderer"


# instance fields
.field private final assumedMinimumCodecOperatingRate:F

.field private availableCodecInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/vr/sdk/widgets/video/deps/gk;",
            ">;"
        }
    .end annotation
.end field

.field private final buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

.field private codec:Landroid/media/MediaCodec;

.field private codecAdaptationWorkaroundMode:I

.field private codecConfiguredWithOperatingRate:Z

.field private codecHotswapDeadlineMs:J

.field private codecInfo:Lcom/google/vr/sdk/widgets/video/deps/gk;

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsDiscardToSpsWorkaround:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosOutputExceptionWorkaround:Z

.field private codecNeedsEosPropagation:Z

.field private codecNeedsFlushWorkaround:Z

.field private codecNeedsMonoChannelCountWorkaround:Z

.field private codecOperatingRate:F

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private codecReinitializationState:I

.field private final decodeOnlyPresentationTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

.field private drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/cc<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;"
        }
    .end annotation
.end field

.field private final drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;"
        }
    .end annotation
.end field

.field private final flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

.field private format:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private final formatHolder:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private final formatQueue:Lcom/google/vr/sdk/widgets/video/deps/po;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/po<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;"
        }
    .end annotation
.end field

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private final mediaCodecSelector:Lcom/google/vr/sdk/widgets/video/deps/gm;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputFormat:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/cc<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;"
        }
    .end annotation
.end field

.field private pendingFormat:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private final playClearSamplesWithoutKeys:Z

.field private preferredDecoderInitializationException:Lcom/google/vr/sdk/widgets/video/deps/gl$a;

.field private rendererOperatingRate:F

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private shouldSkipOutputBuffer:Z

.field private waitingForFirstSyncFrame:Z

.field private waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    .line 607
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->i(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/gl;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void
.end method

.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/gm;Lcom/google/vr/sdk/widgets/video/deps/cd;ZF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/vr/sdk/widgets/video/deps/gm;",
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;ZF)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/a;-><init>(I)V

    .line 2
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 3
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/gm;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->mediaCodecSelector:Lcom/google/vr/sdk/widgets/video/deps/gm;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    .line 5
    iput-boolean p4, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->playClearSamplesWithoutKeys:Z

    .line 6
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->assumedMinimumCodecOperatingRate:F

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    .line 8
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/bo;->e()Lcom/google/vr/sdk/widgets/video/deps/bo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/po;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/po;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->formatQueue:Lcom/google/vr/sdk/widgets/video/deps/po;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    .line 12
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 13
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigurationState:I

    .line 14
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReinitializationState:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 15
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecOperatingRate:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->rendererOperatingRate:F

    return-void
.end method

.method private codecAdaptationWorkaroundMode(Ljava/lang/String;)I
    .locals 2

    .line 579
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->d:Ljava/lang/String;

    const-string v1, "SM-T585"

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->d:Ljava/lang/String;

    const-string v1, "SM-A510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->d:Ljava/lang/String;

    const-string v1, "SM-A520"

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->d:Ljava/lang/String;

    const-string v1, "SM-J700"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x2

    return p1

    .line 583
    :cond_1
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 584
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/ps;->b:Ljava/lang/String;

    const-string v0, "flounder"

    .line 585
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/ps;->b:Ljava/lang/String;

    const-string v0, "flounder_lte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/ps;->b:Ljava/lang/String;

    const-string v0, "grouper"

    .line 586
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/ps;->b:Ljava/lang/String;

    const-string v0, "tilapia"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private static codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/l;)Z
    .locals 2

    .line 589
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 590
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 598
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_2

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->b:Ljava/lang/String;

    const-string v1, "hb2000"

    .line 599
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 600
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 601
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 603
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsEosPropagationWorkaround(Lcom/google/vr/sdk/widgets/video/deps/gk;)Z
    .locals 3

    .line 592
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gk;->a:Ljava/lang/String;

    .line 593
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v2, 0x11

    if-gt v1, v2, :cond_0

    const-string v1, "OMX.rk.video_decoder.avc"

    .line 594
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OMX.allwinner.video.decoder.avc"

    .line 595
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->c:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 596
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->d:Ljava/lang/String;

    const-string v1, "AFTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gk;->f:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 574
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.SEC.avc.dec"

    .line 575
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->d:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OMX.Exynos.avc.dec"

    .line 577
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/l;)Z
    .locals 3

    .line 604
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-gt v0, v2, :cond_0

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    if-ne p1, v1, :cond_0

    const-string p1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 605
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private deviceNeedsDrmKeysToConfigureCodecWorkaround()Z
    .locals 2

    .line 570
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->c:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->d:Ljava/lang/String;

    const-string v1, "AFTM"

    .line 571
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->d:Ljava/lang/String;

    const-string v1, "AFTB"

    .line 572
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    move-object/from16 v13, p0

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->hasOutputBuffer()Z

    move-result v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v0, :cond_a

    .line 480
    iget-boolean v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReceivedEos:Z

    if-eqz v0, :cond_1

    .line 481
    :try_start_0
    iget-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    iget-object v1, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->processEndOfStream()V

    .line 486
    iget-boolean v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->releaseCodec()V

    :cond_0
    return v15

    .line 489
    :cond_1
    iget-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    iget-object v1, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :goto_0
    if-gez v0, :cond_6

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->processOutputFormat()V

    return v14

    :cond_2
    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 496
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->processOutputBuffersChanged()V

    return v14

    .line 498
    :cond_3
    iget-boolean v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputStreamEnded:Z

    if-nez v0, :cond_4

    iget v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 499
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->processEndOfStream()V

    :cond_5
    return v15

    .line 501
    :cond_6
    iget-boolean v1, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v1, :cond_7

    .line 502
    iput-boolean v15, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 503
    iget-object v1, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v15}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v14

    .line 505
    :cond_7
    iget-object v1, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_8

    iget-object v1, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->processEndOfStream()V

    return v15

    .line 508
    :cond_8
    iput v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputIndex:I

    .line 509
    invoke-direct {v13, v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_9

    .line 511
    iget-object v1, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 512
    iget-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 513
    :cond_9
    iget-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v13, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->shouldSkipOutputBuffer(J)Z

    move-result v0

    iput-boolean v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->shouldSkipOutputBuffer:Z

    .line 514
    iget-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->formatQueue:Lcom/google/vr/sdk/widgets/video/deps/po;

    iget-object v1, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/po;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/l;

    if-eqz v0, :cond_a

    .line 516
    iput-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputFormat:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 517
    :cond_a
    iget-boolean v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReceivedEos:Z

    if-eqz v0, :cond_c

    .line 518
    :try_start_1
    iget-object v5, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    iget-object v6, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputIndex:I

    iget-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->shouldSkipOutputBuffer:Z

    iget-object v12, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputFormat:Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 519
    invoke-virtual/range {v0 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/gl;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLcom/google/vr/sdk/widgets/video/deps/l;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 522
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->processEndOfStream()V

    .line 523
    iget-boolean v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputStreamEnded:Z

    if-eqz v0, :cond_b

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->releaseCodec()V

    :cond_b
    return v15

    .line 526
    :cond_c
    iget-object v5, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    iget-object v6, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputIndex:I

    iget-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->shouldSkipOutputBuffer:Z

    iget-object v12, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputFormat:Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 527
    invoke-virtual/range {v0 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/gl;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLcom/google/vr/sdk/widgets/video/deps/l;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_f

    .line 529
    iget-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v13, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->onProcessedOutputBuffer(J)V

    .line 530
    iget-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    .line 531
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->resetOutputBuffer()V

    if-nez v0, :cond_e

    return v14

    .line 534
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->processEndOfStream()V

    :cond_f
    return v15
.end method

.method private feedInputBuffer()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_18

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputStreamEnded:Z

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 316
    :cond_0
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputIndex:I

    if-gez v2, :cond_2

    const-wide/16 v4, 0x0

    .line 317
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputIndex:I

    if-gez v0, :cond_1

    return v1

    .line 320
    :cond_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:Ljava/nio/ByteBuffer;

    .line 321
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a()V

    .line 322
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReinitializationState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 323
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 324
    :cond_3
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReceivedEos:Z

    .line 325
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputIndex:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 326
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->resetInputBuffer()V

    .line 327
    :goto_0
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReinitializationState:I

    return v1

    .line 329
    :cond_4
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v0, :cond_5

    .line 330
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 331
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/gl;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 332
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputIndex:I

    const/4 v5, 0x0

    array-length v6, v1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 333
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->resetInputBuffer()V

    .line 334
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReceivedBuffers:Z

    return v2

    .line 337
    :cond_5
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->waitingForKeys:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x4

    const/4 v4, 0x0

    goto :goto_2

    .line 339
    :cond_6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigurationState:I

    if-ne v0, v2, :cond_8

    const/4 v0, 0x0

    .line 340
    :goto_1
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 341
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 342
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    :cond_7
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigurationState:I

    .line 345
    :cond_8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 346
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {p0, v4, v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->readSource(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I

    move-result v4

    move v12, v4

    move v4, v0

    move v0, v12

    :goto_2
    const/4 v5, -0x3

    if-ne v0, v5, :cond_9

    return v1

    :cond_9
    const/4 v5, -0x5

    if-ne v0, v5, :cond_b

    .line 350
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigurationState:I

    if-ne v0, v3, :cond_a

    .line 351
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a()V

    .line 352
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigurationState:I

    .line 353
    :cond_a
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    return v2

    .line 355
    :cond_b
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 356
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigurationState:I

    if-ne v0, v3, :cond_c

    .line 357
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a()V

    .line 358
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigurationState:I

    .line 359
    :cond_c
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputStreamEnded:Z

    .line 360
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReceivedBuffers:Z

    if-nez v0, :cond_d

    .line 361
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->processEndOfStream()V

    return v1

    .line 363
    :cond_d
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_e

    goto :goto_3

    .line 364
    :cond_e
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReceivedEos:Z

    .line 365
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputIndex:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 366
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->resetInputBuffer()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return v1

    :catch_0
    move-exception v0

    .line 369
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object v0

    throw v0

    .line 371
    :cond_f
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->waitingForFirstSyncFrame:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->d()Z

    move-result v0

    if-nez v0, :cond_11

    .line 372
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a()V

    .line 373
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigurationState:I

    if-ne v0, v3, :cond_10

    .line 374
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigurationState:I

    :cond_10
    return v2

    .line 376
    :cond_11
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->waitingForFirstSyncFrame:Z

    .line 377
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->g()Z

    move-result v0

    .line 378
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->shouldWaitForKeys(Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->waitingForKeys:Z

    if-eqz v3, :cond_12

    return v1

    .line 381
    :cond_12
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsDiscardToSpsWorkaround:Z

    if-eqz v3, :cond_14

    if-nez v0, :cond_14

    .line 382
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/pc;->a(Ljava/nio/ByteBuffer;)V

    .line 383
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_13

    return v2

    .line 385
    :cond_13
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsDiscardToSpsWorkaround:Z

    .line 386
    :cond_14
    :try_start_1
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget-wide v9, v3, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:J

    .line 387
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b_()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 388
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_15
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingFormat:Lcom/google/vr/sdk/widgets/video/deps/l;

    if-eqz v3, :cond_16

    .line 390
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->formatQueue:Lcom/google/vr/sdk/widgets/video/deps/po;

    invoke-virtual {v5, v9, v10, v3}, Lcom/google/vr/sdk/widgets/video/deps/po;->a(JLjava/lang/Object;)V

    const/4 v3, 0x0

    .line 391
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingFormat:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 392
    :cond_16
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/bo;->h()V

    .line 393
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->onQueueInputBuffer(Lcom/google/vr/sdk/widgets/video/deps/bo;)V

    if-eqz v0, :cond_17

    .line 395
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-static {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getFrameworkCryptoInfo(Lcom/google/vr/sdk/widgets/video/deps/bo;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v8

    .line 396
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputIndex:I

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_4

    .line 398
    :cond_17
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputIndex:I

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 399
    :goto_4
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->resetInputBuffer()V

    .line 400
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReceivedBuffers:Z

    .line 401
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigurationState:I

    .line 402
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->c:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception v0

    .line 405
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object v0

    throw v0

    :cond_18
    :goto_5
    return v1
.end method

.method private getAvailableCodecInfos(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/gk;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/gn$b;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->mediaCodecSelector:Lcom/google/vr/sdk/widgets/video/deps/gm;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 257
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getDecoderInfos(Lcom/google/vr/sdk/widgets/video/deps/gm;Lcom/google/vr/sdk/widgets/video/deps/l;Z)Ljava/util/List;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->mediaCodecSelector:Lcom/google/vr/sdk/widgets/video/deps/gm;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getDecoderInfos(Lcom/google/vr/sdk/widgets/video/deps/gm;Lcom/google/vr/sdk/widgets/video/deps/l;Z)Ljava/util/List;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x63

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Drm session requires secure decoder for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private getCodecBuffers(Landroid/media/MediaCodec;)V
    .locals 2

    .line 293
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 295
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBuffers:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private static getFrameworkCryptoInfo(Lcom/google/vr/sdk/widgets/video/deps/bo;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 3

    .line 563
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->a:Lcom/google/vr/sdk/widgets/video/deps/bl;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bl;->a()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    .line 566
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 567
    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 568
    :cond_1
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 301
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 304
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private hasOutputBuffer()Z
    .locals 1

    .line 307
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initCodec(Lcom/google/vr/sdk/widgets/video/deps/gk;Landroid/media/MediaCrypto;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 264
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/gk;->a:Ljava/lang/String;

    .line 265
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->updateCodecOperatingRate()V

    .line 266
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecOperatingRate:F

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->assumedMinimumCodecOperatingRate:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 267
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-string v5, "createCodec:"

    .line 268
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_1
    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/pq;->a(Ljava/lang/String;)V

    .line 269
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    .line 270
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/pq;->a()V

    const-string v5, "configureCodec"

    .line 271
    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/pq;->a(Ljava/lang/String;)V

    .line 272
    iget-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    if-eqz v0, :cond_2

    .line 273
    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecOperatingRate:F

    move v11, v5

    goto :goto_2

    :cond_2
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v11, -0x40800000    # -1.0f

    :goto_2
    move-object v6, p0

    move-object v7, p1

    move-object v8, v2

    move-object v10, p2

    .line 274
    invoke-virtual/range {v6 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/gl;->configureCodec(Lcom/google/vr/sdk/widgets/video/deps/gk;Landroid/media/MediaCodec;Lcom/google/vr/sdk/widgets/video/deps/l;Landroid/media/MediaCrypto;F)V

    .line 275
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecConfiguredWithOperatingRate:Z

    .line 276
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/pq;->a()V

    const-string p2, "startCodec"

    .line 277
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/pq;->a(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 279
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/pq;->a()V

    .line 280
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 281
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getCodecBuffers(Landroid/media/MediaCodec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    .line 289
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/gk;

    sub-long p1, v5, v3

    move-object v0, p0

    move-wide v2, v5

    move-wide v4, p1

    .line 291
    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/gl;->onCodecInitialized(Ljava/lang/String;JJ)V

    return-void

    :catch_0
    move-exception p1

    if-eqz v2, :cond_3

    .line 285
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->resetCodecBuffers()V

    .line 286
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 287
    :cond_3
    throw p1
.end method

.method private initCodecWithFallback(Landroid/media/MediaCrypto;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/gl$a;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 232
    :try_start_0
    new-instance v0, Ljava/util/ArrayDeque;

    .line 233
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getAvailableCodecInfos(Z)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 234
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->preferredDecoderInitializationException:Lcom/google/vr/sdk/widgets/video/deps/gl$a;
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/gn$b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 237
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gl$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    const v2, -0xc34e

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/gl$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/Throwable;ZI)V

    throw v0

    .line 238
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 240
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/gk;

    .line 241
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->shouldInitCodec(Lcom/google/vr/sdk/widgets/video/deps/gk;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 243
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->initCodec(Lcom/google/vr/sdk/widgets/video/deps/gk;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception v1

    .line 246
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to initialize decoder: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaCodecRenderer"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 248
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/gl$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gk;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gl$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->preferredDecoderInitializationException:Lcom/google/vr/sdk/widgets/video/deps/gl$a;

    if-nez v0, :cond_2

    .line 250
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->preferredDecoderInitializationException:Lcom/google/vr/sdk/widgets/video/deps/gl$a;

    goto :goto_2

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->preferredDecoderInitializationException:Lcom/google/vr/sdk/widgets/video/deps/gl$a;

    .line 252
    invoke-static {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gl$a;->a(Lcom/google/vr/sdk/widgets/video/deps/gl$a;Lcom/google/vr/sdk/widgets/video/deps/gl$a;)Lcom/google/vr/sdk/widgets/video/deps/gl$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->preferredDecoderInitializationException:Lcom/google/vr/sdk/widgets/video/deps/gl$a;

    .line 253
    :goto_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 254
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->preferredDecoderInitializationException:Lcom/google/vr/sdk/widgets/video/deps/gl$a;

    throw p1

    .line 239
    :cond_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gl$a;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    const v2, -0xc34f

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/gl$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/Throwable;ZI)V

    throw p1
.end method

.method private processEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 550
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->releaseCodec()V

    .line 552
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->maybeInitCodec()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputStreamEnded:Z

    .line 554
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->renderToEndOfStream()V

    :goto_0
    return-void
.end method

.method private processOutputBuffersChanged()V
    .locals 2

    .line 546
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 547
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBuffers:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private processOutputFormat()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 537
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecAdaptationWorkaroundMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "width"

    .line 538
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    const-string v1, "height"

    .line 539
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 540
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    return-void

    .line 542
    :cond_0
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsMonoChannelCountWorkaround:Z

    if-eqz v1, :cond_1

    const-string v1, "channel-count"

    .line 543
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 544
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private reinitializeCodec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 474
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReceivedBuffers:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 475
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReinitializationState:I

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->releaseCodec()V

    .line 477
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->maybeInitCodec()V

    :goto_0
    return-void
.end method

.method private resetCodecBuffers()V
    .locals 2

    .line 297
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 299
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBuffers:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private resetInputBuffer()V
    .locals 2

    const/4 v0, -0x1

    .line 308
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputIndex:I

    .line 309
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private resetOutputBuffer()V
    .locals 1

    const/4 v0, -0x1

    .line 311
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputIndex:I

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private shouldSkipOutputBuffer(J)Z
    .locals 6

    .line 556
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 558
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 559
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->playClearSamplesWithoutKeys:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cc;->e()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 411
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cc;->f()Lcom/google/vr/sdk/widgets/video/deps/cc$a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    return v1
.end method

.method private updateCodecOperatingRate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    if-eqz v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->rendererOperatingRate:F

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 460
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getStreamFormats()[Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getCodecOperatingRate(FLcom/google/vr/sdk/widgets/video/deps/l;[Lcom/google/vr/sdk/widgets/video/deps/l;)F

    move-result v0

    .line 461
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecOperatingRate:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    return-void

    .line 463
    :cond_1
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecOperatingRate:F

    .line 464
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReinitializationState:I

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_3

    .line 465
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecConfiguredWithOperatingRate:Z

    if-eqz v2, :cond_3

    .line 466
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->reinitializeCodec()V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    .line 467
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecConfiguredWithOperatingRate:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->assumedMinimumCodecOperatingRate:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    .line 468
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 469
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 470
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecConfiguredWithOperatingRate:Z

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method protected canKeepCodec(Landroid/media/MediaCodec;Lcom/google/vr/sdk/widgets/video/deps/gk;Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract configureCodec(Lcom/google/vr/sdk/widgets/video/deps/gk;Landroid/media/MediaCodec;Lcom/google/vr/sdk/widgets/video/deps/l;Landroid/media/MediaCrypto;F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/gn$b;
        }
    .end annotation
.end method

.method protected flushCodec()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 211
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecHotswapDeadlineMs:J

    .line 212
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->resetInputBuffer()V

    .line 213
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->resetOutputBuffer()V

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->waitingForFirstSyncFrame:Z

    const/4 v1, 0x0

    .line 215
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->waitingForKeys:Z

    .line 216
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->shouldSkipOutputBuffer:Z

    .line 217
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 218
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 219
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 220
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsFlushWorkaround:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsEosFlushWorkaround:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReceivedEos:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReinitializationState:I

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->releaseCodec()V

    .line 225
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->maybeInitCodec()V

    goto :goto_1

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V

    .line 227
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReceivedBuffers:Z

    goto :goto_1

    .line 221
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->releaseCodec()V

    .line 222
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->maybeInitCodec()V

    .line 228
    :goto_1
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigured:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    if-eqz v1, :cond_3

    .line 229
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigurationState:I

    :cond_3
    return-void
.end method

.method protected final getCodec()Landroid/media/MediaCodec;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected final getCodecInfo()Lcom/google/vr/sdk/widgets/video/deps/gk;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/gk;

    return-object v0
.end method

.method protected getCodecNeedsEosPropagation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getCodecOperatingRate(FLcom/google/vr/sdk/widgets/video/deps/l;[Lcom/google/vr/sdk/widgets/video/deps/l;)F
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method protected getDecoderInfos(Lcom/google/vr/sdk/widgets/video/deps/gm;Lcom/google/vr/sdk/widgets/video/deps/l;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gm;",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/gk;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/gn$b;
        }
    .end annotation

    .line 22
    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gm;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getDequeueOutputBufferTimeoutUs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEnded()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 5

    .line 450
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->waitingForKeys:Z

    if-nez v0, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->hasOutputBuffer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecHotswapDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecHotswapDeadlineMs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final maybeInitCodec()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    .line 26
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    const/4 v1, 0x0

    .line 29
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 30
    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/cc;->g()Lcom/google/vr/sdk/widgets/video/deps/cf;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ch;

    if-nez v2, :cond_2

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cc;->f()Lcom/google/vr/sdk/widgets/video/deps/cc$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void

    .line 36
    :cond_2
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/ch;->a()Landroid/media/MediaCrypto;

    move-result-object v1

    .line 37
    invoke-virtual {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ch;->a(Ljava/lang/String;)Z

    move-result v0

    .line 38
    :goto_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->deviceNeedsDrmKeysToConfigureCodecWorkaround()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 39
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/cc;->e()I

    move-result v2

    if-eq v2, v4, :cond_3

    const/4 v5, 0x4

    if-eq v2, v5, :cond_5

    return-void

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cc;->f()Lcom/google/vr/sdk/widgets/video/deps/cc$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object v0

    throw v0

    :cond_4
    const/4 v0, 0x0

    .line 44
    :cond_5
    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->initCodecWithFallback(Landroid/media/MediaCrypto;Z)Z

    move-result v0
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/gl$a; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_6

    return-void

    .line 49
    :cond_6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/gk;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gk;->a:Ljava/lang/String;

    .line 50
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecAdaptationWorkaroundMode(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecAdaptationWorkaroundMode:I

    .line 51
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/l;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsDiscardToSpsWorkaround:Z

    .line 52
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsFlushWorkaround:Z

    .line 53
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsEosFlushWorkaround:Z

    .line 54
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 55
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/l;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsMonoChannelCountWorkaround:Z

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/gk;

    .line 57
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsEosPropagationWorkaround(Lcom/google/vr/sdk/widgets/video/deps/gk;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getCodecNeedsEosPropagation()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const/4 v3, 0x1

    :cond_8
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsEosPropagation:Z

    .line 59
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    goto :goto_1

    :cond_9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 61
    :goto_1
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecHotswapDeadlineMs:J

    .line 62
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->resetInputBuffer()V

    .line 63
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->resetOutputBuffer()V

    .line 64
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->waitingForFirstSyncFrame:Z

    .line 65
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->a:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->a:I

    return-void

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object v0

    throw v0

    :cond_a
    :goto_2
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method protected onDisabled()V
    .locals 4

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 83
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 85
    :try_start_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eqz v1, :cond_0

    .line 86
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cd;->a(Lcom/google/vr/sdk/widgets/video/deps/cc;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eq v1, v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cd;->a(Lcom/google/vr/sdk/widgets/video/deps/cc;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :cond_1
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    .line 90
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    return-void

    :catchall_0
    move-exception v1

    .line 92
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    .line 93
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    throw v1

    :catchall_1
    move-exception v1

    .line 96
    :try_start_3
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eq v2, v3, :cond_2

    .line 97
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    invoke-interface {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/cd;->a(Lcom/google/vr/sdk/widgets/video/deps/cc;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 98
    :cond_2
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    .line 99
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    .line 102
    throw v1

    :catchall_2
    move-exception v1

    .line 101
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    .line 102
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    throw v1

    :catchall_3
    move-exception v1

    .line 105
    :try_start_4
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eqz v2, :cond_3

    .line 106
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cd;->a(Lcom/google/vr/sdk/widgets/video/deps/cc;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 107
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eq v2, v3, :cond_4

    .line 108
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    invoke-interface {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/cd;->a(Lcom/google/vr/sdk/widgets/video/deps/cc;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 109
    :cond_4
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    .line 110
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    .line 122
    throw v1

    :catchall_4
    move-exception v1

    .line 112
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    .line 113
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    throw v1

    :catchall_5
    move-exception v1

    .line 116
    :try_start_6
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eq v2, v3, :cond_5

    .line 117
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    invoke-interface {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/cd;->a(Lcom/google/vr/sdk/widgets/video/deps/cc;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 118
    :cond_5
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    .line 119
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    .line 122
    throw v1

    :catchall_6
    move-exception v1

    .line 121
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    .line 122
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    throw v1
.end method

.method protected onEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 71
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bn;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/bn;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 415
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 416
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingFormat:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 417
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 418
    :cond_0
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    :goto_0
    invoke-static {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 420
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    if-eqz p1, :cond_2

    .line 421
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    if-eqz p1, :cond_1

    .line 425
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    invoke-interface {p1, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/cd;->a(Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/cc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    .line 426
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-ne p1, v1, :cond_3

    .line 427
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/cd;->a(Lcom/google/vr/sdk/widgets/video/deps/cc;)V

    goto :goto_1

    .line 422
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getIndex()I

    move-result v0

    .line 424
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object p1

    throw p1

    .line 428
    :cond_2
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    .line 430
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    if-eqz p1, :cond_7

    .line 431
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/gk;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {p0, p1, v1, v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gl;->canKeepCodec(Landroid/media/MediaCodec;Lcom/google/vr/sdk/widgets/video/deps/gk;Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_8

    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    .line 436
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigured:Z

    .line 437
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigurationState:I

    .line 438
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecAdaptationWorkaroundMode:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    if-ne p1, v0, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsAdaptationWorkaroundBuffer:Z

    goto :goto_2

    .line 440
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_2
    if-nez v2, :cond_9

    .line 442
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->reinitializeCodec()V

    goto :goto_3

    .line 443
    :cond_9
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->updateCodecOperatingRate()V

    :goto_3
    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputStreamEnded:Z

    .line 74
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputStreamEnded:Z

    .line 75
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->flushCodec()V

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->formatQueue:Lcom/google/vr/sdk/widgets/video/deps/po;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/po;->a()V

    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 0

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/vr/sdk/widgets/video/deps/bo;)V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 0

    return-void
.end method

.method protected onStopped()V
    .locals 0

    return-void
.end method

.method protected abstract processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLcom/google/vr/sdk/widgets/video/deps/l;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation
.end method

.method protected releaseCodec()V
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 124
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecHotswapDeadlineMs:J

    .line 125
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->resetInputBuffer()V

    .line 126
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->resetOutputBuffer()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->waitingForKeys:Z

    .line 128
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->shouldSkipOutputBuffer:Z

    .line 129
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 130
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->resetCodecBuffers()V

    const/4 v1, 0x0

    .line 131
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/gk;

    .line 132
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigured:Z

    .line 133
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReceivedBuffers:Z

    .line 134
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsDiscardToSpsWorkaround:Z

    .line 135
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsFlushWorkaround:Z

    .line 136
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecAdaptationWorkaroundMode:I

    .line 137
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsEosFlushWorkaround:Z

    .line 138
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsMonoChannelCountWorkaround:Z

    .line 139
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 140
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 141
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecNeedsEosPropagation:Z

    .line 142
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReceivedEos:Z

    .line 143
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReconfigurationState:I

    .line 144
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecReinitializationState:I

    .line 145
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codecConfiguredWithOperatingRate:Z

    .line 146
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->b:I

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    .line 151
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eq v2, v0, :cond_3

    .line 152
    :try_start_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    invoke-interface {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/cd;->a(Lcom/google/vr/sdk/widgets/video/deps/cc;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 155
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    throw v0

    :catchall_1
    move-exception v0

    .line 156
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    .line 157
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eq v3, v2, :cond_0

    .line 158
    :try_start_3
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    invoke-interface {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/cd;->a(Lcom/google/vr/sdk/widgets/video/deps/cc;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 159
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 161
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    throw v0

    :cond_0
    :goto_0
    throw v0

    :catchall_3
    move-exception v0

    .line 164
    :try_start_4
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 165
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    .line 166
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eq v3, v2, :cond_1

    .line 167
    :try_start_5
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    invoke-interface {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/cd;->a(Lcom/google/vr/sdk/widgets/video/deps/cc;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 168
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    goto :goto_1

    :catchall_4
    move-exception v0

    .line 170
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    throw v0

    .line 176
    :cond_1
    :goto_1
    throw v0

    :catchall_5
    move-exception v0

    .line 171
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    .line 172
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    if-eq v3, v2, :cond_2

    .line 173
    :try_start_6
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    invoke-interface {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/cd;->a(Lcom/google/vr/sdk/widgets/video/deps/cc;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 174
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    goto :goto_2

    :catchall_6
    move-exception v0

    .line 176
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/cc;

    throw v0

    :cond_2
    :goto_2
    throw v0

    :cond_3
    :goto_3
    return-void
.end method

.method public render(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 180
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->renderToEndOfStream()V

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->format:Lcom/google/vr/sdk/widgets/video/deps/l;

    const/4 v1, -0x4

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a()V

    .line 185
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {p0, v0, v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->readSource(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 187
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 189
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->c()Z

    move-result p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 190
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputStreamEnded:Z

    .line 191
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->processEndOfStream()V

    :cond_2
    return-void

    .line 194
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->maybeInitCodec()V

    .line 195
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    const-string v0, "drainAndFeed"

    .line 196
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/pq;->a(Ljava/lang/String;)V

    .line 197
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/gl;->drainOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 198
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 199
    :cond_5
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/pq;->a()V

    goto :goto_3

    .line 200
    :cond_6
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    iget p4, p3, Lcom/google/vr/sdk/widgets/video/deps/bn;->d:I

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->skipSource(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Lcom/google/vr/sdk/widgets/video/deps/bn;->d:I

    .line 201
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a()V

    .line 202
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->readSource(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 204
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    goto :goto_3

    :cond_7
    if-ne p1, v1, :cond_8

    .line 206
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->c()Z

    move-result p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 207
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->inputStreamEnded:Z

    .line 208
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->processEndOfStream()V

    .line 209
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a()V

    return-void
.end method

.method protected renderToEndOfStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    return-void
.end method

.method public final setOperatingRate(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 79
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->rendererOperatingRate:F

    .line 80
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->updateCodecOperatingRate()V

    return-void
.end method

.method protected shouldInitCodec(Lcom/google/vr/sdk/widgets/video/deps/gk;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/gm;Lcom/google/vr/sdk/widgets/video/deps/cd;Lcom/google/vr/sdk/widgets/video/deps/l;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gm;",
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/gn$b;
        }
    .end annotation
.end method

.method public final supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/l;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->mediaCodecSelector:Lcom/google/vr/sdk/widgets/video/deps/gm;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gl;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/gm;Lcom/google/vr/sdk/widgets/video/deps/cd;Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/gn$b; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object p1

    throw p1
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
