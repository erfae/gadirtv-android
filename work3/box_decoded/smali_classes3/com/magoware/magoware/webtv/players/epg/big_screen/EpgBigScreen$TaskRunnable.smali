.class Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$TaskRunnable;
.super Ljava/lang/Object;
.source "EpgBigScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 363
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$TaskRunnable;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$1;)V
    .locals 0

    .line 363
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$TaskRunnable;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$TaskRunnable;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->access$200(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;)V

    .line 368
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$TaskRunnable;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->access$000(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;)Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->redraw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :catchall_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$TaskRunnable;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->access$300(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
