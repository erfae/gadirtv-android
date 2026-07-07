.class final Lcom/verimatrix/vdc/StreamMetadata;
.super Ljava/lang/Object;
.source "StreamMetadata.java"


# static fields
.field private static final EXTERNAL_CHANNEL_REF:Ljava/lang/String; = "external_channel_ref"

.field private static final EXTERNAL_PROGRAMME_REF:Ljava/lang/String; = "external_programme_ref"

.field private static final TAG:Ljava/lang/String; = "StreamMetadata"


# instance fields
.field private c:Landroid/content/Context;

.field localMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sentMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field serverMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stream:Lcom/verimatrix/vdc/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/verimatrix/vdc/Stream;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->localMetadata:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->serverMetadata:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->sentMetadataMap:Ljava/util/Map;

    .line 26
    iput-object p1, p0, Lcom/verimatrix/vdc/StreamMetadata;->c:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    return-void
.end method

.method private isLocalMetadataUpdated()Z
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamPlayback;->getContentId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_2

    .line 128
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->localMetadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/verimatrix/vdc/StreamMetadata;->localMetadata:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/verimatrix/vdc/StreamMetadata;->serverMetadata:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/verimatrix/vdc/StreamMetadata;->serverMetadata:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/verimatrix/vdc/StreamMetadata;->localMetadata:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method cleanSentMetadataMap()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->sentMetadataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method getSentMetadataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->sentMetadataMap:Ljava/util/Map;

    return-object v0
.end method

