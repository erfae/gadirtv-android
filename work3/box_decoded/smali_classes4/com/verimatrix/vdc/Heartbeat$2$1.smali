.class Lcom/verimatrix/vdc/Heartbeat$2$1;
.super Ljava/lang/Object;
.source "Heartbeat.java"

# interfaces
.implements Lcom/verimatrix/vdc/VolumeUtils$OnChangeVolumeLevelListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/Heartbeat$2;->onStatusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/verimatrix/vdc/Heartbeat$2;

.field final synthetic val$deviceConnected:Z


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/Heartbeat$2;Z)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iput-boolean p2, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->val$deviceConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLevelChanged(IZ)V
    .locals 13

    .line 235
    iget-object v0, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-object v0, v0, Lcom/verimatrix/vdc/Heartbeat$2;->val$c:Landroid/content/Context;

    invoke-static {v0}, Lcom/verimatrix/vdc/HeadsetUtils;->isHeadsetOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->val$deviceConnected:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 237
    :goto_1
    iget-object v0, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-object v0, v0, Lcom/verimatrix/vdc/Heartbeat$2;->val$c:Landroid/content/Context;

    invoke-static {v0}, Lcom/verimatrix/vdc/BatteryUtils;->getCurrentBatteryLevel(Landroid/content/Context;)I

    move-result v0

    .line 239
    iget-object v3, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-object v3, v3, Lcom/verimatrix/vdc/Heartbeat$2;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    invoke-static {v3}, Lcom/verimatrix/vdc/Heartbeat;->access$200(Lcom/verimatrix/vdc/Heartbeat;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-object v3, v3, Lcom/verimatrix/vdc/Heartbeat$2;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    .line 240
    invoke-static {v3}, Lcom/verimatrix/vdc/Heartbeat;->access$300(Lcom/verimatrix/vdc/Heartbeat;)I

    move-result v3

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-object v3, v3, Lcom/verimatrix/vdc/Heartbeat$2;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    .line 241
    invoke-static {v3}, Lcom/verimatrix/vdc/Heartbeat;->access$400(Lcom/verimatrix/vdc/Heartbeat;)I

    move-result v3

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 242
    :goto_3
    iget-object v4, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-object v4, v4, Lcom/verimatrix/vdc/Heartbeat$2;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    invoke-static {v4}, Lcom/verimatrix/vdc/Heartbeat;->access$200(Lcom/verimatrix/vdc/Heartbeat;)I

    move-result v4

    if-ne v4, p2, :cond_5

    iget-object v4, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-object v4, v4, Lcom/verimatrix/vdc/Heartbeat$2;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    .line 243
    invoke-static {v4}, Lcom/verimatrix/vdc/Heartbeat;->access$300(Lcom/verimatrix/vdc/Heartbeat;)I

    move-result v4

    if-ne v4, v0, :cond_5

    iget-object v4, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-object v4, v4, Lcom/verimatrix/vdc/Heartbeat$2;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    .line 244
    invoke-static {v4}, Lcom/verimatrix/vdc/Heartbeat;->access$400(Lcom/verimatrix/vdc/Heartbeat;)I

    move-result v4

    if-eq v4, p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v4, 0x1

    .line 246
    :goto_5
    iget-object v5, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-boolean v5, v5, Lcom/verimatrix/vdc/Heartbeat$2;->val$postAnyway:Z

    if-nez v5, :cond_6

    if-nez v3, :cond_6

    if-eqz v4, :cond_7

    .line 247
    :cond_6
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v3

    iget-object v4, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-object v5, v4, Lcom/verimatrix/vdc/Heartbeat$2;->val$c:Landroid/content/Context;

    iget-object v4, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-object v4, v4, Lcom/verimatrix/vdc/Heartbeat$2;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    invoke-static {v4}, Lcom/verimatrix/vdc/Heartbeat;->access$000(Lcom/verimatrix/vdc/Heartbeat;)Lcom/verimatrix/vdc/Configuration;

    move-result-object v6

    const/16 v7, 0x1a3

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x3

    new-array v10, v4, [J

    mul-int/lit8 v4, p1, 0x64

    div-int/lit8 v4, v4, 0xf

    int-to-long v11, v4

    aput-wide v11, v10, v1

    int-to-long v11, p2

    aput-wide v11, v10, v2

    const/4 v1, 0x2

    int-to-long v11, v0

    aput-wide v11, v10, v1

    iget-object v1, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-object v1, v1, Lcom/verimatrix/vdc/Heartbeat$2;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    .line 249
    invoke-static {v1}, Lcom/verimatrix/vdc/Heartbeat;->access$100(Lcom/verimatrix/vdc/Heartbeat;)[J

    move-result-object v11

    .line 247
    invoke-static/range {v5 .. v11}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 252
    :cond_7
    iget-object v1, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-object v1, v1, Lcom/verimatrix/vdc/Heartbeat$2;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    invoke-static {v1, p2}, Lcom/verimatrix/vdc/Heartbeat;->access$202(Lcom/verimatrix/vdc/Heartbeat;I)I

    .line 253
    iget-object p2, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-object p2, p2, Lcom/verimatrix/vdc/Heartbeat$2;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    invoke-static {p2, v0}, Lcom/verimatrix/vdc/Heartbeat;->access$302(Lcom/verimatrix/vdc/Heartbeat;I)I

    .line 254
    iget-object p2, p0, Lcom/verimatrix/vdc/Heartbeat$2$1;->this$1:Lcom/verimatrix/vdc/Heartbeat$2;

    iget-object p2, p2, Lcom/verimatrix/vdc/Heartbeat$2;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    invoke-static {p2, p1}, Lcom/verimatrix/vdc/Heartbeat;->access$402(Lcom/verimatrix/vdc/Heartbeat;I)I

    return-void
.end method
