.class Lcom/novoda/merlin/ConnectivityChangeEventCreator;
.super Ljava/lang/Object;
.source "ConnectivityChangeEventCreator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private extractIsConnectedFrom(Landroid/content/Intent;Lcom/novoda/merlin/MerlinsBeard;)Z
    .locals 2

    const-string v0, "noConnectivity"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 19
    :cond_0
    invoke-virtual {p2}, Lcom/novoda/merlin/MerlinsBeard;->isConnected()Z

    move-result p1

    return p1
.end method


# virtual methods
.method createFrom(Landroid/content/Intent;Lcom/novoda/merlin/MerlinsBeard;)Lcom/novoda/merlin/ConnectivityChangeEvent;
    .locals 2

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/novoda/merlin/ConnectivityChangeEventCreator;->extractIsConnectedFrom(Landroid/content/Intent;Lcom/novoda/merlin/MerlinsBeard;)Z

    move-result p2

    const-string v0, "extraInfo"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reason"

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p2, v0, p1}, Lcom/novoda/merlin/ConnectivityChangeEvent;->createWithNetworkInfoChangeEvent(ZLjava/lang/String;Ljava/lang/String;)Lcom/novoda/merlin/ConnectivityChangeEvent;

    move-result-object p1

    return-object p1
.end method
