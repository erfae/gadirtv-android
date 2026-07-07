.class public Lcom/visualon/OSMPUtils/VOCodecCheckerMC;
.super Ljava/lang/Object;
.source "VOCodecCheckerMC.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOCodecCheckerMC"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCodecCheckerMC"

    const-string v2, "Construct!"

    .line 35
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private supportsFormat(Ljava/lang/String;Lcom/visualon/OSMPUtils/VOAFormat;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/visualon/OSMPUtils/voMediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lcom/visualon/OSMPUtils/voMimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "audio/x-unknown"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "audio/mp4a"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "audio/mp4a-latm"

    .line 124
    :cond_2
    invoke-static {p1, v1}, Lcom/visualon/OSMPUtils/voMediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/visualon/OSMPUtils/voMediaCodecInfo;

    move-result-object v0

    const-string v3, "@@@VOCodecCheckerMC"

    if-nez v0, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "could not find valid codec info, return false."

    .line 127
    invoke-static {v3, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    if-nez p2, :cond_4

    new-array p2, v1, [Ljava/lang/Object;

    const-string v4, "new a format by mimeType to check codec."

    .line 132
    invoke-static {v3, v4, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance p2, Lcom/visualon/OSMPUtils/VOAFormat;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voMimeTypes;->getDefaultCodecFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4, v1, v1}, Lcom/visualon/OSMPUtils/VOAFormat;-><init>(Ljava/lang/String;II)V

    :cond_4
    if-eqz p2, :cond_8

    .line 138
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_7

    iget v4, p2, Lcom/visualon/OSMPUtils/VOAFormat;->sampleRate:I

    if-eqz v4, :cond_5

    iget v4, p2, Lcom/visualon/OSMPUtils/VOAFormat;->sampleRate:I

    .line 139
    invoke-virtual {v0, v4}, Lcom/visualon/OSMPUtils/voMediaCodecInfo;->isAudioSampleRateSupportedV21(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget v4, p2, Lcom/visualon/OSMPUtils/VOAFormat;->channelCount:I

    if-eqz v4, :cond_7

    iget v4, p2, Lcom/visualon/OSMPUtils/VOAFormat;->channelCount:I

    .line 140
    invoke-virtual {v0, v4}, Lcom/visualon/OSMPUtils/voMediaCodecInfo;->isAudioChannelCountSupportedV21(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    .line 142
    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/visualon/OSMPUtils/VOAFormat;->codec:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/visualon/OSMPUtils/VOAFormat;->sampleRate:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/visualon/OSMPUtils/VOAFormat;->channelCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", get result "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_8
    return v1
.end method

.method private supportsFormat(Ljava/lang/String;Lcom/visualon/OSMPUtils/VOVFormat;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/visualon/OSMPUtils/voMediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 63
    invoke-static {p1}, Lcom/visualon/OSMPUtils/voMimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "video/x-unknown"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 72
    :cond_1
    invoke-static {p1, v1}, Lcom/visualon/OSMPUtils/voMediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/visualon/OSMPUtils/voMediaCodecInfo;

    move-result-object v0

    const-string v3, "@@@VOCodecCheckerMC"

    if-nez v0, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "could not find valid codec info, return false."

    .line 75
    invoke-static {v3, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    if-nez p2, :cond_3

    new-array p2, v1, [Ljava/lang/Object;

    const-string v4, "new a format by mimeType to check codec."

    .line 80
    invoke-static {v3, v4, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    new-instance p2, Lcom/visualon/OSMPUtils/VOVFormat;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voMimeTypes;->getDefaultCodecFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Lcom/visualon/OSMPUtils/VOVFormat;-><init>(Ljava/lang/String;IID)V

    :cond_3
    if-eqz p2, :cond_8

    .line 85
    iget-object v4, p2, Lcom/visualon/OSMPUtils/VOVFormat;->codec:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/visualon/OSMPUtils/voMediaCodecInfo;->isCodecSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 87
    iget v5, p2, Lcom/visualon/OSMPUtils/VOVFormat;->width:I

    if-lez v5, :cond_7

    iget v5, p2, Lcom/visualon/OSMPUtils/VOVFormat;->height:I

    if-lez v5, :cond_7

    .line 88
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4

    .line 89
    iget v2, p2, Lcom/visualon/OSMPUtils/VOVFormat;->width:I

    iget v4, p2, Lcom/visualon/OSMPUtils/VOVFormat;->height:I

    iget-wide v5, p2, Lcom/visualon/OSMPUtils/VOVFormat;->frameRate:D

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/visualon/OSMPUtils/voMediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v4

    goto :goto_1

    .line 92
    :cond_4
    iget v0, p2, Lcom/visualon/OSMPUtils/VOVFormat;->width:I

    iget v4, p2, Lcom/visualon/OSMPUtils/VOVFormat;->height:I

    mul-int v0, v0, v4

    invoke-static {}, Lcom/visualon/OSMPUtils/voMediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v4

    if-gt v0, v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_6

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/visualon/OSMPUtils/VOVFormat;->width:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/visualon/OSMPUtils/VOVFormat;->height:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move v4, v2

    .line 100
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/visualon/OSMPUtils/VOVFormat;->codec:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", get result "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_8
    return v1
.end method


# virtual methods
.method public supportCodecA(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/visualon/OSMPUtils/voMediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportCodecA!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "@@@VOCodecCheckerMC"

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    check-cast p2, Landroid/os/Parcel;

    invoke-static {p2}, Lcom/visualon/OSMPUtils/VOAFormat;->parse(Landroid/os/Parcel;)Lcom/visualon/OSMPUtils/VOAFormat;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VOAFormat:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/visualon/OSMPUtils/VOAFormat;->codec:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/visualon/OSMPUtils/VOAFormat;->channelCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPUtils/VOCodecCheckerMC;->supportsFormat(Ljava/lang/String;Lcom/visualon/OSMPUtils/VOAFormat;)Z

    move-result p1

    return p1
.end method

.method public supportCodecV(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/visualon/OSMPUtils/voMediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportCodecV!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "@@@VOCodecCheckerMC"

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    check-cast p2, Landroid/os/Parcel;

    invoke-static {p2}, Lcom/visualon/OSMPUtils/VOVFormat;->parse(Landroid/os/Parcel;)Lcom/visualon/OSMPUtils/VOVFormat;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VOVFormat:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/visualon/OSMPUtils/VOVFormat;->codec:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/visualon/OSMPUtils/VOVFormat;->frameRate:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPUtils/VOCodecCheckerMC;->supportsFormat(Ljava/lang/String;Lcom/visualon/OSMPUtils/VOVFormat;)Z

    move-result p1

    return p1
.end method
