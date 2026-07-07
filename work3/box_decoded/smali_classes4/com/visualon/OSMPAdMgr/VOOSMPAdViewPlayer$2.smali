.class Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$2;
.super Ljava/lang/Object;
.source "VOOSMPAdMgrImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->unhide()V
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

    .line 1919
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1922
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    iget-object v0, v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mViewPlayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
