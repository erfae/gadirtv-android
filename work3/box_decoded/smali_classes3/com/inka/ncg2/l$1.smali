.class Lcom/inka/ncg2/l$1;
.super Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inka/ncg2/l;


# direct methods
.method constructor <init>(Lcom/inka/ncg2/l;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-direct {p0}, Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckPlayerStatus(Ljava/lang/String;)Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-static {v0}, Lcom/inka/ncg2/l;->b(Lcom/inka/ncg2/l;)Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-static {v0}, Lcom/inka/ncg2/l;->b(Lcom/inka/ncg2/l;)Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;->onCheckPlayerStatus(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    move-result-object p1

    .line 94
    sget-object v0, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;->Fail:Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x271c

    if-ne p1, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-static {v0}, Lcom/inka/ncg2/l;->d(Lcom/inka/ncg2/l;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inka/ncg2/l$1$1;

    invoke-direct {v1, p0}, Lcom/inka/ncg2/l$1$1;-><init>(Lcom/inka/ncg2/l$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-static {v0}, Lcom/inka/ncg2/l;->b(Lcom/inka/ncg2/l;)Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-static {v0}, Lcom/inka/ncg2/l;->b(Lcom/inka/ncg2/l;)Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;->onError(ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "[Webserver onError] ErrorCode : [%d]\nErrorMsg : [%s]\n"

    .line 78
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 82
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-static {p1}, Lcom/inka/ncg2/l;->e(Lcom/inka/ncg2/l;)Lcom/inka/ncg2/i;

    move-result-object p1

    iget-object p1, p1, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-static {p1}, Lcom/inka/ncg2/l;->e(Lcom/inka/ncg2/l;)Lcom/inka/ncg2/i;

    move-result-object p1

    iget-object p1, p1, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    invoke-interface {p1, p2}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public onNotification(ILjava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-static {v0}, Lcom/inka/ncg2/l;->a(Lcom/inka/ncg2/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-static {v0}, Lcom/inka/ncg2/l;->b(Lcom/inka/ncg2/l;)Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-static {v0}, Lcom/inka/ncg2/l;->b(Lcom/inka/ncg2/l;)Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;->onNotification(ILjava/lang/String;)V

    :cond_1
    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_2

    const/16 p2, 0x3ed

    if-ne p1, p2, :cond_3

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/inka/ncg2/l;->a(Lcom/inka/ncg2/l;Z)Z

    .line 45
    iget-object p1, p0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-virtual {p1}, Lcom/inka/ncg2/l;->clearPlaybackUrls()V

    :cond_3
    return-void
.end method
