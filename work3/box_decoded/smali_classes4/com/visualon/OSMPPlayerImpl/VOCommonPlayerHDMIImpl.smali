.class public Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;
.super Ljava/lang/Object;
.source "VOCommonPlayerHDMIImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableHDMIDetection(Landroid/content/Context;Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHDMIStatus()Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isHDMIDetectionSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setOnHDMIConnectionChangeListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$onHDMIConnectionChangeListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
