.class Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;
.super Ljava/lang/Object;
.source "MedialaanEPGService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;->requestByChannels(Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;Ljava/lang/String;Landroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;

.field final synthetic val$channelNumbers:Ljava/lang/String;

.field final synthetic val$event:Landroid/view/KeyEvent;

.field final synthetic val$listener:Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;Ljava/lang/String;Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;Landroid/view/KeyEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$channelNumbers",
            "val$listener",
            "val$event"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;->val$channelNumbers:Ljava/lang/String;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;->val$listener:Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;

    iput-object p4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;->val$event:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$MedialaanEPGService$1(Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;Landroid/view/KeyEvent;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;->access$100(Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;)Z

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;->processData(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 40
    :try_start_0
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;->val$channelNumbers:Ljava/lang/String;

    const/16 v2, -0x2d0

    invoke-interface {v0, v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getChannelsEPG(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;-><init>(Ljava/util/List;)V

    .line 42
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;->access$000(Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;)Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;->val$listener:Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;->val$event:Landroid/view/KeyEvent;

    new-instance v4, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/-$$Lambda$MedialaanEPGService$1$MWoq3ekSkCLUGQKQJk9nQ7_oC4c;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/-$$Lambda$MedialaanEPGService$1$MWoq3ekSkCLUGQKQJk9nQ7_oC4c;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
