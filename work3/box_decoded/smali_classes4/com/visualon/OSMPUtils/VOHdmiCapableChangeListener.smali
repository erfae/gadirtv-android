.class public Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;
.super Ljava/lang/Object;
.source "VOHdmiCapableChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$HdmiAudioPlugBroadcastReceiver;,
        Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;
    }
.end annotation


# static fields
.field private static final SUPPORT_ENCODING:Lcom/visualon/OSMPUtils/VOSupportEncoding;

.field private static final TAG:Ljava/lang/String; = "VOHdmiCapableChangeListener"


# instance fields
.field private final context:Landroid/content/Context;

.field private final listener:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lcom/visualon/OSMPUtils/VOSupportEncoding;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-direct {v0, v1, v3}, Lcom/visualon/OSMPUtils/VOSupportEncoding;-><init>([II)V

    sput-object v0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->SUPPORT_ENCODING:Lcom/visualon/OSMPUtils/VOSupportEncoding;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->listener:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;

    .line 38
    new-instance p1, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$HdmiAudioPlugBroadcastReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$HdmiAudioPlugBroadcastReceiver;-><init>(Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$1;)V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;)Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->listener:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;

    return-object p0
.end method


# virtual methods
.method public register()V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "VOHdmiCapableChangeListener"

    const-string v1, "Receiver has been registered!"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->listener:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;

    sget-object v1, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->SUPPORT_ENCODING:Lcom/visualon/OSMPUtils/VOSupportEncoding;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;->onHdmiConnectChanged(Lcom/visualon/OSMPUtils/VOSupportEncoding;)V

    return-void
.end method

.method public unregister()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "VOHdmiCapableChangeListener"

    const-string v1, "Receiver has been unregistered by Android Framework."

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
