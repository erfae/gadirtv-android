.class Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;
.super Ljava/lang/Object;
.source "voVideoViewController.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voVideoViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "voSurfaceCallBack"
.end annotation


# instance fields
.field private mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mController:Lcom/visualon/OSMPUtils/voVideoViewController;

.field final synthetic this$0:Lcom/visualon/OSMPUtils/voVideoViewController;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPUtils/voVideoViewController;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 398
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    .line 400
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPUtils/voVideoViewController;Lcom/visualon/OSMPUtils/voVideoViewController$1;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;-><init>(Lcom/visualon/OSMPUtils/voVideoViewController;)V

    return-void
.end method


# virtual methods
.method public setController(Lcom/visualon/OSMPUtils/voVideoViewController;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 404
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    .line 405
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 410
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@voVideoViewController"

    const-string p3, "#VideoDes surfaceChanged"

    invoke-static {p2, p3, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 412
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;->mController:Lcom/visualon/OSMPUtils/voVideoViewController;

    if-eqz p1, :cond_1

    const-wide/16 p2, 0x1027

    const/4 p4, 0x1

    .line 413
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/visualon/OSMPUtils/voVideoViewController;->SetParam(JLjava/lang/Object;)I

    .line 414
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$voSurfaceCallBack;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
