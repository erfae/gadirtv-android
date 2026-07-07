.class Lcom/novoda/merlin/MerlinService$LocalBinder;
.super Landroid/os/Binder;
.source "MerlinService.java"

# interfaces
.implements Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novoda/merlin/MerlinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novoda/merlin/MerlinService;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/MerlinService;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/novoda/merlin/MerlinService$LocalBinder;->this$0:Lcom/novoda/merlin/MerlinService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public canNotify()Z
    .locals 1

    .line 72
    invoke-static {}, Lcom/novoda/merlin/MerlinService;->isBound()Z

    move-result v0

    return v0
.end method

.method public notify(Lcom/novoda/merlin/ConnectivityChangeEvent;)V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/novoda/merlin/MerlinService$LocalBinder;->canNotify()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/novoda/merlin/MerlinService$LocalBinder;->this$0:Lcom/novoda/merlin/MerlinService;

    invoke-static {v0}, Lcom/novoda/merlin/MerlinService;->access$000(Lcom/novoda/merlin/MerlinService;)Lcom/novoda/merlin/ConnectivityChangesForwarder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/novoda/merlin/MerlinService$LocalBinder;->this$0:Lcom/novoda/merlin/MerlinService;

    invoke-static {v0}, Lcom/novoda/merlin/MerlinService;->access$000(Lcom/novoda/merlin/MerlinService;)Lcom/novoda/merlin/ConnectivityChangesForwarder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/novoda/merlin/ConnectivityChangesForwarder;->forward(Lcom/novoda/merlin/ConnectivityChangeEvent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "notify event dropped due to inconsistent service state"

    aput-object v1, p1, v0

    .line 81
    invoke-static {p1}, Lcom/novoda/merlin/Logger;->w([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method onBindComplete()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/novoda/merlin/MerlinService$LocalBinder;->this$0:Lcom/novoda/merlin/MerlinService;

    invoke-static {v0}, Lcom/novoda/merlin/MerlinService;->access$200(Lcom/novoda/merlin/MerlinService;)V

    return-void
.end method

.method setConnectivityChangesForwarder(Lcom/novoda/merlin/ConnectivityChangesForwarder;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/novoda/merlin/MerlinService$LocalBinder;->this$0:Lcom/novoda/merlin/MerlinService;

    invoke-static {v0, p1}, Lcom/novoda/merlin/MerlinService;->access$002(Lcom/novoda/merlin/MerlinService;Lcom/novoda/merlin/ConnectivityChangesForwarder;)Lcom/novoda/merlin/ConnectivityChangesForwarder;

    return-void
.end method

.method setConnectivityChangesRegister(Lcom/novoda/merlin/ConnectivityChangesRegister;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/novoda/merlin/MerlinService$LocalBinder;->this$0:Lcom/novoda/merlin/MerlinService;

    invoke-static {v0, p1}, Lcom/novoda/merlin/MerlinService;->access$102(Lcom/novoda/merlin/MerlinService;Lcom/novoda/merlin/ConnectivityChangesRegister;)Lcom/novoda/merlin/ConnectivityChangesRegister;

    return-void
.end method
