.class public Lcom/visualon/OSMPAdMgr/VOOSMPAdIMASettings;
.super Ljava/lang/Object;
.source "VOOSMPAdIMASettings.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdIMASettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdIMASettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdIMASettings;->mContext:Landroid/content/Context;

    .line 67
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setView(Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdIMASettings;->mView:Landroid/view/View;

    .line 43
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method
