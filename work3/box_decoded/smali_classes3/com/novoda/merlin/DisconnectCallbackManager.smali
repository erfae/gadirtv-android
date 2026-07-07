.class Lcom/novoda/merlin/DisconnectCallbackManager;
.super Lcom/novoda/merlin/MerlinCallbackManager;
.source "DisconnectCallbackManager.java"

# interfaces
.implements Lcom/novoda/merlin/Disconnectable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/merlin/MerlinCallbackManager<",
        "Lcom/novoda/merlin/Disconnectable;",
        ">;",
        "Lcom/novoda/merlin/Disconnectable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/novoda/merlin/Register;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/novoda/merlin/Register<",
            "Lcom/novoda/merlin/Disconnectable;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lcom/novoda/merlin/MerlinCallbackManager;-><init>(Lcom/novoda/merlin/Register;)V

    return-void
.end method


# virtual methods
.method public onDisconnect()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDisconnect"

    aput-object v2, v0, v1

    .line 11
    invoke-static {v0}, Lcom/novoda/merlin/Logger;->d([Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/novoda/merlin/DisconnectCallbackManager;->registerables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novoda/merlin/Disconnectable;

    .line 13
    invoke-interface {v1}, Lcom/novoda/merlin/Disconnectable;->onDisconnect()V

    goto :goto_0

    :cond_0
    return-void
.end method
