.class Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;
.super Ljava/lang/Object;
.source "ConnectivityReceiverConnectivityChangeNotifier.java"


# instance fields
.field private final creator:Lcom/novoda/merlin/ConnectivityChangeEventCreator;

.field private final merlinBinderRetriever:Lcom/novoda/merlin/ConnectivityReceiver$MerlinBinderRetriever;

.field private final merlinsBeardCreator:Lcom/novoda/merlin/ConnectivityReceiver$MerlinsBeardCreator;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/ConnectivityReceiver$MerlinsBeardCreator;Lcom/novoda/merlin/ConnectivityReceiver$MerlinBinderRetriever;Lcom/novoda/merlin/ConnectivityChangeEventCreator;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;->merlinsBeardCreator:Lcom/novoda/merlin/ConnectivityReceiver$MerlinsBeardCreator;

    .line 18
    iput-object p2, p0, Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;->merlinBinderRetriever:Lcom/novoda/merlin/ConnectivityReceiver$MerlinBinderRetriever;

    .line 19
    iput-object p3, p0, Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;->creator:Lcom/novoda/merlin/ConnectivityChangeEventCreator;

    return-void
.end method

.method private cannotNotify(Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 42
    invoke-interface {p1}, Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;->canNotify()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private connectivityActionMatchesActionFor(Landroid/content/Intent;)Z
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private notifyMerlinService(Landroid/content/Context;Lcom/novoda/merlin/ConnectivityChangeEvent;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;->merlinBinderRetriever:Lcom/novoda/merlin/ConnectivityReceiver$MerlinBinderRetriever;

    invoke-interface {v0, p1}, Lcom/novoda/merlin/ConnectivityReceiver$MerlinBinderRetriever;->retrieveConnectivityChangesNotifier(Landroid/content/Context;)Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;

    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;->cannotNotify(Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot notify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/novoda/merlin/Logger;->d([Ljava/lang/Object;)V

    return-void

    .line 37
    :cond_0
    invoke-interface {p1, p2}, Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;->notify(Lcom/novoda/merlin/ConnectivityChangeEvent;)V

    return-void
.end method


# virtual methods
.method notify(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 23
    invoke-direct {p0, p2}, Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;->connectivityActionMatchesActionFor(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;->merlinsBeardCreator:Lcom/novoda/merlin/ConnectivityReceiver$MerlinsBeardCreator;

    invoke-interface {v0, p1}, Lcom/novoda/merlin/ConnectivityReceiver$MerlinsBeardCreator;->createMerlinsBeard(Landroid/content/Context;)Lcom/novoda/merlin/MerlinsBeard;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;->creator:Lcom/novoda/merlin/ConnectivityChangeEventCreator;

    invoke-virtual {v1, p2, v0}, Lcom/novoda/merlin/ConnectivityChangeEventCreator;->createFrom(Landroid/content/Intent;Lcom/novoda/merlin/MerlinsBeard;)Lcom/novoda/merlin/ConnectivityChangeEvent;

    move-result-object p2

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/novoda/merlin/ConnectivityReceiverConnectivityChangeNotifier;->notifyMerlinService(Landroid/content/Context;Lcom/novoda/merlin/ConnectivityChangeEvent;)V

    :cond_0
    return-void
.end method
