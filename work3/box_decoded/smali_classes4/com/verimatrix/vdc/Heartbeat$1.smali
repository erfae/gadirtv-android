.class Lcom/verimatrix/vdc/Heartbeat$1;
.super Landroid/telephony/PhoneStateListener;
.source "Heartbeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/Heartbeat;->addNetworkInfoEvent(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isListenerActive:Z

.field final synthetic this$0:Lcom/verimatrix/vdc/Heartbeat;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$connectionId:I


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/Heartbeat;Landroid/content/Context;I)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/verimatrix/vdc/Heartbeat$1;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    iput-object p2, p0, Lcom/verimatrix/vdc/Heartbeat$1;->val$c:Landroid/content/Context;

    iput p3, p0, Lcom/verimatrix/vdc/Heartbeat$1;->val$connectionId:I

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lcom/verimatrix/vdc/Heartbeat$1;->isListenerActive:Z

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 12

    .line 198
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 199
    iget-boolean v0, p0, Lcom/verimatrix/vdc/Heartbeat$1;->isListenerActive:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/verimatrix/vdc/Heartbeat$1;->isListenerActive:Z

    .line 201
    sget-object v1, Lcom/verimatrix/vdc/Heartbeat$SignalType;->UNKNOWN:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Heartbeat$SignalType;->getAppId()I

    move-result v1

    .line 202
    iget-object v2, p0, Lcom/verimatrix/vdc/Heartbeat$1;->val$c:Landroid/content/Context;

    invoke-static {v2}, Lcom/verimatrix/vdc/MonitorUtils;->getConnectionSubType(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/verimatrix/vdc/Heartbeat$SignalType;->getSignalTypeId(I)I

    move-result v1

    .line 208
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 209
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    const/16 v4, 0x63

    if-eq v2, v4, :cond_1

    .line 210
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x71

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p1

    .line 218
    :goto_0
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v2

    iget-object v4, p0, Lcom/verimatrix/vdc/Heartbeat$1;->val$c:Landroid/content/Context;

    iget-object v5, p0, Lcom/verimatrix/vdc/Heartbeat$1;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    invoke-static {v5}, Lcom/verimatrix/vdc/Heartbeat;->access$000(Lcom/verimatrix/vdc/Heartbeat;)Lcom/verimatrix/vdc/Configuration;

    move-result-object v5

    const/16 v6, 0x1a2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x3

    new-array v9, v9, [J

    iget v10, p0, Lcom/verimatrix/vdc/Heartbeat$1;->val$connectionId:I

    int-to-long v10, v10

    aput-wide v10, v9, v0

    const/4 v0, 0x1

    .line 219
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-long v10, p1

    aput-wide v10, v9, v0

    int-to-long v0, v1

    aput-wide v0, v9, v3

    iget-object p1, p0, Lcom/verimatrix/vdc/Heartbeat$1;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    invoke-static {p1}, Lcom/verimatrix/vdc/Heartbeat;->access$100(Lcom/verimatrix/vdc/Heartbeat;)[J

    move-result-object v10

    .line 218
    invoke-static/range {v4 .. v10}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 221
    :cond_3
    iget-object p1, p0, Lcom/verimatrix/vdc/Heartbeat$1;->val$c:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/verimatrix/vdc/MonitorUtils;->unsubscribeMobileSignalStrength(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V

    return-void
.end method
