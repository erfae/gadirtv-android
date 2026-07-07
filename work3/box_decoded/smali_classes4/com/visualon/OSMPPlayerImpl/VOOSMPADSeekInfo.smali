.class Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;
.super Ljava/lang/Object;
.source "VOOSMPADSeekInfo.java"


# instance fields
.field private mAdsSequnceNumber:I

.field private mContentSeekPos:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdsSequnceNumber()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->mAdsSequnceNumber:I

    return v0
.end method

.method public getContentSeekPos()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->mContentSeekPos:J

    return-wide v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 2

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->mAdsSequnceNumber:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->mContentSeekPos:J

    const/4 p1, 0x1

    return p1
.end method
