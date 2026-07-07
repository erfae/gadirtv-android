.class Lcom/novoda/merlin/ConnectivityCallbacks;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityCallbacks.java"


# instance fields
.field private final connectivityChangeEventExtractor:Lcom/novoda/merlin/ConnectivityChangeEventExtractor;

.field private final connectivityChangesNotifier:Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;Lcom/novoda/merlin/ConnectivityChangeEventExtractor;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/novoda/merlin/ConnectivityCallbacks;->connectivityChangesNotifier:Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;

    .line 17
    iput-object p2, p0, Lcom/novoda/merlin/ConnectivityCallbacks;->connectivityChangeEventExtractor:Lcom/novoda/merlin/ConnectivityChangeEventExtractor;

    return-void
.end method

.method private notifyMerlinService(Landroid/net/Network;)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityCallbacks;->connectivityChangesNotifier:Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;

    invoke-interface {v0}, Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;->canNotify()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot notify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/novoda/merlin/Logger;->d([Ljava/lang/Object;)V

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityCallbacks;->connectivityChangeEventExtractor:Lcom/novoda/merlin/ConnectivityChangeEventExtractor;

    invoke-virtual {v0, p1}, Lcom/novoda/merlin/ConnectivityChangeEventExtractor;->extractFrom(Landroid/net/Network;)Lcom/novoda/merlin/ConnectivityChangeEvent;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityCallbacks;->connectivityChangesNotifier:Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;

    invoke-interface {v0, p1}, Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;->notify(Lcom/novoda/merlin/ConnectivityChangeEvent;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/novoda/merlin/ConnectivityCallbacks;->notifyMerlinService(Landroid/net/Network;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/novoda/merlin/ConnectivityCallbacks;->notifyMerlinService(Landroid/net/Network;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/novoda/merlin/ConnectivityCallbacks;->notifyMerlinService(Landroid/net/Network;)V

    return-void
.end method
