.class Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;
.super Ljava/lang/Object;
.source "voVideoViewController.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voVideoViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FirstSurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/voVideoViewController;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPUtils/voVideoViewController;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPUtils/voVideoViewController;Lcom/visualon/OSMPUtils/voVideoViewController$1;)V
    .locals 0

    .line 425
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;-><init>(Lcom/visualon/OSMPUtils/voVideoViewController;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 428
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@voVideoViewController"

    const-string v2, "onSurfaceTextureAvailable"

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$700(Lcom/visualon/OSMPUtils/voVideoViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$700(Lcom/visualon/OSMPUtils/voVideoViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 445
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@voVideoViewController"

    const-string v2, "onSurfaceTextureDestroyed"

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$700(Lcom/visualon/OSMPUtils/voVideoViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$700(Lcom/visualon/OSMPUtils/voVideoViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .line 436
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@voVideoViewController"

    const-string v2, "#VideoDes SurfaceTextureSizeChanged"

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    const-wide/16 v1, 0x1027

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voVideoViewController;->SetParam(JLjava/lang/Object;)I

    .line 438
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$700(Lcom/visualon/OSMPUtils/voVideoViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$700(Lcom/visualon/OSMPUtils/voVideoViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$700(Lcom/visualon/OSMPUtils/voVideoViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$FirstSurfaceTextureListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$700(Lcom/visualon/OSMPUtils/voVideoViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method
