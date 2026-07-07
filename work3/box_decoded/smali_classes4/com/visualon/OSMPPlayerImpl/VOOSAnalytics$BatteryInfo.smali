.class Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;
.super Ljava/lang/Object;
.source "VOOSAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryInfo"
.end annotation


# static fields
.field private static final VOANA_BATTERY_PLUGGED:I = 0x1

.field private static final VOANA_BATTERY_UNKNOWN:I = 0x0

.field private static final VOANA_BATTERY_UNPLUGGED:I = 0x2


# instance fields
.field m_level:I

.field m_powerState:I

.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x32

    .line 74
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;->m_level:I

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;->m_powerState:I

    return-void
.end method
