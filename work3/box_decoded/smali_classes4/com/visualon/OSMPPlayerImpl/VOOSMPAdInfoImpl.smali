.class Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;
.super Ljava/lang/Object;
.source "VOOSMPAdInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;


# instance fields
.field private mAdPeriodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mIID3Infor:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

.field private mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

.field private mStreamUrl:Ljava/lang/String;

.field private openParam:Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mCount:I

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mAdPeriodList:Ljava/util/ArrayList;

    .line 33
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mStreamUrl:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->openParam:Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    .line 45
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mIID3Infor:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

    .line 46
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mAdPeriodList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mCount:I

    return v0
.end method

.method public getIID3Infor()Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mIID3Infor:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

    return-object v0
.end method

.method public getOpenParam()Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->openParam:Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    return-object v0
.end method

.method public getPeriodList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mAdPeriodList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    return-object v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mStreamUrl:Ljava/lang/String;

    return-object v0
.end method

.method parse(Landroid/os/Parcel;)Z
    .locals 3

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mCount:I

    const/4 v0, 0x0

    .line 73
    :goto_0
    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mCount:I

    if-ge v0, v1, :cond_0

    .line 75
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;

    invoke-direct {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;-><init>()V

    .line 76
    invoke-virtual {v1, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->parse(Landroid/os/Parcel;)Z

    .line 77
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mAdPeriodList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setIID3Infor(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mIID3Infor:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

    return-void
.end method

.method public setOpenParam(Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->openParam:Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    return-void
.end method

.method public setPlayer(Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    return-void
.end method

.method public setStreamUrl(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mStreamUrl:Ljava/lang/String;

    .line 102
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method
