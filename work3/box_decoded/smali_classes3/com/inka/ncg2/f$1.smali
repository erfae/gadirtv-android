.class Lcom/inka/ncg2/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inka/ncg2/f;->getMediaPlayerBackend()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/inka/ncg2/f;


# direct methods
.method constructor <init>(Lcom/inka/ncg2/f;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/inka/ncg2/f$1;->c:Lcom/inka/ncg2/f;

    iput-object p2, p0, Lcom/inka/ncg2/f$1;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/inka/ncg2/f$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 39
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 40
    iget-object v2, p0, Lcom/inka/ncg2/f$1;->c:Lcom/inka/ncg2/f;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    iput v3, v2, Lcom/inka/ncg2/f;->_socketPort:I

    .line 41
    iget-object v2, p0, Lcom/inka/ncg2/f$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 43
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x800

    new-array v4, v4, [B

    const/4 v5, -0x1

    :goto_0
    if-gtz v5, :cond_0

    .line 49
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    goto :goto_0

    .line 51
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "stagefright"

    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/inka/ncg2/f$1;->c:Lcom/inka/ncg2/f;

    const/4 v3, 0x2

    iput v3, v1, Lcom/inka/ncg2/f;->_backend:I

    goto :goto_1

    :cond_1
    const-string v1, "OpenCORE"

    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/inka/ncg2/f$1;->c:Lcom/inka/ncg2/f;

    const/4 v3, 0x1

    iput v3, v1, Lcom/inka/ncg2/f;->_backend:I

    .line 59
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 60
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 63
    iget-object v1, p0, Lcom/inka/ncg2/f$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catch_0
    :goto_2
    iget-object v0, p0, Lcom/inka/ncg2/f$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
