.class Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$1;
.super Landroid/content/BroadcastReceiver;
.source "VOOSAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "scale"

    const/4 v0, -0x1

    .line 102
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "level"

    .line 103
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 104
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->access$000(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;

    move-result-object v0

    mul-int/lit8 p2, p2, 0x64

    div-int/2addr p2, p1

    iput p2, v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;->m_level:I

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 108
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    invoke-static {p1}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->access$000(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p1, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;->m_powerState:I

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    invoke-static {p1}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->access$000(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;

    move-result-object p1

    const/4 p2, 0x2

    iput p2, p1, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;->m_powerState:I

    :cond_2
    :goto_0
    return-void
.end method
