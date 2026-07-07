.class public Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;
.super Ljava/lang/Object;
.source "voOSHDMIStateCheck.java"

# interfaces
.implements Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;,
        Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;
    }
.end annotation


# static fields
.field public static final HDMISTATE_CONNECT:I = 0x1

.field public static final HDMISTATE_DISCONNECT:I = 0x0

.field public static final HDMISTATE_INITED:I = 0x800

.field private static final TAG:Ljava/lang/String; = "HDMIStateCheck"


# instance fields
.field protected m_Context:Landroid/content/Context;

.field protected m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

.field private m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

.field protected m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field protected m_OnHDMIStateChangeListener:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

.field protected m_ifReceiveIntent:Landroid/content/IntentFilter;

.field protected m_nHDMIState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    .line 161
    sget-object v1, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    .line 162
    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_OnHDMIStateChangeListener:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    .line 163
    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    const/4 v1, -0x1

    .line 165
    iput v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_nHDMIState:I

    .line 328
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "HDMIStateCheck"

    if-eqz v1, :cond_0

    .line 329
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    invoke-direct {v0, p0, v1}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;-><init>(Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    .line 330
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Looper.myLooper()"

    .line 331
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 333
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 334
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    invoke-direct {v0, p0, v1}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;-><init>(Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    .line 335
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "getMainLooper()"

    .line 336
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 339
    :cond_1
    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    .line 342
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    .line 345
    invoke-direct {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->checkManufacturerAndModel()V

    return-void
.end method

.method private checkManufacturerAndModel()V
    .locals 5

    .line 548
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 549
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 552
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 558
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->StandardVersion4:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    goto :goto_0

    :cond_0
    const/16 v4, 0xa

    if-le v2, v4, :cond_1

    if-ge v2, v3, :cond_1

    .line 561
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->StandardVersion3:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    goto :goto_0

    :cond_1
    const-string v3, "Motorola"

    .line 563
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const/16 v0, 0x8

    if-le v2, v0, :cond_7

    if-gt v2, v4, :cond_7

    .line 565
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->Motorola_V2_3:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    goto :goto_0

    :cond_2
    const-string v2, "Sony"

    .line 568
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 569
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SE_LTs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    goto :goto_0

    :cond_3
    const-string v2, "htc"

    .line 571
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "PC36100"

    .line 572
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 573
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->HTC_PC36100:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    goto :goto_0

    :cond_4
    const-string v1, "LGE"

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 577
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->LG_P920:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    goto :goto_0

    :cond_5
    const-string v1, "Sharp"

    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 580
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SHARP_SHs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    goto :goto_0

    .line 583
    :cond_6
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method protected InitCheck_v3()V
    .locals 3

    .line 592
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/switch/hdmi/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 597
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 599
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 600
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 604
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 612
    :catch_0
    :cond_0
    invoke-virtual {p0, v2}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->checkHDMIState(I)V

    return-void
.end method

.method public Release()V
    .locals 4

    const/4 v0, 0x0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    sget-object v2, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    sget-object v2, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SHARP_SHs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    if-eq v1, v2, :cond_0

    .line 359
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->setCheckHDMIStateInterface(Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 364
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 365
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "HDMIStateCheck"

    const-string v3, "HDMI Check module release occur error! error message is %s"

    invoke-static {v1, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    .line 370
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    if-eqz v1, :cond_2

    .line 371
    invoke-virtual {v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 373
    :cond_2
    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_OnHDMIStateChangeListener:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    return-void
.end method

.method public checkHDMIState(I)V
    .locals 5

    .line 624
    iget v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_nHDMIState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 625
    iput p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_nHDMIState:I

    const/16 v0, 0x800

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return-void

    .line 632
    :cond_1
    iput p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_nHDMIState:I

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 641
    :goto_0
    iget-object v3, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    if-eqz v3, :cond_3

    .line 643
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 644
    iget-object v4, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    invoke-virtual {v4, v3}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 645
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 646
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    const-string p1, "HDMIStateCheck"

    const-string v0, "sendMessage HDMI status, ID is %d, status is %d."

    invoke-static {p1, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method protected excuteStart()V
    .locals 3

    .line 202
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    invoke-direct {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;-><init>(Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;)V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    .line 203
    invoke-virtual {v0, p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->setCheckHDMIStateInterface(Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;)V

    .line 208
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$1;->$SwitchMap$com$visualon$OSMPOutputControl$voOSHDMIDeviceType:[I

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    invoke-virtual {v1}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 268
    :pswitch_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 257
    :pswitch_1
    invoke-virtual {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->initSharpHDMIState()V

    .line 258
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    const-string v1, "HDMI_CONNECTED"

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    const-string v1, "HDMI_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 249
    :pswitch_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HDMI_PLUG"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 241
    :pswitch_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HTC.HEADSET_PLUG"

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 232
    :pswitch_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    const-string v1, "com.sonyericsson.intent.action.HDMI_EVENT"

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 223
    :pswitch_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    const-string v1, "com.motorola.intent.action.externaldisplaystate"

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 210
    :pswitch_6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HDMI_AUDIO_PLUG"

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->InitCheck_v3()V

    .line 279
    :cond_0
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI module register completed, ready to receive HDMI broadcast, HDMI model is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "HDMIStateCheck"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
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

.method protected initSharpHDMIState()V
    .locals 7

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    const-string v1, "jp.co.sharp.android.hdmi"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string v1, "jp.co.sharp.android.hdmi.service.external.HDMIState"

    .line 295
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x1

    .line 293
    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getHDMIState"

    const/4 v3, 0x0

    .line 297
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Class;

    .line 299
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 300
    iget-object v4, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    aput-object v4, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 304
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->checkHDMIState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected isDeviceSupportMultiGraphicsAnd1080p()Z
    .locals 9

    .line 384
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/graphics/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 389
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 391
    array-length v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    return v2

    .line 393
    :cond_1
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v5, v1, v2

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/modes"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 401
    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 403
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 406
    :cond_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string v8, "1280"

    .line 407
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v4, 0x1

    .line 413
    :cond_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v4

    :cond_6
    :goto_2
    return v2
.end method

.method public isHDMIConnected()Z
    .locals 2

    .line 530
    iget v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_nHDMIState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isLGHDMISupported()Z
    .locals 5

    const/4 v0, 0x0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.media.HDMINative"

    .line 451
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v3, 0x1

    .line 450
    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "nativeIsHdmiEnabled"

    const/4 v4, 0x0

    .line 453
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 454
    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method protected isSharpHDMISupported()Z
    .locals 3

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    const-string v1, "jp.co.sharp.android.hdmi"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .locals 6

    .line 483
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    sget-object v1, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 486
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/switch/hdmi/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 494
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    sget-object v3, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SE_LTs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    if-ne v1, v3, :cond_2

    .line 495
    invoke-virtual {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->isDeviceSupportMultiGraphicsAnd1080p()Z

    move-result v0

    return v0

    .line 497
    :cond_2
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    sget-object v3, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->LG_P920:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    if-ne v1, v3, :cond_3

    .line 498
    invoke-virtual {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->isLGHDMISupported()Z

    move-result v0

    return v0

    .line 500
    :cond_3
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    sget-object v3, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SHARP_SHs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    if-ne v1, v3, :cond_4

    .line 501
    invoke-virtual {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->isSharpHDMISupported()Z

    move-result v0

    return v0

    .line 504
    :cond_4
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/drm/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 510
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 512
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v4, v1, v2

    const-string v5, "HDMI"

    .line 513
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    return v0
.end method

.method public restart(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setOnHDMIStateChangeListener(Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_OnHDMIStateChangeListener:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    .line 540
    invoke-virtual {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->excuteStart()V

    return-void
.end method
