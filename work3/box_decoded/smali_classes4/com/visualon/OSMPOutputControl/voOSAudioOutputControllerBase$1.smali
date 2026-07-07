.class Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$1;
.super Ljava/lang/Object;
.source "voOSAudioOutputControllerBase.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;

    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->access$000(Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;)Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;

    invoke-static {p1}, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->access$000(Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;)Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;

    move-result-object p1

    const-wide/32 v2, 0x11013

    invoke-interface {p1, v2, v3, v1}, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;->SetParam(JLjava/lang/Object;)I

    goto :goto_0

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;

    invoke-static {p1}, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->access$000(Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;)Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;

    move-result-object p1

    const-wide/32 v2, 0x11014

    invoke-interface {p1, v2, v3, v1}, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;->SetParam(JLjava/lang/Object;)I

    :goto_0
    return-void
.end method
