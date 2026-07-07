.class Lcom/novoda/merlin/ConnectivityChangesRegister;
.super Ljava/lang/Object;
.source "ConnectivityChangesRegister.java"


# instance fields
.field private final androidVersion:Lcom/novoda/merlin/AndroidVersion;

.field private connectivityCallbacks:Lcom/novoda/merlin/ConnectivityCallbacks;

.field private final connectivityChangeEventExtractor:Lcom/novoda/merlin/ConnectivityChangeEventExtractor;

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private connectivityReceiver:Lcom/novoda/merlin/ConnectivityReceiver;

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Lcom/novoda/merlin/AndroidVersion;Lcom/novoda/merlin/ConnectivityChangeEventExtractor;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 26
    iput-object p3, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->androidVersion:Lcom/novoda/merlin/AndroidVersion;

    .line 27
    iput-object p4, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityChangeEventExtractor:Lcom/novoda/merlin/ConnectivityChangeEventExtractor;

    return-void
.end method

.method private connectivityActionIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private connectivityCallbacks(Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;)Lcom/novoda/merlin/ConnectivityCallbacks;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityCallbacks:Lcom/novoda/merlin/ConnectivityCallbacks;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/novoda/merlin/ConnectivityCallbacks;

    iget-object v1, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityChangeEventExtractor:Lcom/novoda/merlin/ConnectivityChangeEventExtractor;

    invoke-direct {v0, p1, v1}, Lcom/novoda/merlin/ConnectivityCallbacks;-><init>(Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;Lcom/novoda/merlin/ConnectivityChangeEventExtractor;)V

    iput-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityCallbacks:Lcom/novoda/merlin/ConnectivityCallbacks;

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityCallbacks:Lcom/novoda/merlin/ConnectivityCallbacks;

    return-object p1
.end method

.method private connectivityReceiver()Lcom/novoda/merlin/ConnectivityReceiver;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityReceiver:Lcom/novoda/merlin/ConnectivityReceiver;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/novoda/merlin/ConnectivityReceiver;

    invoke-direct {v0}, Lcom/novoda/merlin/ConnectivityReceiver;-><init>()V

    iput-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityReceiver:Lcom/novoda/merlin/ConnectivityReceiver;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityReceiver:Lcom/novoda/merlin/ConnectivityReceiver;

    return-object v0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityReceiver()Lcom/novoda/merlin/ConnectivityReceiver;

    move-result-object v1

    invoke-direct {p0}, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityActionIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerNetworkCallbacks(Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;)V
    .locals 2

    .line 40
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityCallbacks(Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;)Lcom/novoda/merlin/ConnectivityCallbacks;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityReceiver:Lcom/novoda/merlin/ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterNetworkCallbacks()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->connectivityCallbacks:Lcom/novoda/merlin/ConnectivityCallbacks;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method


# virtual methods
.method register(Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->androidVersion:Lcom/novoda/merlin/AndroidVersion;

    invoke-virtual {v0}, Lcom/novoda/merlin/AndroidVersion;->isLollipopOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0, p1}, Lcom/novoda/merlin/ConnectivityChangesRegister;->registerNetworkCallbacks(Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/novoda/merlin/ConnectivityChangesRegister;->registerBroadcastReceiver()V

    :goto_0
    return-void
.end method

.method unregister()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesRegister;->androidVersion:Lcom/novoda/merlin/AndroidVersion;

    invoke-virtual {v0}, Lcom/novoda/merlin/AndroidVersion;->isLollipopOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/novoda/merlin/ConnectivityChangesRegister;->unregisterNetworkCallbacks()V

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/novoda/merlin/ConnectivityChangesRegister;->unregisterBroadcastReceiver()V

    :goto_0
    return-void
.end method
