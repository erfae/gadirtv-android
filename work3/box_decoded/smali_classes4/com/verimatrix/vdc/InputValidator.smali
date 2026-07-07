.class Lcom/verimatrix/vdc/InputValidator;
.super Ljava/lang/Object;
.source "InputValidator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputValidator"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applicationStatus(Lcom/verimatrix/vdc/Monitor$AreaType;Lcom/verimatrix/vdc/Monitor$AppStatus;I)Z
    .locals 1

    const-string v0, "areaType"

    .line 12
    invoke-static {v0, p0}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "appStatus"

    .line 13
    invoke-static {p0, p1}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    int-to-long p0, p2

    const-string p2, "reportCode"

    .line 14
    invoke-static {p2, p0, p1}, Lcom/verimatrix/vdc/Contract;->checkPositive(Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static contentReadyToPlay(J)Z
    .locals 1

    const-string v0, "expiryTimeSecs"

    .line 61
    invoke-static {v0, p0, p1}, Lcom/verimatrix/vdc/Contract;->checkUIntApplicable(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method static dataLoadError(Lcom/verimatrix/vdc/Monitor$LoadErrorType;J)Z
    .locals 1

    const-string v0, "type"

    .line 56
    invoke-static {v0, p0}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "reason"

    .line 57
    invoke-static {p0, p1, p2}, Lcom/verimatrix/vdc/Contract;->checkUIntApplicable(Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static dataLoadStarting(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string p3, "identifiedType"

    .line 41
    invoke-static {p3, p0}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "identifier"

    .line 42
    invoke-static {p0, p1}, Lcom/verimatrix/vdc/Contract;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "mediaType"

    .line 43
    invoke-static {p0, p2}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 44
    invoke-static {p4}, Lcom/verimatrix/vdc/Contract;->genericAttributesKeysValidated(Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static dataStarting(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "url"

    .line 50
    invoke-static {v0, p0}, Lcom/verimatrix/vdc/Contract;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "method"

    .line 51
    invoke-static {p0, p1}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static directEvent(IJJJJLcom/verimatrix/vdc/Monitor$Severity;)Z
    .locals 2

    int-to-long v0, p0

    const-string p0, "code"

    .line 144
    invoke-static {p0, v0, v1}, Lcom/verimatrix/vdc/Contract;->checkPositive(Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "data0"

    .line 145
    invoke-static {p0, p1, p2}, Lcom/verimatrix/vdc/Contract;->checkUIntApplicable(Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "data1"

    .line 146
    invoke-static {p0, p3, p4}, Lcom/verimatrix/vdc/Contract;->checkUIntApplicable(Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "data2"

    .line 147
    invoke-static {p0, p5, p6}, Lcom/verimatrix/vdc/Contract;->checkUIntApplicable(Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "data3"

    .line 148
    invoke-static {p0, p7, p8}, Lcom/verimatrix/vdc/Contract;->checkUIntApplicable(Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static genericAttributesChange(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "genericAttributes"

    .line 170
    invoke-static {v0, p0}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {p0}, Lcom/verimatrix/vdc/Contract;->genericAttributesKeysValidated(Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static metadataIdentity(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;ZZ)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p2, "referenceCode"

    .line 134
    invoke-static {p2, p0}, Lcom/verimatrix/vdc/Contract;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "type"

    .line 135
    invoke-static {p0, p1}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static playbackConsumptionMethodChange(JLjava/lang/String;)Z
    .locals 0

    const-string p0, "consumptionMethod"

    .line 86
    invoke-static {p0, p2}, Lcom/verimatrix/vdc/Contract;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static playbackErrorReport(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;I)Z
    .locals 0

    const-string p0, "streamType"

    .line 118
    invoke-static {p0, p1}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "playbackErrorType"

    .line 119
    invoke-static {p0, p2}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    int-to-long p0, p3

    const-string p2, "count"

    .line 120
    invoke-static {p2, p0, p1}, Lcom/verimatrix/vdc/Contract;->checkPositive(Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static playbackMetadataChange(JLjava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "metadata"

    .line 106
    invoke-static {p0, p2}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static playbackProgress(JJJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJ)Z
    .locals 3

    const-string v0, "expectedPlayTime"

    move-wide v1, p2

    .line 26
    invoke-static {v0, p2, p3}, Lcom/verimatrix/vdc/Contract;->checkUIntApplicable(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "indicatedAudioRate"

    move-wide v1, p4

    .line 27
    invoke-static {v0, p4, p5}, Lcom/verimatrix/vdc/Contract;->checkUIntApplicable(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "observedAudioRate"

    move-wide v1, p6

    .line 28
    invoke-static {v0, p6, p7}, Lcom/verimatrix/vdc/Contract;->checkUIntApplicable(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "indicatedVideoRate"

    move-wide v1, p8

    .line 29
    invoke-static {v0, p8, p9}, Lcom/verimatrix/vdc/Contract;->checkUIntApplicable(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "observedVideoRate"

    move-wide v1, p10

    .line 30
    invoke-static {v0, p10, p11}, Lcom/verimatrix/vdc/Contract;->checkUIntApplicable(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "streamType"

    move-object v1, p12

    .line 31
    invoke-static {v0, p12}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nominal"

    move-wide/from16 v1, p13

    .line 32
    invoke-static {v0, v1, v2}, Lcom/verimatrix/vdc/Contract;->checkUIntApplicable(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "observed"

    move-wide/from16 v1, p15

    .line 33
    invoke-static {v0, v1, v2}, Lcom/verimatrix/vdc/Contract;->checkUIntApplicable(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static playbackRequest(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "Lcom/verimatrix/vdc/Monitor$DeliveryType;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Lcom/verimatrix/vdc/Monitor$StreamType;",
            "Lcom/verimatrix/vdc/Monitor$StartCause;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string p6, "identifiedType"

    .line 74
    invoke-static {p6, p0}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "identifier"

    .line 75
    invoke-static {p0, p1}, Lcom/verimatrix/vdc/Contract;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "method"

    .line 76
    invoke-static {p0, p2}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "mediaType"

    .line 77
    invoke-static {p0, p3}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p3}, Lcom/verimatrix/vdc/Monitor$MediaType;->getValue()I

    move-result p1

    int-to-long p1, p1

    sget-object p3, Lcom/verimatrix/vdc/Monitor$MediaType;->IDLE:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {p3}, Lcom/verimatrix/vdc/Monitor$MediaType;->getValue()I

    move-result p3

    int-to-long p6, p3

    invoke-static {p0, p1, p2, p6, p7}, Lcom/verimatrix/vdc/Contract;->checkNot(Ljava/lang/String;JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "streamType"

    .line 79
    invoke-static {p0, p4}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "startCause"

    .line 80
    invoke-static {p0, p5}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 81
    invoke-static {p8}, Lcom/verimatrix/vdc/Contract;->genericAttributesKeysValidated(Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static playbackResolutionChange(JJJ)Z
    .locals 0

    .line 126
    invoke-static {p2, p3, p4, p5}, Lcom/verimatrix/vdc/Contract;->playbackResolutionValidated(JJ)Z

    move-result p0

    return p0
.end method

.method static playbackStarted(JLcom/verimatrix/vdc/Monitor$StartCause;IILjava/lang/String;)Z
    .locals 0

    const-string p0, "startCause"

    .line 100
    invoke-static {p0, p2}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    int-to-long p0, p3

    int-to-long p2, p4

    .line 101
    invoke-static {p0, p1, p2, p3}, Lcom/verimatrix/vdc/Contract;->playbackResolutionValidated(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static playbackStartedVideo(JJJ)Z
    .locals 0

    .line 92
    invoke-static {p2, p3, p4, p5}, Lcom/verimatrix/vdc/Contract;->playbackResolutionValidated(JJ)Z

    move-result p0

    return p0
.end method

.method static playbackStopped(JLcom/verimatrix/vdc/Monitor$EndCause;)Z
    .locals 0

    const-string p0, "endCause"

    .line 111
    invoke-static {p0, p2}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static profileGet(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;)Z
    .locals 1

    const-string v0, "key"

    .line 165
    invoke-static {v0, p0}, Lcom/verimatrix/vdc/Contract;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "listener"

    .line 166
    invoke-static {p0, p1}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static profileSet(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$ProfileSetType;Lcom/verimatrix/vdc/Monitor$ProfileDataType;Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;)Z
    .locals 1

    const-string v0, "key"

    .line 156
    invoke-static {v0, p0}, Lcom/verimatrix/vdc/Contract;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "value"

    .line 157
    invoke-static {p0, p1}, Lcom/verimatrix/vdc/Contract;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "setType"

    .line 158
    invoke-static {p0, p2}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "dataType"

    .line 159
    invoke-static {p0, p3}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "privacyType"

    .line 160
    invoke-static {p0, p4}, Lcom/verimatrix/vdc/Contract;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
