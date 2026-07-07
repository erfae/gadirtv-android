.class Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;


# direct methods
.method constructor <init>(Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList$1;->a:Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 169
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetector;->IsScreenRecorderOn()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList$1;->a:Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;

    invoke-static {v0}, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->access$000(Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v0, v1, p2, v2}, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->access$100(Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    .line 181
    :goto_0
    invoke-static {}, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList$1;->a:Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;

    invoke-static {p1}, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->access$300(Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 184
    invoke-static {}, Lcom/inka/ncg2/i;->a()Lcom/inka/ncg2/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inka/ncg2/i;->getLocalWebServer()Lcom/inka/ncg2/Ncg2LocalWebServer;

    move-result-object p1

    check-cast p1, Lcom/inka/ncg2/l;

    const/16 v1, 0x3ed

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen Recorder app is instaled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/inka/ncg2/l;->a(ILjava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/inka/ncg2/l;->clearPlaybackUrls()V

    :cond_1
    return-void
.end method
