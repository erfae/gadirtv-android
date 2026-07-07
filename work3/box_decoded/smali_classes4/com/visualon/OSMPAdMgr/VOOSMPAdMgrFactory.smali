.class public Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrFactory;
.super Ljava/lang/Object;
.source "VOOSMPAdMgrFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance()Lcom/visualon/OSMPAdMgr/VOOSMPAdMgr;
    .locals 1

    .line 30
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->getInstance()Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    move-result-object v0

    return-object v0
.end method
