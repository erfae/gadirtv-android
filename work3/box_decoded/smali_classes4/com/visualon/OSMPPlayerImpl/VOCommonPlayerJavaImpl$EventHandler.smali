.class Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;
.super Landroid/os/Handler;
.source "VOCommonPlayerJavaImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Landroid/os/Looper;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    .line 434
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 440
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$100(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->isAvailable()Z

    move-result v2

    const-string v3, "@@@VOCommonPlayerJavaImpl"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "vomeplayer went away with unhandled events"

    .line 441
    invoke-static {v3, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 445
    :cond_0
    sget-boolean v2, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v2, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Fail to load JNI library"

    .line 446
    invoke-static {v3, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 450
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    new-array v2, v5, [Ljava/lang/Object;

    .line 451
    iget v6, v1, Landroid/os/Message;->what:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v6, "handleMessage id:0x%08x"

    invoke-static {v3, v6, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    :cond_2
    iget v2, v1, Landroid/os/Message;->what:I

    const v6, -0xf0ffffe

    const/4 v7, 0x2

    if-ne v2, v6, :cond_6

    .line 454
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v6, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_CUSTOMER_TAG:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    iget v8, v1, Landroid/os/Message;->arg1:I

    iget v9, v1, Landroid/os/Message;->arg2:I

    iget-object v10, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v6, v8, v9, v10}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 457
    iget v2, v1, Landroid/os/Message;->arg1:I

    sget-object v6, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->VO_OSMP_SRC_CUSTOMERTAGID_TIMEDTAG:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    invoke-virtual {v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->getValue()I

    move-result v6

    if-ne v2, v6, :cond_3

    .line 458
    new-instance v2, Ljava/lang/String;

    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 459
    :cond_3
    iget v2, v1, Landroid/os/Message;->arg1:I

    sget-object v6, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->VO_OSMP_SRC_CUSTOMERTAG_DASH_EMSG_BOX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    invoke-virtual {v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->getValue()I

    move-result v6

    if-ne v2, v6, :cond_4

    .line 460
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v2, ""

    .line 462
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v6

    if-eqz v6, :cond_5

    new-array v6, v7, [Ljava/lang/Object;

    .line 463
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 465
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    aput-object v2, v6, v5

    const-string v1, "messageCustomerTag sendVOEvent VO_OSMP_CB_EVENT_ID.VO_OSMP_SRC_CB_CUSTOMER_TAG timestamp is %d, %s"

    .line 463
    invoke-static {v3, v1, v6}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void

    .line 468
    :cond_6
    iget v2, v1, Landroid/os/Message;->what:I

    sget-object v6, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_START_DOWNLOAD:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    .line 469
    invoke-virtual {v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v6

    if-ne v2, v6, :cond_7

    .line 470
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_START_DOWNLOAD:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v5, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 473
    :cond_7
    iget v2, v1, Landroid/os/Message;->what:I

    sget-object v6, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_DOWNLOAD_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    .line 474
    invoke-virtual {v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v6

    if-ne v2, v6, :cond_8

    .line 475
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_DOWNLOAD_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v5, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 478
    :cond_8
    iget v2, v1, Landroid/os/Message;->what:I

    const v6, -0xf0ffff7

    if-ne v2, v6, :cond_9

    .line 479
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v2, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$300(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Landroid/view/View;)V

    return-void

    .line 482
    :cond_9
    iget v2, v1, Landroid/os/Message;->what:I

    const v6, -0xf0ffff1

    if-ne v2, v6, :cond_c

    .line 484
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPRender/voAudioRender;

    move-result-object v2

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/visualon/OSMPRender/voAudioRender;->setBluetoothStatus(Z)V

    .line 485
    invoke-static {}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$500()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPRender/voAudioRender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visualon/OSMPRender/voAudioRender;->DSPClockEnable()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$600(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 486
    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$600(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPosition()J

    move-result-wide v1

    .line 487
    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$600(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPosition(J)J

    :cond_b
    return-void

    .line 492
    :cond_c
    iget v2, v1, Landroid/os/Message;->what:I

    const v6, -0x7fffffe6

    if-ne v2, v6, :cond_f

    .line 493
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$700(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Z

    move-result v2

    if-nez v2, :cond_e

    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_d

    goto :goto_1

    :cond_d
    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "OnAudioRenderFailed ,m_bForcePureVideo : false "

    .line 500
    invoke-static {v3, v4, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 494
    :cond_e
    :goto_1
    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    const v2, 0x10052

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "OnAudioRenderFailed , VOOSMP_CB_Audio_Render_Failed "

    .line 495
    invoke-static {v3, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v1, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$702(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Z)Z

    return-void

    .line 503
    :cond_f
    iget v2, v1, Landroid/os/Message;->what:I

    const v6, -0x7fffffe5

    if-eq v2, v6, :cond_4c

    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x48

    if-ne v2, v6, :cond_10

    .line 504
    invoke-static {}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$800()Z

    move-result v2

    if-nez v2, :cond_4c

    iget v2, v1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_10

    goto/16 :goto_8

    .line 511
    :cond_10
    iget v2, v1, Landroid/os/Message;->what:I

    const v6, -0xf0ffff3

    if-ne v2, v6, :cond_11

    return-void

    .line 514
    :cond_11
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x2001

    if-ne v2, v6, :cond_12

    return-void

    .line 516
    :cond_12
    iget v2, v1, Landroid/os/Message;->what:I

    const v6, 0x5000004

    if-ne v2, v6, :cond_15

    .line 517
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$900(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    move-result-object v2

    if-eqz v2, :cond_13

    iget v2, v1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_13

    .line 518
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$900(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;->onVOAnalyticsEvent()V

    .line 519
    :cond_13
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1000(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    move-result-object v2

    if-eqz v2, :cond_14

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_14

    .line 520
    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1000(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;->onVOAnalyticsEvent()V

    :cond_14
    return-void

    .line 522
    :cond_15
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v6, 0xf

    if-ne v2, v6, :cond_16

    .line 523
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1100(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPUtils/voVideoViewController;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 524
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1100(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPUtils/voVideoViewController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/visualon/OSMPUtils/voVideoViewController;->handleExternalMessage(Landroid/os/Message;)V

    goto/16 :goto_7

    .line 525
    :cond_16
    iget v2, v1, Landroid/os/Message;->what:I

    const v6, 0x3000005

    if-ne v2, v6, :cond_17

    .line 526
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    const/16 v5, 0x60

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v5, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Receive VOOSMP_SRC_CB_Output_Control_Settings, SetParam VOOSMP_PID_OUTPUT_CONTROL_SETTINGS."

    .line 528
    invoke-static {v3, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 531
    :cond_17
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x25

    if-ne v2, v6, :cond_21

    .line 533
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_18

    new-array v2, v7, [Ljava/lang/Object;

    .line 534
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 536
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    iget v6, v1, Landroid/os/Message;->arg2:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v6, "Receive VOOSMP_CB_Block_Output, output control type is 0x%X, value is %d"

    .line 534
    invoke-static {v3, v6, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    :cond_18
    iget v2, v1, Landroid/os/Message;->arg1:I

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    .line 540
    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v6

    and-int/2addr v2, v6

    if-lez v2, :cond_19

    iget v2, v1, Landroid/os/Message;->arg1:I

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ALL_DISPLAY:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    .line 542
    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v6

    and-int/2addr v2, v6

    if-nez v2, :cond_19

    .line 543
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    move-result-object v2

    if-eqz v2, :cond_4a

    iget v2, v1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_4a

    .line 544
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->closeMiracast()V

    goto/16 :goto_7

    .line 546
    :cond_19
    iget v2, v1, Landroid/os/Message;->arg1:I

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ALL_DISPLAY:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    .line 547
    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v6

    and-int/2addr v2, v6

    if-gtz v2, :cond_1a

    iget v2, v1, Landroid/os/Message;->arg1:I

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    .line 549
    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v6

    and-int/2addr v2, v6

    if-lez v2, :cond_4a

    .line 550
    :cond_1a
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1300(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_20

    iget v2, v1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_20

    .line 551
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 552
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    new-instance v5, Landroid/view/View;

    iget-object v6, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v6}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1500(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v5}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1402(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Landroid/view/View;)Landroid/view/View;

    .line 553
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Landroid/view/View;

    move-result-object v2

    const/high16 v5, -0x1000000

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 556
    :cond_1b
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 557
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 559
    iget-object v6, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v6}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1300(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 560
    instance-of v7, v6, Landroid/widget/RelativeLayout;

    if-nez v7, :cond_1d

    instance-of v7, v6, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_1c

    goto :goto_2

    :cond_1c
    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "Receive VOOSMP_CB_Block_Output, Current playback view\'s parent layout isn\'t RelativeLayout or FrameLayout, don\'t implement block all display function."

    .line 569
    invoke-static {v3, v4, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 561
    :cond_1d
    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 562
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_7

    :cond_1e
    if-eqz v2, :cond_1f

    .line 565
    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 566
    :cond_1f
    check-cast v6, Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v6, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    .line 572
    :cond_20
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1300(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4a

    iget v2, v1, Landroid/os/Message;->arg2:I

    if-ne v2, v5, :cond_4a

    .line 573
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1600(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)V

    goto/16 :goto_7

    .line 578
    :cond_21
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x2a

    if-eq v2, v6, :cond_49

    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x2e

    if-ne v2, v6, :cond_22

    goto/16 :goto_6

    .line 584
    :cond_22
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x21

    if-ne v2, v6, :cond_23

    .line 585
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$100(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    move-result-object v2

    const-wide/16 v3, 0x72

    .line 586
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 585
    invoke-virtual {v2, v3, v4, v5}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    goto/16 :goto_7

    .line 587
    :cond_23
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x12

    if-ne v2, v6, :cond_24

    .line 588
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 589
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_ADAPTIVE_STREAMING_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_MEDIATYPE_CHANGE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    .line 591
    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->getValue()I

    move-result v4

    iget v5, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 589
    invoke-static {v2, v3, v4, v5, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 595
    :cond_24
    iget v2, v1, Landroid/os/Message;->what:I

    const v6, 0x2000030

    const/16 v8, 0xd

    const/4 v9, 0x5

    const/4 v10, 0x6

    const/4 v11, 0x0

    if-ne v2, v6, :cond_2c

    .line 596
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v10, :cond_26

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_CHUNK_DOWNLOADOK"

    .line 597
    invoke-static {v3, v5, v2}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_25

    .line 601
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/visualon/OSMPUtils/voOSChunkInfo;

    .line 602
    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;

    move-object v5, v2

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Type()I

    move-result v6

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->RootUrl()Ljava/lang/String;

    move-result-object v7

    .line 603
    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Url()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->StartTime()J

    move-result-wide v9

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Duration()J

    move-result-wide v11

    .line 604
    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->TimeScale()J

    move-result-wide v13

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->ErrorType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->getValue()I

    move-result v15

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->ErrorCode()I

    move-result v16

    .line 605
    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->ChunkID()J

    move-result-wide v17

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->DownloadTime()J

    move-result-wide v19

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->DownloadSize()I

    move-result v21

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Bitrate()I

    move-result v22

    invoke-direct/range {v5 .. v22}, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;-><init>(ILjava/lang/String;Ljava/lang/String;JJJIIJJII)V

    move-object v11, v2

    .line 607
    :cond_25
    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_ADAPTIVE_STREAMING_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_CHUNK_DOWNLOADOK:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    .line 609
    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->getValue()I

    move-result v3

    .line 607
    invoke-static {v1, v2, v3, v4, v11}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 611
    :cond_26
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v9, :cond_28

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_CHUNK_DROPPED"

    .line 612
    invoke-static {v3, v5, v2}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_27

    .line 616
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/visualon/OSMPUtils/voOSChunkInfo;

    .line 617
    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;

    move-object v5, v2

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Type()I

    move-result v6

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->RootUrl()Ljava/lang/String;

    move-result-object v7

    .line 618
    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Url()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->StartTime()J

    move-result-wide v9

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Duration()J

    move-result-wide v11

    .line 619
    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->TimeScale()J

    move-result-wide v13

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->ErrorType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->getValue()I

    move-result v15

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->ErrorCode()I

    move-result v16

    .line 620
    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->ChunkID()J

    move-result-wide v17

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->DownloadTime()J

    move-result-wide v19

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->DownloadSize()I

    move-result v21

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Bitrate()I

    move-result v22

    invoke-direct/range {v5 .. v22}, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;-><init>(ILjava/lang/String;Ljava/lang/String;JJJIIJJII)V

    move-object v11, v2

    .line 622
    :cond_27
    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_ADAPTIVE_STREAMING_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_CHUNK_DROPPED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    .line 624
    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->getValue()I

    move-result v3

    .line 622
    invoke-static {v1, v2, v3, v4, v11}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 627
    :cond_28
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v8, :cond_2a

    .line 629
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_29

    .line 630
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/visualon/OSMPUtils/voOSSessionDataImpl;

    .line 631
    new-instance v11, Lcom/visualon/OSMPPlayerImpl/VOOSMPSessionDataImpl;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSessionDataImpl;-><init>(Ljava/util/ArrayList;)V

    .line 633
    :cond_29
    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_ADAPTIVE_STREAMING_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_SESSION_DATA:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    .line 634
    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->getValue()I

    move-result v3

    .line 633
    invoke-static {v1, v2, v3, v4, v11}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 637
    :cond_2a
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4a

    .line 639
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2b

    .line 640
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;

    .line 641
    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getSZRootUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getSZUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getSZNewUrl()Ljava/lang/String;

    move-result-object v8

    .line 642
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getData()[B

    move-result-object v9

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getDataSize()I

    move-result v10

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getPlaylistType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;->getValue()I

    move-result v11

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getErrorType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->getValue()I

    move-result v12

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getErrorCode()I

    move-result v13

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIIII)V

    move-object v11, v2

    .line 644
    :cond_2b
    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_ADAPTIVE_STREAMING_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_PLAYLIST_DOWNLOADOK:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    .line 645
    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->getValue()I

    move-result v3

    .line 644
    invoke-static {v1, v2, v3, v4, v11}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 649
    :cond_2c
    iget v2, v1, Landroid/os/Message;->what:I

    const v6, 0x2000050

    const/4 v12, 0x4

    const/4 v13, 0x3

    if-ne v2, v6, :cond_32

    .line 650
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eq v2, v5, :cond_2f

    if-eq v2, v7, :cond_2f

    if-eq v2, v13, :cond_2f

    if-eq v2, v12, :cond_2d

    goto/16 :goto_7

    .line 672
    :cond_2d
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2e

    .line 673
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;

    .line 674
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getSZRootUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getSZUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getSZNewUrl()Ljava/lang/String;

    move-result-object v8

    .line 675
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getData()[B

    move-result-object v9

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getDataSize()I

    move-result v10

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getPlaylistType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;->getValue()I

    move-result v11

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getErrorType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->getValue()I

    move-result v12

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->getErrorCode()I

    move-result v13

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIIII)V

    move-object v11, v3

    .line 677
    :cond_2e
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_ADAPTIVE_STREAMING_WARNING:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3, v1, v4, v11}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 654
    :cond_2f
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_30

    new-array v2, v5, [Ljava/lang/Object;

    .line 655
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 656
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v5, "VOOSMP_SRC_CB_Adaptive_Stream_Warning :%d"

    .line 655
    invoke-static {v3, v5, v2}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    :cond_30
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_31

    .line 660
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/visualon/OSMPUtils/voOSChunkInfo;

    .line 661
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;

    move-object v5, v3

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Type()I

    move-result v6

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->RootUrl()Ljava/lang/String;

    move-result-object v7

    .line 662
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Url()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->StartTime()J

    move-result-wide v9

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Duration()J

    move-result-wide v11

    .line 663
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->TimeScale()J

    move-result-wide v13

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->ErrorType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    move-result-object v15

    invoke-virtual {v15}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->getValue()I

    move-result v15

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->ErrorCode()I

    move-result v16

    .line 664
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->ChunkID()J

    move-result-wide v17

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->DownloadTime()J

    move-result-wide v19

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->DownloadSize()I

    move-result v21

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Bitrate()I

    move-result v22

    invoke-direct/range {v5 .. v22}, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;-><init>(ILjava/lang/String;Ljava/lang/String;JJJIIJJII)V

    move-object v11, v3

    .line 666
    :cond_31
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_ADAPTIVE_STREAMING_WARNING:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3, v1, v4, v11}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 681
    :cond_32
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x1c

    if-ne v2, v6, :cond_33

    .line 682
    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPPCMBufferImpl;

    iget v3, v1, Landroid/os/Message;->arg1:I

    int-to-long v5, v3

    iget v3, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v2, v5, v6, v3, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPPCMBufferImpl;-><init>(JI[B)V

    .line 684
    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_PCM_OUTPUT:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-static {v1, v3, v4, v4, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 686
    :cond_33
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x44

    if-ne v2, v6, :cond_34

    .line 687
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_MEDIACODEC_CRYPTOEXCEPTION:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v5, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 689
    :cond_34
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x46

    if-ne v2, v6, :cond_35

    .line 690
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_MEDIACODEC_ILLEGAL_STATE_EXCEPTION:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v5, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 692
    :cond_35
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x19

    if-ne v2, v6, :cond_3c

    .line 693
    iget v2, v1, Landroid/os/Message;->arg1:I

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_EVENT_PIC_TIMING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    .line 694
    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->getValue()I

    move-result v6

    const-string v8, "VO_OSMP_CB_SEI_INFO event, SEI type, param1 is %d"

    if-ne v2, v6, :cond_38

    .line 696
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_36

    new-array v2, v5, [Ljava/lang/Object;

    .line 697
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 699
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 697
    invoke-static {v3, v8, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    :cond_36
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_37

    .line 704
    new-instance v11, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;

    invoke-direct {v11, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;-><init>(Lcom/visualon/OSMPUtils/voOSSEIPicTiming;)V

    .line 707
    :cond_37
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_SEI_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3, v1, v4, v11}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 711
    :cond_38
    iget v2, v1, Landroid/os/Message;->arg1:I

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_USER_DATA_UNREGISTERED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    .line 712
    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->getValue()I

    move-result v6

    if-ne v2, v6, :cond_4a

    .line 714
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_39

    .line 715
    new-instance v11, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;

    invoke-direct {v11}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;-><init>()V

    .line 716
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    invoke-virtual {v11, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->setData(Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;)V

    :cond_39
    if-nez v11, :cond_3a

    .line 719
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_3b

    new-array v2, v5, [Ljava/lang/Object;

    .line 720
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 722
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 720
    invoke-static {v3, v8, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 726
    :cond_3a
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_3b

    new-array v2, v13, [Ljava/lang/Object;

    .line 727
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 729
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {v11}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->getFieldCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 730
    invoke-virtual {v11, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->getFieldLength(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    const-string v5, "VO_OSMP_CB_SEI_INFO event, SEI type, param1 = %d,FieldCount = %d, FieldLength = %d"

    .line 727
    invoke-static {v3, v5, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    :cond_3b
    :goto_3
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_SEI_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3, v1, v4, v11}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 737
    :cond_3c
    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, v8, :cond_3e

    .line 738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mbSeeking  mAudioRender "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v6}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPRender/voAudioRender;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v6}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPRender/voAudioRender;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 740
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPRender/voAudioRender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPRender/voAudioRender;->setSeekComplete()V

    .line 742
    :cond_3d
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_4a

    new-array v2, v7, [Ljava/lang/Object;

    .line 743
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 745
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    iget v4, v1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    const-string v4, "java VOOSMP_CB_SeekComplete, param1 is %d, param2 is :%d vo_ads_manager"

    .line 743
    invoke-static {v3, v4, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 749
    :cond_3e
    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, v5, :cond_3f

    goto/16 :goto_7

    .line 751
    :cond_3f
    iget v2, v1, Landroid/os/Message;->what:I

    if-eq v2, v10, :cond_48

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, v12, :cond_40

    goto/16 :goto_5

    .line 757
    :cond_40
    iget v2, v1, Landroid/os/Message;->what:I

    if-eq v2, v9, :cond_47

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, v13, :cond_41

    goto/16 :goto_4

    .line 765
    :cond_41
    iget v2, v1, Landroid/os/Message;->what:I

    const v5, 0x2000010

    if-ne v2, v5, :cond_42

    .line 766
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_4a

    .line 767
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$100(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeClose()I

    goto/16 :goto_7

    .line 771
    :cond_42
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v5, 0x16

    if-ne v2, v5, :cond_43

    goto/16 :goto_7

    .line 775
    :cond_43
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v5, 0x47

    if-ne v2, v5, :cond_44

    .line 776
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_RECOVER_NORMALPLAYBACK:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v5, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-void

    .line 779
    :cond_44
    iget v2, v1, Landroid/os/Message;->what:I

    sget-object v5, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_SERVER_TIMEOFFSET:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v5}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v5

    if-ne v2, v5, :cond_45

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VO_OSMP_SRC_CB_SERVER_TIMEOFFSET: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 782
    :cond_45
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v5, 0x2003

    if-ne v2, v5, :cond_4a

    .line 783
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_46

    .line 784
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$600(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPosition()J

    move-result-wide v5

    .line 785
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$600(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    move-result-object v2

    const-wide/16 v7, 0x1f4

    add-long/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPosition(J)J

    .line 787
    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VOOSMP_CB_Auido_Write_Error , msg.arg1: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 759
    :cond_47
    :goto_4
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPRender/voAudioRender;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 760
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPRender/voAudioRender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPRender/voAudioRender;->startBuffering()V

    .line 761
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPRender/voAudioRender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPRender/voAudioRender;->resetAudioDSPClock()V

    goto :goto_7

    .line 753
    :cond_48
    :goto_5
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPRender/voAudioRender;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 754
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPRender/voAudioRender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPRender/voAudioRender;->stopBuffering()V

    goto :goto_7

    .line 581
    :cond_49
    :goto_6
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1100(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPUtils/voVideoViewController;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 582
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1100(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPUtils/voVideoViewController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/visualon/OSMPUtils/voVideoViewController;->handleExternalMessage(Landroid/os/Message;)V

    .line 791
    :cond_4a
    :goto_7
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$1700(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 792
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->valueOf(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v5, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    :cond_4b
    return-void

    .line 505
    :cond_4c
    :goto_8
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$600(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPosition()J

    move-result-wide v5

    .line 506
    iget v2, v1, Landroid/os/Message;->arg1:I

    int-to-long v7, v2

    add-long/2addr v5, v7

    .line 507
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->access$600(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPosition(J)J

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnPlaybackHeadPosError , notify VOMP_CB_NeedToForceSeek !  SeekOffset :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
