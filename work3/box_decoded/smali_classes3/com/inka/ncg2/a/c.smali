.class Lcom/inka/ncg2/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/inka/ncg2/a/c;->b:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/inka/ncg2/a/c;->b:Landroid/content/Context;

    return-void
.end method

.method public static c()J
    .locals 13

    const-string v0, "time.nist.gov"

    const-string v1, "time.bora.net"

    const-string v2, "time.ewha.net"

    const-string v3, "time.korserve.net"

    const-string v4, "time.nuri.net"

    .line 61
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 68
    :try_start_0
    new-instance v5, Ljava/net/InetSocketAddress;

    aget-object v6, v0, v4

    const/16 v7, 0x25

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 70
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    const/16 v7, 0x3e8

    .line 71
    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 72
    invoke-virtual {v6, v5, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 74
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    invoke-virtual {v5, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .line 77
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 78
    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    const-wide/16 v4, 0x0

    move-wide v5, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_0

    add-int/lit8 v8, v7, -0x1

    sub-int/2addr v8, v4

    mul-int/lit8 v8, v8, 0x8

    .line 84
    aget-byte v9, v2, v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v9, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    shl-long v8, v9, v8

    add-long/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const-wide v0, 0x83aa7e80L

    sub-long/2addr v5, v0

    return-wide v5

    :catch_0
    move-exception v5

    .line 92
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v5

    .line 90
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/inka/ncg2/a/c;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/inka/ncg2/a/c;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 45
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .line 46
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 47
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method
