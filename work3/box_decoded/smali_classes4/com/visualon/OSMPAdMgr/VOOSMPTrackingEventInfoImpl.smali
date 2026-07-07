.class Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;
.super Ljava/lang/Object;
.source "VOOSMPTrackingEventInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPTrackingEventInfoImpl"


# instance fields
.field private mAdId:Ljava/lang/String;

.field private mAdPos:J

.field private mAssetUrl:Ljava/lang/String;

.field private mContentPos:J

.field private mCreativeId:Ljava/lang/String;

.field private mCurrPos:J

.field private mDuration:J

.field private mFlags:I

.field private mIsAdSkipped:Z

.field private mOpenCompleteStatus:I

.field private mPartNumber:I

.field private mSeekTarget:J

.field private mTotalParts:I

.field private mTriggerReachedPosition:J

.field private mTriggerViewedPercentage:D

.field private mType:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;

.field private mVASTErrorCode:I

.field private mVASTTrackingUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;->VO_OSMP_TRACKING_EVENT_ID_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mType:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mFlags:I

    const-wide/16 v1, -0x1

    .line 184
    iput-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mTriggerReachedPosition:J

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 185
    iput-wide v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mTriggerViewedPercentage:D

    .line 186
    iput-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mDuration:J

    .line 187
    iput-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mCurrPos:J

    .line 188
    iput-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mAdPos:J

    .line 189
    iput-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mContentPos:J

    .line 190
    iput-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mSeekTarget:J

    .line 191
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mIsAdSkipped:Z

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mAssetUrl:Ljava/lang/String;

    .line 193
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mAdId:Ljava/lang/String;

    .line 194
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mCreativeId:Ljava/lang/String;

    const/4 v1, -0x1

    .line 195
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mVASTErrorCode:I

    .line 196
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mVASTTrackingUrl:Ljava/lang/String;

    .line 197
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mPartNumber:I

    .line 198
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mTotalParts:I

    .line 199
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mOpenCompleteStatus:I

    return-void
.end method

.method private hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z
    .locals 1

    .line 77
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mFlags:I

    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->getValue()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isEndEvent()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mType:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;

    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;->VO_OSMP_TRACKING_EVENT_END:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isStartEvent()Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mType:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;

    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;->VO_OSMP_TRACKING_EVENT_START:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mAdId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPos()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mAdPos:J

    return-wide v0
.end method

.method public getAssetUrl()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mAssetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentPos()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mContentPos:J

    return-wide v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrPos()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mCurrPos:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mDuration:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mFlags:I

    return v0
.end method

.method public getOpenCompleteStatus()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mOpenCompleteStatus:I

    return v0
.end method

.method public getPartNumber()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mPartNumber:I

    return v0
.end method

.method public getSeekTarget()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mSeekTarget:J

    return-wide v0
.end method

.method public getTotalParts()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mTotalParts:I

    return v0
.end method

.method public getTriggerReachedPosition()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mTriggerReachedPosition:J

    return-wide v0
.end method

.method public getTriggerViewedPercentage()D
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mTriggerViewedPercentage:D

    return-wide v0
.end method

.method public getType()Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mType:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;

    return-object v0
.end method

.method public getVASTErrorCode()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mVASTErrorCode:I

    return v0
.end method

.method public getVASTTrackingUrl()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mVASTTrackingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAd()Z
    .locals 1

    .line 80
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_AD:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z

    move-result v0

    return v0
.end method

.method public isAdBreakEnd()Z
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isPeriodEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_SE_AD_BREAK:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 126
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAdBreakStart()Z
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isPeriodStart()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_SE_AD_BREAK:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 122
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAdSkipped()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mIsAdSkipped:Z

    return v0
.end method

.method public isContentEnd()Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isPeriodEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_SE_CONTENT:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 118
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContentStart()Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isPeriodStart()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_SE_CONTENT:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 114
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContentToContent()Z
    .locals 1

    .line 135
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_SE_CONTENT_TO_CONTENT:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z

    move-result v0

    return v0
.end method

.method public isLive()Z
    .locals 1

    .line 138
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_LIVE:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z

    move-result v0

    return v0
.end method

.method public isMidroll()Z
    .locals 1

    .line 85
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_MIDROLL:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z

    move-result v0

    return v0
.end method

.method public isMidrollEnd()Z
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isAdBreakEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isMidroll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMidrollStart()Z
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isAdBreakStart()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isMidroll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPeriodEnd()Z
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isEndEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_SE_PERIOD:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 102
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPeriodStart()Z
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isStartEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_SE_PERIOD:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 98
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPostroll()Z
    .locals 1

    .line 88
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_POSTROLL:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z

    move-result v0

    return v0
.end method

.method public isPostrollEnd()Z
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isAdBreakEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isPostroll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPostrollStart()Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isAdBreakStart()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isPostroll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreroll()Z
    .locals 1

    .line 82
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_PREROLL:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z

    move-result v0

    return v0
.end method

.method public isPrerollEnd()Z
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isAdBreakEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isPreroll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrerollStart()Z
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isAdBreakStart()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isPreroll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoEnd()Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isPeriodEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_SE_VIDEO:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 110
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoStart()Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->isPeriodStart()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_SE_VIDEO:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 106
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->hasFlag(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAdId(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mAdId:Ljava/lang/String;

    return-void
.end method

.method public setAdPos(J)V
    .locals 0

    .line 168
    iput-wide p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mAdPos:J

    return-void
.end method

.method public setAssetUrl(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mAssetUrl:Ljava/lang/String;

    return-void
.end method

.method public setContentPos(J)V
    .locals 0

    .line 169
    iput-wide p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mContentPos:J

    return-void
.end method

.method public setCreativeId(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mCreativeId:Ljava/lang/String;

    return-void
.end method

.method public setCurrPos(J)V
    .locals 0

    .line 167
    iput-wide p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mCurrPos:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 166
    iput-wide p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mDuration:J

    return-void
.end method

.method public setFlag(I)V
    .locals 1

    .line 162
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mFlags:I

    return-void
.end method

.method public setIsAdSkipped(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mIsAdSkipped:Z

    return-void
.end method

.method public setOpenCompleteStatus(I)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mOpenCompleteStatus:I

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mPartNumber:I

    return-void
.end method

.method public setSeekTarget(J)V
    .locals 0

    .line 170
    iput-wide p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mSeekTarget:J

    return-void
.end method

.method public setTotalParts(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mTotalParts:I

    return-void
.end method

.method public setTriggerReachedPosition(J)V
    .locals 0

    .line 163
    iput-wide p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mTriggerReachedPosition:J

    return-void
.end method

.method public setTriggerViewedPercentage(D)V
    .locals 0

    .line 165
    iput-wide p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mTriggerViewedPercentage:D

    return-void
.end method

.method public setType(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mType:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;

    return-void
.end method

.method public setVASTErrorCode(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mVASTErrorCode:I

    return-void
.end method

.method public setVASTTrackingUrl(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->mVASTTrackingUrl:Ljava/lang/String;

    return-void
.end method
