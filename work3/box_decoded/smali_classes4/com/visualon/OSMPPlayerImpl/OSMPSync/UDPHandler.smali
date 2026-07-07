.class public abstract Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;
.super Ljava/lang/Object;
.source "UDPHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "UDPHandler"


# instance fields
.field private run:Z

.field private udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(ILandroid/net/ConnectivityManager;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->run:Z

    .line 26
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->udpSocket:Ljava/net/DatagramSocket;

    .line 28
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 29
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/16 v0, 0xc

    .line 31
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 33
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler$1;-><init>(Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;)V

    invoke-virtual {p2, p1, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getTrafficClass()I

    move-result p2

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->setTrafficClass(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/net/SocketException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;)Ljava/net/DatagramSocket;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->udpSocket:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method private decode([B)Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;
    .locals 5

    .line 105
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 106
    invoke-static {p1, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->id:J

    .line 108
    invoke-static {p1, v2, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->ts0:J

    const/16 v1, 0x10

    .line 110
    invoke-static {p1, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->ts1:J

    const/16 v1, 0x18

    .line 112
    invoke-static {p1, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->pts:J

    const/16 v1, 0x20

    const/4 v2, 0x4

    .line 114
    invoke-static {p1, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    move-result-object p1

    iput-object p1, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->state:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    return-object v0
.end method

.method private encode(Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;)[B
    .locals 4

    const/16 v0, 0x24

    .line 95
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 96
    iget-wide v1, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->id:J

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 97
    iget-wide v1, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->ts0:J

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 98
    iget-wide v1, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->ts1:J

    const/16 v3, 0x10

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 99
    iget-wide v1, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->pts:J

    const/16 v3, 0x18

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 100
    iget-object p1, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->state:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;->getValue()I

    move-result p1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->run:Z

    .line 91
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    return-void
.end method

.method public abstract initRequest()V
.end method

.method public abstract onMessage(Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;Ljava/lang/String;I)V
.end method

.method public run()V
    .locals 4

    const-string v0, "UDPHandler"

    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->run:Z

    .line 56
    :goto_0
    iget-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->run:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x1f40

    :try_start_0
    new-array v2, v1, [B

    .line 59
    new-instance v3, Ljava/net/DatagramPacket;

    invoke-direct {v3, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 60
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 61
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    .line 62
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-direct {p0, v2}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->decode([B)Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;

    move-result-object v2

    .line 64
    invoke-virtual {p0, v2, v3, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->onMessage(Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;Ljava/lang/String;I)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received packet: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "IO Error:"

    .line 69
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->run:Z

    .line 71
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Socket Error:"

    .line 67
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public send(Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "UDPHandler"

    .line 78
    :try_start_0
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->encode(Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;)[B

    move-result-object p1

    .line 79
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    .line 80
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    invoke-direct {v1, p1, v2, p2, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 81
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {p1, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "IO Error:"

    .line 85
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "Socket Error:"

    .line 83
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
