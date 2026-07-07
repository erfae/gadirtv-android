.class Lcom/novoda/merlin/ConnectivityChangeEvent;
.super Ljava/lang/Object;
.source "ConnectivityChangeEvent.java"


# static fields
.field private static final WITHOUT_CONNECTION:Z = false

.field private static final WITHOUT_INFO:Ljava/lang/String; = ""

.field private static final WITHOUT_REASON:Ljava/lang/String; = ""


# instance fields
.field private final info:Ljava/lang/String;

.field private final isConnected:Z

.field private final reason:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->isConnected:Z

    .line 26
    iput-object p2, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->info:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->reason:Ljava/lang/String;

    return-void
.end method

.method static createWithNetworkInfoChangeEvent(ZLjava/lang/String;Ljava/lang/String;)Lcom/novoda/merlin/ConnectivityChangeEvent;
    .locals 1

    .line 21
    new-instance v0, Lcom/novoda/merlin/ConnectivityChangeEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/novoda/merlin/ConnectivityChangeEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static createWithoutConnection()Lcom/novoda/merlin/ConnectivityChangeEvent;
    .locals 3

    .line 17
    new-instance v0, Lcom/novoda/merlin/ConnectivityChangeEvent;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2, v2}, Lcom/novoda/merlin/ConnectivityChangeEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method asNetworkStatus()Lcom/novoda/merlin/NetworkStatus;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/novoda/merlin/ConnectivityChangeEvent;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/novoda/merlin/NetworkStatus;->newAvailableInstance()Lcom/novoda/merlin/NetworkStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/novoda/merlin/NetworkStatus;->newUnavailableInstance()Lcom/novoda/merlin/NetworkStatus;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 64
    :cond_1
    check-cast p1, Lcom/novoda/merlin/ConnectivityChangeEvent;

    .line 66
    iget-boolean v2, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->isConnected:Z

    iget-boolean v3, p1, Lcom/novoda/merlin/ConnectivityChangeEvent;->isConnected:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->info:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/novoda/merlin/ConnectivityChangeEvent;->info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/novoda/merlin/ConnectivityChangeEvent;->info:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 72
    :cond_4
    iget-object v2, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->reason:Ljava/lang/String;

    iget-object p1, p1, Lcom/novoda/merlin/ConnectivityChangeEvent;->reason:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 78
    iget-boolean v0, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->isConnected:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-object v1, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->info:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 80
    iget-object v1, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->reason:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method info()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->info:Ljava/lang/String;

    return-object v0
.end method

.method isConnected()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->isConnected:Z

    return v0
.end method

.method reason()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectivityChangeEvent{isConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->isConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", info=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reason=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/novoda/merlin/ConnectivityChangeEvent;->reason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
