.class Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;
.super Landroid/os/AsyncTask;
.source "VOOSMPVideoViewPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VOOSMPCheckAndLoadUrlAsyncTask"
.end annotation

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
.field private mHideView:Z

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;Ljava/lang/String;Z)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 516
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;->mUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 517
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;->mHideView:Z

    .line 520
    iput-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;->mUrl:Ljava/lang/String;

    .line 521
    iput-boolean p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;->mHideView:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 525
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;->mUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$1200(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 515
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 529
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 530
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;->mUrl:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;->mHideView:Z

    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$1300(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 515
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$VOOSMPCheckAndLoadUrlAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
