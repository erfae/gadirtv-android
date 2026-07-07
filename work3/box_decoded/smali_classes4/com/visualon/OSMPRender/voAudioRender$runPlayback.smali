.class Lcom/visualon/OSMPRender/voAudioRender$runPlayback;
.super Ljava/lang/Object;
.source "voAudioRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPRender/voAudioRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "runPlayback"
.end annotation


# instance fields
.field private mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

.field final synthetic this$0:Lcom/visualon/OSMPRender/voAudioRender;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPRender/voAudioRender;Lcom/visualon/OSMPRender/voAudioRender;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender$runPlayback;->this$0:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p2, p0, Lcom/visualon/OSMPRender/voAudioRender$runPlayback;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender$runPlayback;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-static {v0}, Lcom/visualon/OSMPRender/voAudioRender;->access$400(Lcom/visualon/OSMPRender/voAudioRender;)V

    return-void
.end method
