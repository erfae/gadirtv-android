.class Lcom/inka/ncg2/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inka/ncg2/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inka/ncg2/g;


# direct methods
.method constructor <init>(Lcom/inka/ncg2/g;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/inka/ncg2/g$1;->a:Lcom/inka/ncg2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnHdmiConnectionListener() ++ : isConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 54
    iget-object p1, p0, Lcom/inka/ncg2/g$1;->a:Lcom/inka/ncg2/g;

    invoke-static {p1}, Lcom/inka/ncg2/g;->a(Lcom/inka/ncg2/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/inka/ncg2/g$1;->a:Lcom/inka/ncg2/g;

    invoke-static {p1}, Lcom/inka/ncg2/g;->b(Lcom/inka/ncg2/g;)Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;

    move-result-object p1

    const/16 v0, 0x3eb

    const-string v2, "Hdmi Detected"

    invoke-virtual {p1, v0, v2}, Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;->onNotification(ILjava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/inka/ncg2/g$1;->a:Lcom/inka/ncg2/g;

    invoke-static {p1}, Lcom/inka/ncg2/g;->c(Lcom/inka/ncg2/g;)Lcom/inka/ncg2/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inka/ncg2/i;->getLocalWebServer()Lcom/inka/ncg2/Ncg2LocalWebServer;

    move-result-object p1

    invoke-interface {p1}, Lcom/inka/ncg2/Ncg2LocalWebServer;->clearPlaybackUrls()V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/inka/ncg2/g$1;->a:Lcom/inka/ncg2/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/inka/ncg2/g;->a(Lcom/inka/ncg2/g;Z)Z

    const-string p1, "OnHdmiConnectionListener() --"

    .line 61
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
