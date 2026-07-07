.class public Lcom/novoda/merlin/MerlinsBeard;
.super Ljava/lang/Object;
.source "MerlinsBeard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novoda/merlin/MerlinsBeard$Builder;,
        Lcom/novoda/merlin/MerlinsBeard$InternetAccessCallback;
    }
.end annotation


# static fields
.field private static final IS_NOT_CONNECTED_TO_NETWORK_TYPE:Z


# instance fields
.field private final androidVersion:Lcom/novoda/merlin/AndroidVersion;

.field private final captivePortalPing:Lcom/novoda/merlin/Ping;

.field private final captivePortalPinger:Lcom/novoda/merlin/EndpointPinger;

.field private final connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Lcom/novoda/merlin/AndroidVersion;Lcom/novoda/merlin/EndpointPinger;Lcom/novoda/merlin/Ping;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/novoda/merlin/MerlinsBeard;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 39
    iput-object p2, p0, Lcom/novoda/merlin/MerlinsBeard;->androidVersion:Lcom/novoda/merlin/AndroidVersion;

    .line 40
    iput-object p3, p0, Lcom/novoda/merlin/MerlinsBeard;->captivePortalPinger:Lcom/novoda/merlin/EndpointPinger;

    .line 41
    iput-object p4, p0, Lcom/novoda/merlin/MerlinsBeard;->captivePortalPing:Lcom/novoda/merlin/Ping;

    return-void
.end method

.method private connectedToNetworkTypeForLollipop(I)Z
    .locals 6

    .line 98
    iget-object v0, p0, Lcom/novoda/merlin/MerlinsBeard;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 100
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 101
    iget-object v5, p0, Lcom/novoda/merlin/MerlinsBeard;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 103
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 104
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static from(Landroid/content/Context;)Lcom/novoda/merlin/MerlinsBeard;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    new-instance v0, Lcom/novoda/merlin/MerlinsBeard$Builder;

    invoke-direct {v0}, Lcom/novoda/merlin/MerlinsBeard$Builder;-><init>()V

    .line 34
    invoke-virtual {v0, p0}, Lcom/novoda/merlin/MerlinsBeard$Builder;->build(Landroid/content/Context;)Lcom/novoda/merlin/MerlinsBeard;

    move-result-object p0

    return-object p0
.end method

.method private isConnectedTo(I)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/novoda/merlin/MerlinsBeard;->androidVersion:Lcom/novoda/merlin/AndroidVersion;

    invoke-virtual {v0}, Lcom/novoda/merlin/AndroidVersion;->isLollipopOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lcom/novoda/merlin/MerlinsBeard;->connectedToNetworkTypeForLollipop(I)Z

    move-result p1

    return p1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/novoda/merlin/MerlinsBeard;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private networkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/novoda/merlin/MerlinsBeard;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMobileNetworkSubtypeName()Ljava/lang/String;
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/novoda/merlin/MerlinsBeard;->networkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public hasInternetAccess(Lcom/novoda/merlin/MerlinsBeard$InternetAccessCallback;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/novoda/merlin/MerlinsBeard;->captivePortalPinger:Lcom/novoda/merlin/EndpointPinger;

    new-instance v1, Lcom/novoda/merlin/MerlinsBeard$1;

    invoke-direct {v1, p0, p1}, Lcom/novoda/merlin/MerlinsBeard$1;-><init>(Lcom/novoda/merlin/MerlinsBeard;Lcom/novoda/merlin/MerlinsBeard$InternetAccessCallback;)V

    invoke-virtual {v0, v1}, Lcom/novoda/merlin/EndpointPinger;->ping(Lcom/novoda/merlin/EndpointPinger$PingerCallback;)V

    return-void
.end method

.method public hasInternetAccess()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/novoda/merlin/MerlinsBeard;->captivePortalPing:Lcom/novoda/merlin/Ping;

    invoke-virtual {v0}, Lcom/novoda/merlin/Ping;->doSynchronousPing()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/novoda/merlin/MerlinsBeard;->networkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnectedToMobileNetwork()Z
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0}, Lcom/novoda/merlin/MerlinsBeard;->isConnectedTo(I)Z

    move-result v0

    return v0
.end method

.method public isConnectedToWifi()Z
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, v0}, Lcom/novoda/merlin/MerlinsBeard;->isConnectedTo(I)Z

    move-result v0

    return v0
.end method
