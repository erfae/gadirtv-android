.class Lcom/verimatrix/vdc/Configuration$IpUpdateTask;
.super Landroid/os/AsyncTask;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IpUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private configuration:Lcom/verimatrix/vdc/Configuration;

.field private key:Ljava/lang/String;

.field private originalValueKey:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field final synthetic this$0:Lcom/verimatrix/vdc/Configuration;


# direct methods
.method public constructor <init>(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1205
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;->this$0:Lcom/verimatrix/vdc/Configuration;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1206
    iput-object p2, p0, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;->configuration:Lcom/verimatrix/vdc/Configuration;

    .line 1207
    iput-object p3, p0, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;->originalValueKey:Ljava/lang/String;

    .line 1208
    iput-object p4, p0, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;->key:Ljava/lang/String;

    .line 1209
    iput-object p5, p0, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;->server:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1199
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1213
    iget-object p1, p0, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;->server:Ljava/lang/String;

    invoke-static {p1}, Lcom/verimatrix/vdc/NetworkUtils;->convertUrlToIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1199
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 1217
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;->server:Ljava/lang/String;

    iget-object v1, p0, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;->configuration:Lcom/verimatrix/vdc/Configuration;

    iget-object v2, p0, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;->originalValueKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;->this$0:Lcom/verimatrix/vdc/Configuration;

    iget-object v1, p0, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1220
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Configuration;->TAG:Ljava/lang/String;

    const-string v0, "original value was changed, set ip skipped - not actual"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
