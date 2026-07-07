.class public Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;
.super Ljava/lang/Object;
.source "VOOSMPDRMInit.java"


# instance fields
.field private mDRMData:[B

.field private mDRMDataHandle:J

.field private mThirdPartyFuncSet:J


# direct methods
.method public constructor <init>(J[B)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMDataHandle:J

    const/4 v2, 0x0

    .line 19
    iput-object v2, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMData:[B

    .line 20
    iput-wide v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mThirdPartyFuncSet:J

    .line 26
    iput-object p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMData:[B

    .line 27
    iput-wide p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMDataHandle:J

    return-void
.end method


# virtual methods
.method public getDRMInitData()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMData:[B

    return-object v0
.end method

.method public getDRMInitDataHandle()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMDataHandle:J

    return-wide v0
.end method

.method public getDRMInitSize()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMData:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getThirdPartyFunctionSet()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mThirdPartyFuncSet:J

    return-wide v0
.end method

.method public setThirdPartyFunctionSet(J)Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mThirdPartyFuncSet:J

    return-object p0
.end method
