.class Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2$1;
.super Ljava/lang/Object;
.source "VOOSMPWebViewPlayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2$1;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
