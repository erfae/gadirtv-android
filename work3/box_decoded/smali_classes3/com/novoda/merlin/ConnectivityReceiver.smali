.class Lcom/novoda/merlin/ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novoda/merlin/ConnectivityReceiver$MerlinsBeardCreator;,
        Lcom/novoda/merlin/ConnectivityReceiver$MerlinBinderRetriever;
    }
.end annotation


# instance fields
.field private final connectivityReceiverConnectivityChangeNotifier:Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    new-instance v0, Lcom/novoda/merlin/ConnectivityReceiver$1;

    invoke-direct {v0, p0}, Lcom/novoda/merlin/ConnectivityReceiver$1;-><init>(Lcom/novoda/merlin/ConnectivityReceiver;)V

    .line 21
    new-instance v1, Lcom/novoda/merlin/ConnectivityReceiver$2;

    invoke-direct {v1, p0}, Lcom/novoda/merlin/ConnectivityReceiver$2;-><init>(Lcom/novoda/merlin/ConnectivityReceiver;)V

    .line 32
    new-instance v2, Lcom/novoda/merlin/ConnectivityChangeEventCreator;

    invoke-direct {v2}, Lcom/novoda/merlin/ConnectivityChangeEventCreator;-><init>()V

    .line 33
    new-instance v3, Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;

    invoke-direct {v3, v0, v1, v2}, Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;-><init>(Lcom/novoda/merlin/ConnectivityReceiver$MerlinsBeardCreator;Lcom/novoda/merlin/ConnectivityReceiver$MerlinBinderRetriever;Lcom/novoda/merlin/ConnectivityChangeEventCreator;)V

    iput-object v3, p0, Lcom/novoda/merlin/ConnectivityReceiver;->connectivityReceiverConnectivityChangeNotifier:Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;

    return-void
.end method

.method constructor <init>(Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/novoda/merlin/ConnectivityReceiver;->connectivityReceiverConnectivityChangeNotifier:Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityReceiver;->connectivityReceiverConnectivityChangeNotifier:Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;->notify(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
