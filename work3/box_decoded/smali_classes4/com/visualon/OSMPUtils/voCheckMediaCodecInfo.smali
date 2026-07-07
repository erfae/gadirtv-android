.class public Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;
.super Ljava/lang/Object;
.source "voCheckMediaCodecInfo.java"


# static fields
.field private static final DEFAULT_SUPPORT_MAX_HEIGHT:I = 0x438

.field private static final DEFAULT_SUPPORT_MAX_WIDTH:I = 0x780

.field private static final TAG:Ljava/lang/String; = "voCheckMediaCodecInfo"


# instance fields
.field private supportMaxHeight:Ljava/lang/Integer;

.field private supportMaxWidth:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;->supportMaxWidth:Ljava/lang/Integer;

    .line 15
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;->supportMaxHeight:Ljava/lang/Integer;

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "voCheckMediaCodecInfo"

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_10

    .line 24
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_11

    .line 26
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_3

    .line 30
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaCodecList : MediaCodecInfo Decoder --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_f

    aget-object v8, v5, v7

    const-string v9, "video/x-vnd.on2.vp8"

    .line 35
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 36
    invoke-virtual {v4, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    goto/16 :goto_2

    :cond_1
    const-string v9, "video/x-vnd.on2.vp9"

    .line 37
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 38
    invoke-virtual {v4, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    goto/16 :goto_2

    :cond_2
    const-string v9, "video/avc"

    .line 39
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 40
    invoke-virtual {v4, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    goto :goto_2

    :cond_3
    const-string v9, "video/hevc"

    .line 41
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 42
    invoke-virtual {v4, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    goto :goto_2

    :cond_4
    const-string v9, "video/mp4v-es"

    .line 43
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 44
    invoke-virtual {v4, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    goto :goto_2

    :cond_5
    const-string v9, "video/3gpp"

    .line 45
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 46
    invoke-virtual {v4, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    goto :goto_2

    :cond_6
    const-string v9, "video/mpeg2"

    .line 47
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 48
    invoke-virtual {v4, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    goto :goto_2

    :cond_7
    const-string v9, "video/raw"

    .line 49
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 50
    invoke-virtual {v4, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    goto :goto_2

    :cond_8
    const-string v9, "video/dolby-vision"

    .line 51
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 52
    invoke-virtual {v4, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    goto :goto_2

    :cond_9
    const-string v9, "video/scrambled"

    .line 53
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 54
    invoke-virtual {v4, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    :goto_2
    if-eqz v9, :cond_e

    .line 60
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v9

    .line 61
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 62
    iget-object v11, p0, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;->supportMaxHeight:Ljava/lang/Integer;

    if-eqz v11, :cond_a

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, p0, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;->supportMaxWidth:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v11, v12, :cond_b

    .line 63
    :cond_a
    iput-object v10, p0, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;->supportMaxWidth:Ljava/lang/Integer;

    .line 65
    :cond_b
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 66
    iget-object v10, p0, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;->supportMaxHeight:Ljava/lang/Integer;

    if-eqz v10, :cond_c

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, p0, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;->supportMaxHeight:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v10, v11, :cond_d

    .line 67
    :cond_c
    iput-object v9, p0, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;->supportMaxHeight:Ljava/lang/Integer;

    .line 69
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check VideoDecoderSupportedTypes= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", supportMaxWidth= "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;->supportMaxWidth:Ljava/lang/Integer;

    .line 70
    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", supportMaxHeight= "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;->supportMaxHeight:Ljava/lang/Integer;

    .line 71
    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    .line 69
    invoke-static {v1, v8, v9}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_f
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_10
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Android Version below 5.0, System API Not Support."

    .line 76
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public getSupportMaxHeight()Ljava/lang/Integer;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;->supportMaxHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSupportMaxWidth()Ljava/lang/Integer;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;->supportMaxWidth:Ljava/lang/Integer;

    return-object v0
.end method
