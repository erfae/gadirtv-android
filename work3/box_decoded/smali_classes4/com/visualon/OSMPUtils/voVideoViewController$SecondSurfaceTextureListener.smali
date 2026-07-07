.class Lcom/visualon/OSMPUtils/voVideoViewController$SecondSurfaceTextureListener;
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
    name = "SecondSurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/voVideoViewController;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPUtils/voVideoViewController;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$SecondSurfaceTextureListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPUtils/voVideoViewController;Lcom/visualon/OSMPUtils/voVideoViewController$1;)V
    .locals 0

    .line 460
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController$SecondSurfaceTextureListener;-><init>(Lcom/visualon/OSMPUtils/voVideoViewController;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 464
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "@@@voVideoViewController"

    const-string v0, "onSurfaceTextureAvailable"

    invoke-static {p3, v0, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    :cond_0
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 466
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$SecondSurfaceTextureListener;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    const-wide/16 v0, 0x66

    invoke-virtual {p1, v0, v1, p2}, Lcom/visualon/OSMPUtils/voVideoViewController;->SetParam(JLjava/lang/Object;)I

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 476
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@voVideoViewController"

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 471
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@voVideoViewController"

    const-string p3, "onSurfaceTextureSizeChanged"

    invoke-static {p2, p3, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
