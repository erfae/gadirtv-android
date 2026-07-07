.class public Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;
.super Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;
.source "VOOSMPAdOpenParamInner.java"


# instance fields
.field private videoID:Ljava/lang/String;

.field private workingPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->videoID:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->workingPath:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getAdEngineType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setAdEngineType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;)V

    .line 51
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getAdvertisingID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setAdvertisingID(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->isDebug()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setDebug(Z)V

    .line 53
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getFlag()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setFlag(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;)V

    .line 54
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getStrOnceUXURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setStrOnceUXURL(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)V

    .line 56
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getAdContentInfo()Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setAdContentInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;)V

    .line 57
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public getVideoID()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->videoID:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkingPath()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->workingPath:Ljava/lang/String;

    return-object v0
.end method

.method public setVideoID(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->videoID:Ljava/lang/String;

    return-void
.end method

.method public setWorkingPath(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->workingPath:Ljava/lang/String;

    return-void
.end method
