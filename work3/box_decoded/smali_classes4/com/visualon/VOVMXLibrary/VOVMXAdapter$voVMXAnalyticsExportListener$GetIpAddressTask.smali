.class Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$GetIpAddressTask;
.super Landroid/os/AsyncTask;
.source "VOVMXAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetIpAddressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

.field ts:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)V
    .locals 2

    .line 857
    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$GetIpAddressTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, 0x0

    .line 859
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$GetIpAddressTask;->ts:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 857
    invoke-virtual {p0, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$GetIpAddressTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 863
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$GetIpAddressTask;->ts:Ljava/lang/Long;

    const/4 v1, 0x0

    .line 865
    :try_start_0
    new-instance v2, Ljava/net/URL;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 867
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "8080"

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "@@@GetIpAddressTask"

    const-string v1, "IP Address detection error"

    .line 869
    invoke-static {p1, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "0.0.0.0:8080"

    :goto_1
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 857
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$GetIpAddressTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 877
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$GetIpAddressTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    iget-object v1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$GetIpAddressTask;->ts:Ljava/lang/Long;

    invoke-static {v0, p1, v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$1800(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
