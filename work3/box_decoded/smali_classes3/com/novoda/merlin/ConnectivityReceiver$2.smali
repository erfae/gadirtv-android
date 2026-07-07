.class Lcom/novoda/merlin/ConnectivityReceiver$2;
.super Ljava/lang/Object;
.source "ConnectivityReceiver.java"

# interfaces
.implements Lcom/novoda/merlin/ConnectivityReceiver$MerlinBinderRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novoda/merlin/ConnectivityReceiver;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novoda/merlin/ConnectivityReceiver;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/ConnectivityReceiver;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/novoda/merlin/ConnectivityReceiver$2;->this$0:Lcom/novoda/merlin/ConnectivityReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieveConnectivityChangesNotifier(Landroid/content/Context;)Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityReceiver$2;->this$0:Lcom/novoda/merlin/ConnectivityReceiver;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/novoda/merlin/MerlinService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/novoda/merlin/ConnectivityReceiver;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    .line 25
    instance-of v0, p1, Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;

    if-eqz v0, :cond_0

    .line 26
    check-cast p1, Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
