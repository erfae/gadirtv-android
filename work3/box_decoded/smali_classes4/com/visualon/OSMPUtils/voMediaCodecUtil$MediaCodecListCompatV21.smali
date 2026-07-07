.class final Lcom/visualon/OSMPUtils/voMediaCodecUtil$MediaCodecListCompatV21;
.super Ljava/lang/Object;
.source "voMediaCodecUtil.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voMediaCodecUtil$MediaCodecListCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voMediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaCodecListCompatV21"
.end annotation


# instance fields
.field private MediaCodecInfos:[Landroid/media/MediaCodecInfo;

.field private final codecKind:I


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput p1, p0, Lcom/visualon/OSMPUtils/voMediaCodecUtil$MediaCodecListCompatV21;->codecKind:I

    return-void
.end method

.method private ensurevoMediaCodecInfosInitialized()V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voMediaCodecUtil$MediaCodecListCompatV21;->MediaCodecInfos:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lcom/visualon/OSMPUtils/voMediaCodecUtil$MediaCodecListCompatV21;->codecKind:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voMediaCodecUtil$MediaCodecListCompatV21;->MediaCodecInfos:[Landroid/media/MediaCodecInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCodecCount()I
    .locals 1

    .line 567
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voMediaCodecUtil$MediaCodecListCompatV21;->ensurevoMediaCodecInfosInitialized()V

    .line 568
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voMediaCodecUtil$MediaCodecListCompatV21;->MediaCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .line 573
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voMediaCodecUtil$MediaCodecListCompatV21;->ensurevoMediaCodecInfosInitialized()V

    .line 574
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voMediaCodecUtil$MediaCodecListCompatV21;->MediaCodecInfos:[Landroid/media/MediaCodecInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isSecurePlaybackSupported(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    const-string p1, "secure-playback"

    .line 584
    invoke-virtual {p2, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public secureDecodersExplicit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
