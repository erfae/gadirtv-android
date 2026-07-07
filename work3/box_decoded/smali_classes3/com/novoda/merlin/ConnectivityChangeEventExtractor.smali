.class Lcom/novoda/merlin/ConnectivityChangeEventExtractor;
.super Ljava/lang/Object;
.source "ConnectivityChangeEventExtractor.java"


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/novoda/merlin/ConnectivityChangeEventExtractor;->connectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method extractFrom(Landroid/net/Network;)Lcom/novoda/merlin/ConnectivityChangeEvent;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangeEventExtractor;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 23
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {v0, p1, v1}, Lcom/novoda/merlin/ConnectivityChangeEvent;->createWithNetworkInfoChangeEvent(ZLjava/lang/String;Ljava/lang/String;)Lcom/novoda/merlin/ConnectivityChangeEvent;

    move-result-object p1

    return-object p1

    .line 28
    :cond_0
    invoke-static {}, Lcom/novoda/merlin/ConnectivityChangeEvent;->createWithoutConnection()Lcom/novoda/merlin/ConnectivityChangeEvent;

    move-result-object p1

    return-object p1
.end method
