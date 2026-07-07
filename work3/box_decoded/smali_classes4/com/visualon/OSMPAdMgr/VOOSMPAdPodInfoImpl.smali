.class Lcom/visualon/OSMPAdMgr/VOOSMPAdPodInfoImpl;
.super Ljava/lang/Object;
.source "VOOSMPAdEventInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPAdMgr/VOOSMPAdPodInfo;


# instance fields
.field private mNumAd:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdPodInfoImpl;->mNumAd:I

    return-void
.end method


# virtual methods
.method public getNumAd()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdPodInfoImpl;->mNumAd:I

    return v0
.end method
