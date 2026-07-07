.class Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "UDPHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;-><init>(ILandroid/net/ConnectivityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler$1;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler$1;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->access$000(Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
