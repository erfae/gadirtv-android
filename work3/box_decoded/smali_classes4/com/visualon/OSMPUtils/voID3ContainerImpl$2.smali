.class Lcom/visualon/OSMPUtils/voID3ContainerImpl$2;
.super Ljava/lang/Object;
.source "voID3ContainerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPUtils/voID3ContainerImpl;->onRequest(IIILjava/lang/Object;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

.field final synthetic val$tag:Lcom/visualon/OSMPUtils/voOSTimedTag;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPUtils/voID3ContainerImpl;Lcom/visualon/OSMPUtils/voOSTimedTag;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$2;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    iput-object p2, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$2;->val$tag:Lcom/visualon/OSMPUtils/voOSTimedTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "@@@voID3ContainerImpl"

    const/4 v1, 0x0

    .line 333
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$2;->val$tag:Lcom/visualon/OSMPUtils/voOSTimedTag;

    invoke-interface {v3}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Data()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 334
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "VOOSMP_SRC_CB_Customer_Tag = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    .line 335
    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_0
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$2;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    invoke-virtual {v3, v2}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->setFrameScrubbingUrl(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 339
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "download error"

    .line 341
    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
