.class public Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;
.super Ljava/lang/Object;
.source "VOOSMPAdInformation.java"


# instance fields
.field private strCaptionURL:Ljava/lang/String;

.field private strChannelname:Ljava/lang/String;

.field private strContentTitle:Ljava/lang/String;

.field private strSeriesTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strCaptionURL:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strContentTitle:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strSeriesTitle:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strChannelname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStrCaptionURL()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strCaptionURL:Ljava/lang/String;

    return-object v0
.end method

.method public getStrChannelname()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strChannelname:Ljava/lang/String;

    return-object v0
.end method

.method public getStrContentTitle()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strContentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getStrSeriesTitle()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strSeriesTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setStrCaptionURL(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strCaptionURL:Ljava/lang/String;

    return-void
.end method

.method public setStrChannelname(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strChannelname:Ljava/lang/String;

    return-void
.end method

.method public setStrContentTitle(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strContentTitle:Ljava/lang/String;

    return-void
.end method

.method public setStrSeriesTitle(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strSeriesTitle:Ljava/lang/String;

    return-void
.end method
