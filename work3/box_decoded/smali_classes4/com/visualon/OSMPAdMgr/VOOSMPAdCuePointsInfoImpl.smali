.class Lcom/visualon/OSMPAdMgr/VOOSMPAdCuePointsInfoImpl;
.super Ljava/lang/Object;
.source "VOOSMPAdCuePointsInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPAdMgr/VOOSMPAdCuePointsInfo;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPAdCuePointsInfoImpl"


# instance fields
.field private mAdCuePoints:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCuePointsInfoImpl;->mAdCuePoints:[F

    return-void
.end method


# virtual methods
.method public getAdCuePoints()[F
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCuePointsInfoImpl;->mAdCuePoints:[F

    return-object v0
.end method

.method public setAdCuePoints([F)V
    .locals 6

    if-eqz p1, :cond_1

    .line 33
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    array-length v0, p1

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdCuePoints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "@@@VOOSMPAdCuePointsInfoImpl"

    invoke-static {v4, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCuePointsInfoImpl;->mAdCuePoints:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 40
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCuePointsInfoImpl;->mAdCuePoints:[F

    aget v5, p1, v1

    aput v5, v3, v1

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAdCuePoints["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCuePointsInfoImpl;->mAdCuePoints:[F

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
