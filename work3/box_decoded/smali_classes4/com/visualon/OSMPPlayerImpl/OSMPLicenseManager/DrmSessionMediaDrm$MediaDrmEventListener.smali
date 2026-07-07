.class Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmEventListener;
.super Ljava/lang/Object;
.source "DrmSessionMediaDrm.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmEventListener;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$1;)V
    .locals 0

    .line 881
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmEventListener;-><init>(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;)V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    .line 884
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@LicMgrMediaDrm"

    const-string p5, "[INFO] MediaDrmEventListener::onEvent "

    .line 885
    invoke-static {p2, p5, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    .line 887
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmEventListener;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;

    invoke-static {p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->access$200(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 888
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmEventListener;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;

    invoke-static {p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->access$200(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    move-result-object p1

    sget-object p2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_DRM_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    const/4 p5, 0x0

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    :cond_1
    return-void
.end method
