.class Lcom/visualon/OSMPRender/voAudioRender$2;
.super Ljava/lang/Object;
.source "voAudioRender.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPRender/voAudioRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPRender/voAudioRender;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPRender/voAudioRender;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender$2;->this$0:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 173
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 174
    invoke-static {}, Lcom/visualon/OSMPRender/voAudioRender;->access$100()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "openTrack: VOOSMP_CB_Audio_Render_Failed!"

    invoke-static {p1, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender$2;->this$0:Lcom/visualon/OSMPRender/voAudioRender;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/visualon/OSMPRender/voAudioRender;->access$202(Lcom/visualon/OSMPRender/voAudioRender;Z)Z

    .line 177
    iget-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender$2;->this$0:Lcom/visualon/OSMPRender/voAudioRender;

    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-static {p1, v2}, Lcom/visualon/OSMPRender/voAudioRender;->access$302(Lcom/visualon/OSMPRender/voAudioRender;Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;)Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    .line 178
    iget-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender$2;->this$0:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-static {p1}, Lcom/visualon/OSMPRender/voAudioRender;->access$000(Lcom/visualon/OSMPRender/voAudioRender;)Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    move-result-object p1

    const v2, -0x7fffffe6

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v0, v4}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onAudioRenderEvent(IIILjava/lang/Object;)I

    return v1
.end method
