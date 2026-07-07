.class Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl;
.super Ljava/lang/Object;
.source "VOOSMPAdEventInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPAdBreakInfoImpl"


# instance fields
.field private mBreakType:Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;

.field private mHasAdPod:Z

.field private mNumStandaloneAd:I


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;IZ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl;->mBreakType:Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;

    .line 38
    iput p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl;->mNumStandaloneAd:I

    .line 39
    iput-boolean p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl;->mHasAdPod:Z

    return-void
.end method


# virtual methods
.method public getNumStandaloneAd()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl;->mNumStandaloneAd:I

    return v0
.end method

.method public hasAdPod()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl;->mHasAdPod:Z

    return v0
.end method

.method public isMidroll()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl;->mBreakType:Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;

    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;->VO_OSMP_AD_BREAK_MID_ROLL:Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPostroll()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl;->mBreakType:Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;

    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;->VO_OSMP_AD_BREAK_POST_ROLL:Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreroll()Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl;->mBreakType:Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;

    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;->VO_OSMP_AD_BREAK_PRE_ROLL:Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
