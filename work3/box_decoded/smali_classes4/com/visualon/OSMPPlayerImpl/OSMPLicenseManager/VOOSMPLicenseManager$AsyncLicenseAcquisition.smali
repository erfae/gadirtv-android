.class Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;
.super Landroid/os/AsyncTask;
.source "VOOSMPLicenseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLicenseAcquisition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public id:J

.field public key_rotation:Z

.field public should_store_license:Z

.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 508
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->should_store_license:Z

    .line 510
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->key_rotation:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$1;)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;-><init>(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .line 523
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 524
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-static {p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->access$100(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;)Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 526
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "[ASYNC]"

    const-string v3, "AsyncLicenseAcquisition::doInBackground"

    .line 527
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    :cond_1
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    .line 531
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->should_store_license:Z

    invoke-static {v0, p1, v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->access$200(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;[BZ)I

    .line 539
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-static {p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->access$300(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "doInBackground FINISHED "

    invoke-static {p1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    const-wide/16 v2, 0x20

    invoke-static {p1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->access$000(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;J)V

    .line 541
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-static {p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->access$100(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;)Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 506
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 565
    check-cast p1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;

    iget-wide v0, p1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->id:J

    iget-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .line 546
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[ASYNC]"

    const-string v2, "AsyncLicenseAcquisition::onPostExecute"

    .line 547
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->access$100(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;)Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    if-nez p1, :cond_1

    .line 551
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    const-wide/16 v0, 0x4

    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->access$000(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;J)V

    goto :goto_0

    .line 555
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    const-wide/16 v0, 0x8

    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->access$000(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;J)V

    .line 557
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-static {p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->access$400(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;)V

    .line 560
    :goto_0
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-static {p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->access$500(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 506
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 513
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 514
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[ASYNC]"

    const-string v2, "AsyncLicenseAcquisition::onPreExecute"

    .line 515
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->access$000(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;J)V

    return-void
.end method
