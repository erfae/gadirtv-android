.class Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;
.super Ljava/util/TimerTask;
.source "StreamErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/StreamErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlowStartTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/StreamErrorHandler;


# direct methods
.method private constructor <init>(Lcom/verimatrix/vdc/StreamErrorHandler;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/verimatrix/vdc/StreamErrorHandler;Lcom/verimatrix/vdc/StreamErrorHandler$1;)V
    .locals 0

    .line 366
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;-><init>(Lcom/verimatrix/vdc/StreamErrorHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 369
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->slowStartTimersStarted:Z

    .line 370
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v0}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-boolean v0, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackWasStarted:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget-boolean v0, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->noServiceErrorSent:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v0}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v0, v0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-eqz v0, :cond_4

    .line 371
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->noServiceTime:J

    .line 372
    sget-object v0, Lcom/verimatrix/vdc/StreamErrorHandler$2;->$SwitchMap$com$verimatrix$vdc$Monitor$MediaType:[I

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Monitor$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 392
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1100(Lcom/verimatrix/vdc/StreamErrorHandler;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    iget-object v3, v1, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v4, 0xa3

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v8

    .line 392
    invoke-static/range {v2 .. v8}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto/16 :goto_0

    .line 387
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1100(Lcom/verimatrix/vdc/StreamErrorHandler;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    iget-object v3, v1, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v4, 0xa3

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v8

    .line 387
    invoke-static/range {v2 .. v8}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto/16 :goto_0

    .line 382
    :cond_1
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1100(Lcom/verimatrix/vdc/StreamErrorHandler;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    iget-object v3, v1, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v4, 0x187

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v8

    .line 382
    invoke-static/range {v2 .. v8}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 378
    :cond_2
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1100(Lcom/verimatrix/vdc/StreamErrorHandler;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    iget-object v3, v1, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v4, 0xfd

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v8

    .line 378
    invoke-static/range {v2 .. v8}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 374
    :cond_3
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1100(Lcom/verimatrix/vdc/StreamErrorHandler;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    iget-object v3, v1, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v4, 0x187

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v8

    .line 374
    invoke-static/range {v2 .. v8}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 396
    :goto_0
    invoke-static {}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlowStart: SlowStartTimer event added"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;->this$0:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-static {v0}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    iget-wide v1, v1, Lcom/verimatrix/vdc/Stream;->offset:J

    invoke-static {v0, v1, v2}, Lcom/verimatrix/vdc/StreamErrorHandler;->access$1200(Lcom/verimatrix/vdc/StreamErrorHandler;J)V

    :cond_4
    return-void
.end method
