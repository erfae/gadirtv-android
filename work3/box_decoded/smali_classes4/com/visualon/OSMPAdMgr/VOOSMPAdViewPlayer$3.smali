.class Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$3;
.super Ljava/lang/Object;
.source "VOOSMPAdMgrImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V
    .locals 0

    .line 1950
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$3;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1953
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$3;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    iget-object v0, v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mViewPlayer:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdViewPlayer"

    const-string v2, "destroy: mViewPlayer"

    .line 1954
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1955
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$3;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    iget-object v0, v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mViewPlayer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1956
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$3;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    iget-object v0, v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$3;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    iget-object v1, v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mViewPlayer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1957
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$3;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->destroyHelper()V

    .line 1958
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$3;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mViewPlayer:Landroid/view/View;

    :cond_0
    return-void
.end method