.method hasMandatoryFields(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v0, v0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    sget-object v1, Lcom/verimatrix/vdc/Monitor$MediaType;->ON_DEMAND:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-ne v0, v1, :cond_0

    .line 184
    invoke-static {p1}, Lcom/verimatrix/vdc/Monitor$MetadataType1;->hasMandatoryFields(Ljava/util/Map;)Z

    move-result p1

    goto :goto_1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v0, v0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    sget-object v1, Lcom/verimatrix/vdc/Monitor$MediaType;->LINEAR_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v0, v0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    sget-object v1, Lcom/verimatrix/vdc/Monitor$MediaType;->BROADCAST_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 187
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/verimatrix/vdc/Monitor$MetadataType2;->hasMandatoryFields(Ljava/util/Map;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method metadataDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "title"

    .line 33
    invoke-virtual {p0, p1, p4}, Lcom/verimatrix/vdc/StreamMetadata;->setLocalMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "category"

    .line 34
    invoke-virtual {p0, p1, p7}, Lcom/verimatrix/vdc/StreamMetadata;->setLocalMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "description"

    .line 35
    invoke-virtual {p0, p1, p3}, Lcom/verimatrix/vdc/StreamMetadata;->setLocalMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "season"

    .line 36
    invoke-virtual {p0, p1, p6}, Lcom/verimatrix/vdc/StreamMetadata;->setLocalMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "episode"

    .line 37
    invoke-virtual {p0, p1, p5}, Lcom/verimatrix/vdc/StreamMetadata;->setLocalMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "catalogue_reference"

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/StreamMetadata;->setLocalMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "language"

    .line 39
    invoke-virtual {p0, p1, p8}, Lcom/verimatrix/vdc/StreamMetadata;->setLocalMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/verimatrix/vdc/StreamMetadata;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/StreamMetadata;->updateServerMetadata(Landroid/content/Context;)V

    .line 42
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method metadataDimensions(II)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "width"

    invoke-virtual {p0, v0, p1}, Lcom/verimatrix/vdc/StreamMetadata;->setLocalMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {p0, p2, p1}, Lcom/verimatrix/vdc/StreamMetadata;->setLocalMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/verimatrix/vdc/StreamMetadata;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/StreamMetadata;->updateServerMetadata(Landroid/content/Context;)V

    .line 50
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method metadataDuration(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-static {p1, p2}, Lcom/verimatrix/vdc/MonitorUtils;->millisecondsToSeconds(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "run_time"

    invoke-virtual {p0, v1, v0}, Lcom/verimatrix/vdc/StreamMetadata;->setLocalMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/verimatrix/vdc/StreamMetadata;->updateServerMetadata(Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iput-wide p1, v0, Lcom/verimatrix/vdc/StreamPlayback;->expectedPlayTime:J

    .line 58
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method metadataIdentity(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;ZZ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    invoke-static {p1, p2, p3, p4}, Lcom/verimatrix/vdc/InputValidator;->metadataIdentity(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;ZZ)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v0

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "referenceCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "audioExpected:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "videoExpected:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {v0, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 78
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StreamMetadata;->metadataInitialise()V

    .line 81
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iput-object p2, v0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    .line 82
    iget-object p2, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object p2, p2, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/verimatrix/vdc/StreamPlayback;->mediaUrl:Ljava/lang/String;

    .line 83
    iget-object p2, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object p2, p2, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iput-boolean p3, p2, Lcom/verimatrix/vdc/StreamPlayback;->audioExpected:Z

    .line 84
    iget-object p2, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object p2, p2, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iput-boolean p4, p2, Lcom/verimatrix/vdc/StreamPlayback;->videoExpected:Z

    .line 85
    iget-object p2, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object p2, p2, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iput-object p1, p2, Lcom/verimatrix/vdc/StreamPlayback;->referenceCode:Ljava/lang/String;

    .line 87
    iget-object p2, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object p2, p2, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iput-object v0, p2, Lcom/verimatrix/vdc/StreamPlayback;->pendingPvrStartEvent:Lcom/verimatrix/vdc/SendEvent;

    .line 89
    iget-object p2, p0, Lcom/verimatrix/vdc/StreamMetadata;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "referenceCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mediaType="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v4, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v4, v4, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioExpected="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "videoExpected="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    const-string p1, "metadata_identity (local)"

    invoke-static {p2, v0, p1, v5}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method metadataInitialise()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->expectedPlayTime:J

    .line 64
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->frameErrorCount:J

    .line 65
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/verimatrix/vdc/StreamPlayback;->setContentId(J)V

    .line 66
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->localMetadata:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->serverMetadata:Ljava/util/Map;

    .line 68
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v2, "metadata has been cleared"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Event add: metadata_initialise (local)"

    invoke-static {v0, v1, v3, v2}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method populateReferenceMetadata(Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/verimatrix/vdc/Monitor$MediaType;->ON_DEMAND:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-ne p2, v0, :cond_0

    .line 149
    iget-object p2, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object p2, p2, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object p2, p2, Lcom/verimatrix/vdc/StreamPlayback;->identifier:Ljava/lang/String;

    const-string v0, "external_programme_ref"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object p2, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->URL:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v0, v0, Lcom/verimatrix/vdc/StreamPlayback;->identifiedType:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    if-ne p2, v0, :cond_2

    .line 151
    sget-object p2, Lcom/verimatrix/vdc/Monitor$MetadataType1;->URL:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    invoke-virtual {p2}, Lcom/verimatrix/vdc/Monitor$MetadataType1;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v0, v0, Lcom/verimatrix/vdc/StreamPlayback;->identifier:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/Monitor$MediaType;->LINEAR_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/verimatrix/vdc/Monitor$MediaType;->BROADCAST_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-ne p2, v0, :cond_2

    .line 155
    :cond_1
    iget-object p2, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object p2, p2, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object p2, p2, Lcom/verimatrix/vdc/StreamPlayback;->identifier:Ljava/lang/String;

    const-string v0, "external_channel_ref"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object p1
.end method

.method removeNotValidMetadata(Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 163
    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 167
    sget-object v3, Lcom/verimatrix/vdc/Monitor$MediaType;->ON_DEMAND:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-ne p2, v3, :cond_1

    .line 168
    invoke-static {v2}, Lcom/verimatrix/vdc/Monitor$MetadataType1;->containKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_1
    sget-object v3, Lcom/verimatrix/vdc/Monitor$MediaType;->LINEAR_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-eq p2, v3, :cond_2

    sget-object v3, Lcom/verimatrix/vdc/Monitor$MediaType;->BROADCAST_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-ne p2, v3, :cond_0

    .line 173
    :cond_2
    invoke-static {v2}, Lcom/verimatrix/vdc/Monitor$MetadataType2;->containKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method resetVariables()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->localMetadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 233
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->serverMetadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 234
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->sentMetadataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method setLocalMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->localMetadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method updateMetadata(Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            ")",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    if-eqz p1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v2, "metadata_active"

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/StreamMetadata;->hasMandatoryFields(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/StreamMetadata;->removeNotValidMetadata(Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;)Ljava/util/Map;

    move-result-object p1

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/StreamMetadata;->populateReferenceMetadata(Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;)Ljava/util/Map;

    move-result-object p1

    .line 215
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 216
    check-cast p2, Ljava/util/Map$Entry;

    .line 217
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 219
    invoke-virtual {p0, v0, p2}, Lcom/verimatrix/vdc/StreamMetadata;->setLocalMetadata(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/verimatrix/vdc/StreamMetadata;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/StreamMetadata;->updateServerMetadata(Landroid/content/Context;)V

    .line 222
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    goto :goto_1

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/verimatrix/vdc/StreamMetadata;->c:Landroid/content/Context;

    iget-object p2, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object p2, p2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error. Metadata map do not has all mandatory fields"

    invoke-static {p1, p2, v2, v1}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method updateMetadataRequest(Lcom/verimatrix/vdc/Monitor$MediaType;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->localMetadata:Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Lcom/verimatrix/vdc/StreamMetadata;->updateMetadataRequest(Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method updateMetadataRequest(Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            ")",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    .line 198
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/verimatrix/vdc/MonitorAgent;->getLoginManager()Lcom/verimatrix/vdc/MonitorLogin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/verimatrix/vdc/MonitorLogin;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/StreamMetadata;->updateMetadata(Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/verimatrix/vdc/MonitorAgent;->getLoginManager()Lcom/verimatrix/vdc/MonitorLogin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/verimatrix/vdc/MonitorLogin;->isLoginInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-static {}, Lcom/verimatrix/vdc/RequestQueue;->getInstance()Lcom/verimatrix/vdc/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/verimatrix/vdc/RequestQueue$MetadataRequest;

    iget-object v2, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-direct {v1, v2, p1, p2}, Lcom/verimatrix/vdc/RequestQueue$MetadataRequest;-><init>(Lcom/verimatrix/vdc/Stream;Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;)V

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/RequestQueue;->add(Lcom/verimatrix/vdc/RequestQueue$Request;)V

    .line 202
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    :cond_1
    :goto_0
    return-object v0
.end method

.method updateServerMetadata(Landroid/content/Context;)V
    .locals 11

    .line 104
    invoke-direct {p0}, Lcom/verimatrix/vdc/StreamMetadata;->isLocalMetadataUpdated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v8

    .line 106
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamPlayback;->getContentId()J

    move-result-wide v9

    .line 107
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->sentMetadataMap:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget v2, v0, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    iget-object v3, p0, Lcom/verimatrix/vdc/StreamMetadata;->localMetadata:Ljava/util/Map;

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->identifiedType:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-wide v6, v0, Lcom/verimatrix/vdc/Stream;->offset:J

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/verimatrix/vdc/NetworkManager;->sendMetadata(Landroid/content/Context;ILjava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$IdentifiedType;JLjava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->localMetadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lcom/verimatrix/vdc/StreamMetadata;->localMetadata:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/verimatrix/vdc/StreamMetadata;->serverMetadata:Ljava/util/Map;

    iget-object v3, p0, Lcom/verimatrix/vdc/StreamMetadata;->localMetadata:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->localMetadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 117
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v1, "updateServerMetadata Metadata send"

    invoke-static {p1, v0, v1}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v1, "updateServerMetadata Metadata not send"

    invoke-static {p1, v0, v1}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamMetadata;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v1, "updateServerMetadata Metadata is not changed"

    invoke-static {p1, v0, v1}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
