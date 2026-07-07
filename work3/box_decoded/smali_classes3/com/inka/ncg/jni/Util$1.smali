.class final Lcom/inka/ncg/jni/Util$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inka/ncg/jni/Util;->getMediaPlayerBackend()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/inka/ncg/jni/Util$1;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/inka/ncg/jni/Util$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "detectBackend"

    .line 641
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    .line 642
    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    sput v3, Lcom/inka/ncg/jni/Util;->_socketPort:I

    .line 643
    iget-object v3, p0, Lcom/inka/ncg/jni/Util$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 645
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    const-string v4, "accepted connection"

    .line 646
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x800

    new-array v5, v5, [B

    const/4 v6, -0x1

    :goto_0
    if-gtz v6, :cond_0

    .line 653
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    goto :goto_0

    .line 655
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v2, v6}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "stagefright"

    .line 657
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v2, 0x2

    .line 658
    sput v2, Lcom/inka/ncg/jni/Util;->_backend:I

    goto :goto_1

    :cond_1
    const-string v2, "OpenCORE"

    .line 659
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    .line 660
    sput v2, Lcom/inka/ncg/jni/Util;->_backend:I

    .line 663
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 664
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 666
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    :goto_2
    iget-object v0, p0, Lcom/inka/ncg/jni/Util$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_3
    iget-object v1, p0, Lcom/inka/ncg/jni/Util$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
