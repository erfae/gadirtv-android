.class Lcom/magoware/magoware/webtv/util/NetworkUtils$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/util/NetworkUtils;->registerConnectivityNetworkMonitorForAPI21AndUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/util/NetworkUtils;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/util/NetworkUtils;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/magoware/magoware/webtv/util/NetworkUtils$1;->this$0:Lcom/magoware/magoware/webtv/util/NetworkUtils;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "network"
        }
    .end annotation

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "network"
        }
    .end annotation

    return-void
.end method
