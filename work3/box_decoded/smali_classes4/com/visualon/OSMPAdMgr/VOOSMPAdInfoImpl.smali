.class Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;
.super Ljava/lang/Object;
.source "VOOSMPAdEventInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPAdMgr/VOOSMPAdInfo;


# instance fields
.field private mClickThroughUrl:Ljava/lang/String;

.field private mCreativeId:Ljava/lang/String;

.field private mDuration:J

.field private mId:Ljava/lang/String;

.field private mIsSkippable:Z

.field private mIsVPAID:Z

.field private mPodPos:I

.field private mSkipoffset:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mId:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mTitle:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mCreativeId:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 176
    iput-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mDuration:J

    const/4 v3, -0x1

    .line 177
    iput v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mPodPos:I

    const/4 v3, 0x0

    .line 178
    iput-boolean v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mIsSkippable:Z

    .line 179
    iput-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mSkipoffset:J

    .line 180
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mClickThroughUrl:Ljava/lang/String;

    .line 181
    iput-boolean v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mIsVPAID:Z

    return-void
.end method


# virtual methods
.method public getAdDuration()J
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mDuration:J

    return-wide v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPodPos()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mPodPos:I

    return v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipoffset()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mSkipoffset:J

    return-wide v0
.end method

.method public isSkippable()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mIsSkippable:Z

    return v0
.end method

.method public isVPAID()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mIsVPAID:Z

    return v0
.end method

.method public setAdId(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mId:Ljava/lang/String;

    return-void
.end method

.method public setAdPodPos(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mPodPos:I

    return-void
.end method

.method public setAdTitle(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setClickThroughUrl(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mClickThroughUrl:Ljava/lang/String;

    return-void
.end method

.method public setCreativeId(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mCreativeId:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 164
    iput-wide p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mDuration:J

    return-void
.end method

.method public setSkippable(ZJ)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mIsSkippable:Z

    .line 168
    iput-wide p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mSkipoffset:J

    return-void
.end method

.method public setVPAID(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->mIsVPAID:Z

    return-void
.end method
