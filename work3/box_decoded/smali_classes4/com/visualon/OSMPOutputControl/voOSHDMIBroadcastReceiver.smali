.class public Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "voOSHDMIBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HDMIBroadcastReceiver"


# instance fields
.field protected m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field protected m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    .line 41
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    return-void
.end method

.method private receiveHTCPC36100Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "android.intent.action.HTC.HEADSET_PLUG"

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "name"

    .line 132
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Headset"

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "state"

    .line 140
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x800

    if-ne p1, p2, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 142
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    invoke-interface {p2, p1}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    :cond_4
    return-void
.end method

.method private receiveLGP920Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "android.intent.action.HDMI_PLUG"

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "name"

    .line 155
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "tv"

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "state"

    .line 163
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 165
    iget-object p2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    invoke-interface {p2, p1}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    :cond_3
    return-void
.end method

.method private receiveMotorola_V2_3Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.motorola.intent.action.externaldisplaystate"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "hdmi"

    .line 97
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 99
    iget-object p2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    invoke-interface {p2, p1}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    :cond_2
    return-void
.end method

.method private receiveSELTsBroadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.sonyericsson.intent.action.HDMI_EVENT"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "com.sonyericsson.intent.extra.HDMI_STATE"

    .line 112
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 114
    iget-object p2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string p2, "HDMI_IN_USE"

    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 119
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    invoke-interface {p2, p1}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    :cond_3
    return-void
.end method

.method private receiveSharpSHsBroadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 176
    iget-object p2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "HDMI_CONNECTED"

    .line 179
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 180
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    goto :goto_0

    :cond_1
    const-string p2, "HDMI_DISCONNECTED"

    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 183
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private receiveVersion3Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "android.intent.action.HDMI_AUDIO_PLUG"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "name"

    .line 195
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hdmi"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "state"

    .line 203
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nState = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HDMIBroadcastReceiver"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    invoke-interface {p2, p1}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    :cond_3
    return-void
.end method

.method private receiveVersion4Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "android.intent.action.HDMI_PLUGGED"

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 224
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "state"

    .line 227
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 230
    iget-object p2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    invoke-interface {p2, p1}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 57
    :goto_0
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$1;->$SwitchMap$com$visualon$OSMPOutputControl$voOSHDMIDeviceType:[I

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    invoke-virtual {v1}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 77
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->receiveVersion4Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 74
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->receiveVersion3Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 71
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->receiveSharpSHsBroadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 68
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->receiveLGP920Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 65
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->receiveHTCPC36100Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 62
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->receiveSELTsBroadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 59
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->receiveMotorola_V2_3Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCheckHDMIStateInterface(Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    return-void
.end method
