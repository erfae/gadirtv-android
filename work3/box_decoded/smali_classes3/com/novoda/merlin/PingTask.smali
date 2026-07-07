.class Lcom/novoda/merlin/PingTask;
.super Landroid/os/AsyncTask;
.source "PingTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final ping:Lcom/novoda/merlin/Ping;

.field private final pingerCallback:Lcom/novoda/merlin/EndpointPinger$PingerCallback;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/Ping;Lcom/novoda/merlin/EndpointPinger$PingerCallback;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/novoda/merlin/PingTask;->ping:Lcom/novoda/merlin/Ping;

    .line 12
    iput-object p2, p0, Lcom/novoda/merlin/PingTask;->pingerCallback:Lcom/novoda/merlin/EndpointPinger$PingerCallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 17
    iget-object p1, p0, Lcom/novoda/merlin/PingTask;->ping:Lcom/novoda/merlin/Ping;

    invoke-virtual {p1}, Lcom/novoda/merlin/Ping;->doSynchronousPing()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/novoda/merlin/PingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/novoda/merlin/PingTask;->pingerCallback:Lcom/novoda/merlin/EndpointPinger$PingerCallback;

    invoke-interface {p1}, Lcom/novoda/merlin/EndpointPinger$PingerCallback;->onSuccess()V

    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/novoda/merlin/PingTask;->pingerCallback:Lcom/novoda/merlin/EndpointPinger$PingerCallback;

    invoke-interface {p1}, Lcom/novoda/merlin/EndpointPinger$PingerCallback;->onFailure()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/novoda/merlin/PingTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
