.class public Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;
.super Ljava/lang/Object;
.source "VOOSMPAdUISettings.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVPAIDUIConfiguration:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;->mView:Landroid/view/View;

    .line 32
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;->mContext:Landroid/content/Context;

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;->mVPAIDUIConfiguration:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getVPAIDUIConfiguration()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;->mVPAIDUIConfiguration:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoView()Landroid/view/View;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;->mContext:Landroid/content/Context;

    .line 69
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setVPAIDUIConfiguration(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;->mVPAIDUIConfiguration:Ljava/lang/String;

    .line 105
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setVideoView(Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdUISettings;->mView:Landroid/view/View;

    .line 45
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method
