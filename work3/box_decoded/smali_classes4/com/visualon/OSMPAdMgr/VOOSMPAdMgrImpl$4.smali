.class Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$4;
.super Ljava/lang/Object;
.source "VOOSMPAdMgrImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->drawImageButton(ZZLjava/lang/Object;)V
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

    .line 1579
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$4;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1582
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$4;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1583
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$4;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->VO_OSMP_APP_NOTIFICATION_CLICK_THROUGH:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$4;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    .line 1585
    invoke-static {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1583
    invoke-virtual {p1, v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->onAppNotify(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;Ljava/lang/Object;Ljava/lang/Object;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    .line 1586
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$4;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1587
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1588
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$4;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1589
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$4;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
