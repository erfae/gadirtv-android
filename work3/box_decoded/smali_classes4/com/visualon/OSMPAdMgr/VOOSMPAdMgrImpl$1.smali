.class Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$1;
.super Ljava/lang/Object;
.source "VOOSMPAdMgrImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->hideContentView()V
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

    .line 1343
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1346
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$300(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1350
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1351
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1353
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-static {v0, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$502(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;F)F

    .line 1354
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v3}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1355
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$302(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
