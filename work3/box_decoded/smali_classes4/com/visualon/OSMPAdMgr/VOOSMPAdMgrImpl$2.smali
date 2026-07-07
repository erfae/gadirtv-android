.class Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$2;
.super Ljava/lang/Object;
.source "VOOSMPAdMgrImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->unhideContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)V
    .locals 0

    .line 1361
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1364
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$300(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$500(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1367
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$502(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;F)F

    .line 1368
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$302(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
