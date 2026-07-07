.class public Lcom/novoda/merlin/NetworkStatus;
.super Ljava/lang/Object;
.source "NetworkStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novoda/merlin/NetworkStatus$State;
    }
.end annotation


# instance fields
.field private final state:Lcom/novoda/merlin/NetworkStatus$State;


# direct methods
.method private constructor <init>(Lcom/novoda/merlin/NetworkStatus$State;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/novoda/merlin/NetworkStatus;->state:Lcom/novoda/merlin/NetworkStatus$State;

    return-void
.end method

.method public static newAvailableInstance()Lcom/novoda/merlin/NetworkStatus;
    .locals 2

    .line 13
    new-instance v0, Lcom/novoda/merlin/NetworkStatus;

    sget-object v1, Lcom/novoda/merlin/NetworkStatus$State;->AVAILABLE:Lcom/novoda/merlin/NetworkStatus$State;

    invoke-direct {v0, v1}, Lcom/novoda/merlin/NetworkStatus;-><init>(Lcom/novoda/merlin/NetworkStatus$State;)V

    return-object v0
.end method

.method public static newUnavailableInstance()Lcom/novoda/merlin/NetworkStatus;
    .locals 2

    .line 17
    new-instance v0, Lcom/novoda/merlin/NetworkStatus;

    sget-object v1, Lcom/novoda/merlin/NetworkStatus$State;->UNAVAILABLE:Lcom/novoda/merlin/NetworkStatus$State;

    invoke-direct {v0, v1}, Lcom/novoda/merlin/NetworkStatus;-><init>(Lcom/novoda/merlin/NetworkStatus$State;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    check-cast p1, Lcom/novoda/merlin/NetworkStatus;

    .line 37
    iget-object v2, p0, Lcom/novoda/merlin/NetworkStatus;->state:Lcom/novoda/merlin/NetworkStatus$State;

    iget-object p1, p1, Lcom/novoda/merlin/NetworkStatus;->state:Lcom/novoda/merlin/NetworkStatus$State;

    if-eq v2, p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/novoda/merlin/NetworkStatus;->state:Lcom/novoda/merlin/NetworkStatus$State;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/novoda/merlin/NetworkStatus$State;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/novoda/merlin/NetworkStatus;->state:Lcom/novoda/merlin/NetworkStatus$State;

    sget-object v1, Lcom/novoda/merlin/NetworkStatus$State;->AVAILABLE:Lcom/novoda/merlin/NetworkStatus$State;

    invoke-virtual {v0, v1}, Lcom/novoda/merlin/NetworkStatus$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
