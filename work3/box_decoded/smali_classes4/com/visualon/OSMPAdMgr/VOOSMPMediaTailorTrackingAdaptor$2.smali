.class Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$2;
.super Ljava/util/TimerTask;
.source "VOOSMPMediaTailorTrackingAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->startTrackingThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)V

    return-void
.end method
