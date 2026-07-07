.class Lcom/visualon/OSMPRender/voAudioDSPClock$2;
.super Ljava/util/TimerTask;
.source "voAudioDSPClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleFlushTimer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPRender/voAudioDSPClock;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPRender/voAudioDSPClock;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock$2;->this$0:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock$2;->this$0:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-static {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->access$100(Lcom/visualon/OSMPRender/voAudioDSPClock;)V

    return-void
.end method
