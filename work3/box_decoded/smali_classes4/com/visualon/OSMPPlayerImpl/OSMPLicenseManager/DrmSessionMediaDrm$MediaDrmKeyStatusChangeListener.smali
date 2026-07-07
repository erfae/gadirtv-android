.class Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmKeyStatusChangeListener;
.super Ljava/lang/Object;
.source "DrmSessionMediaDrm.java"

# interfaces
.implements Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmKeyStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmKeyStatusChangeListener;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$1;)V
    .locals 0

    .line 892
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmKeyStatusChangeListener;-><init>(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;)V

    return-void
.end method


# virtual methods
.method public onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm;",
            "[B",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation

    .line 895
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    new-array p1, p2, [Ljava/lang/Object;

    const-string p4, "@@@LicMgrMediaDrm"

    const-string v0, "[INFO] MediaDrmEventListener::onKeyStatusChange "

    .line 896
    invoke-static {p4, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 898
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/MediaDrm$KeyStatus;

    .line 899
    invoke-virtual {p3}, Landroid/media/MediaDrm$KeyStatus;->getStatusCode()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    iget-object p4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmKeyStatusChangeListener;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;

    invoke-static {p4}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->access$200(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 900
    iget-object p4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmKeyStatusChangeListener;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;

    invoke-static {p4}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->access$200(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    move-result-object p4

    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_DRM_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {p3}, Landroid/media/MediaDrm$KeyStatus;->getStatusCode()I

    move-result p3

    const/4 v1, 0x0

    invoke-interface {p4, v0, p3, p2, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    :cond_2
    return-void
.end method
