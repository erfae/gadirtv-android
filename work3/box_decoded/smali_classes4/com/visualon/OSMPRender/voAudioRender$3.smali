.class Lcom/visualon/OSMPRender/voAudioRender$3;
.super Ljava/lang/Object;
.source "voAudioRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPRender/voAudioRender;->resetAudioDSPClock()V
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

    .line 428
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender$3;->this$0:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender$3;->this$0:Lcom/visualon/OSMPRender/voAudioRender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/visualon/OSMPRender/voAudioRender;->access$502(Lcom/visualon/OSMPRender/voAudioRender;I)I

    return-void
.end method
