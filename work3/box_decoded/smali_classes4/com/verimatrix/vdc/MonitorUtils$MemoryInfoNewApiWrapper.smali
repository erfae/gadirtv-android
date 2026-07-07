.class Lcom/verimatrix/vdc/MonitorUtils$MemoryInfoNewApiWrapper;
.super Ljava/lang/Object;
.source "MonitorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/MonitorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemoryInfoNewApiWrapper"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTotalMemory(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    .line 567
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method
