.class Lcom/visualon/OSMPRender/voAudioRender$1;
.super Ljava/lang/Object;
.source "voAudioRender.java"

# interfaces
.implements Lcom/visualon/OSMPRender/voAudioDSPClock$OnPlaybackHeadPosErrorListener;


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

    .line 154
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender$1;->this$0:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPlaybackHeadPosError()V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender$1;->this$0:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-static {v0}, Lcom/visualon/OSMPRender/voAudioRender;->access$000(Lcom/visualon/OSMPRender/voAudioRender;)Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    move-result-object v0

    const v1, -0x7fffffe5

    const/16 v2, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onAudioRenderEvent(IIILjava/lang/Object;)I

    return-void
.end method
