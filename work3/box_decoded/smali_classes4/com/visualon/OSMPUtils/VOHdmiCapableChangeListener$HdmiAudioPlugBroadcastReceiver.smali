.class final Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$HdmiAudioPlugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VOHdmiCapableChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiAudioPlugBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$HdmiAudioPlugBroadcastReceiver;-><init>(Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->access$100(Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;)Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;

    move-result-object p1

    new-instance v0, Lcom/visualon/OSMPUtils/VOSupportEncoding;

    const-string v1, "android.media.extra.ENCODINGS"

    .line 85
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "android.media.extra.AUDIO_PLUG_STATE"

    .line 86
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {v0, v1, p2}, Lcom/visualon/OSMPUtils/VOSupportEncoding;-><init>([II)V

    .line 84
    invoke-interface {p1, v0}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;->onHdmiConnectChanged(Lcom/visualon/OSMPUtils/VOSupportEncoding;)V

    return-void
.end method
