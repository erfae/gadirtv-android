.class public Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;
.super Ljava/lang/Object;
.source "VOOSMPAdCallParam.java"


# instance fields
.field private mAdCallType:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

.field private mAdCallUrl:Ljava/lang/String;

.field private mIMASettings:Lcom/visualon/OSMPAdMgr/VOOSMPAdIMASettings;

.field private mUISettings:Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mIMASettings:Lcom/visualon/OSMPAdMgr/VOOSMPAdIMASettings;

    .line 38
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mUISettings:Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;

    return-void
.end method


# virtual methods
.method public getAdCallType()Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mAdCallType:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    return-object v0
.end method

.method public getAdCallUrl()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mAdCallUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mAdCallType:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->VO_OSMP_AD_CALL_IMA:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mIMASettings:Lcom/visualon/OSMPAdMgr/VOOSMPAdIMASettings;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdIMASettings;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mUISettings:Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVPAIDUIConfiguration()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mUISettings:Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;->getVPAIDUIConfiguration()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mAdCallType:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->VO_OSMP_AD_CALL_IMA:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mIMASettings:Lcom/visualon/OSMPAdMgr/VOOSMPAdIMASettings;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdIMASettings;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mUISettings:Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;->getVideoView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAdCallType(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mAdCallType:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    .line 89
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method

.method public setAdCallUrl(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mAdCallUrl:Ljava/lang/String;

    .line 75
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method

.method public setIMASettings(Lcom/visualon/OSMPAdMgr/VOOSMPAdIMASettings;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mIMASettings:Lcom/visualon/OSMPAdMgr/VOOSMPAdIMASettings;

    .line 103
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method

.method public setUISettings(Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->mUISettings:Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;

    .line 116
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method
