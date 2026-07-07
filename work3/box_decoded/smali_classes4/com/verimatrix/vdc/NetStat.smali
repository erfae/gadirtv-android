.class Lcom/verimatrix/vdc/NetStat;
.super Ljava/lang/Object;
.source "NetStat.java"


# instance fields
.field wifiBytesRx:J

.field wifiBytesTx:J

.field wifiMulticastPacketsRx:J

.field wifiMulticastPacketsTx:J

.field wifiUnicastPacketsRx:J

.field wifiUnicastPacketsTx:J

.field wwanBytesRx:J

.field wwanBytesTx:J

.field wwanMulticastPacketsRx:J

.field wwanMulticastPacketsTx:J

.field wwanUnicastPacketsRx:J

.field wwanUnicastPacketsTx:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/verimatrix/vdc/NetStat;->wifiUnicastPacketsTx:J

    .line 5
    iput-wide v0, p0, Lcom/verimatrix/vdc/NetStat;->wifiMulticastPacketsTx:J

    .line 6
    iput-wide v0, p0, Lcom/verimatrix/vdc/NetStat;->wifiBytesTx:J

    .line 7
    iput-wide v0, p0, Lcom/verimatrix/vdc/NetStat;->wifiUnicastPacketsRx:J

    .line 8
    iput-wide v0, p0, Lcom/verimatrix/vdc/NetStat;->wifiMulticastPacketsRx:J

    .line 9
    iput-wide v0, p0, Lcom/verimatrix/vdc/NetStat;->wifiBytesRx:J

    .line 10
    iput-wide v0, p0, Lcom/verimatrix/vdc/NetStat;->wwanUnicastPacketsTx:J

    .line 11
    iput-wide v0, p0, Lcom/verimatrix/vdc/NetStat;->wwanMulticastPacketsTx:J

    .line 12
    iput-wide v0, p0, Lcom/verimatrix/vdc/NetStat;->wwanBytesTx:J

    .line 13
    iput-wide v0, p0, Lcom/verimatrix/vdc/NetStat;->wwanUnicastPacketsRx:J

    .line 14
    iput-wide v0, p0, Lcom/verimatrix/vdc/NetStat;->wwanMulticastPacketsRx:J

    .line 15
    iput-wide v0, p0, Lcom/verimatrix/vdc/NetStat;->wwanBytesRx:J

    return-void
.end method
