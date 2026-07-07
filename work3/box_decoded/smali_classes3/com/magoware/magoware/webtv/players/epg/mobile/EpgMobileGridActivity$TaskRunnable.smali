.class Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$TaskRunnable;
.super Ljava/lang/Object;
.source "EpgMobileGridActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$TaskRunnable;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;)V
    .locals 0

    .line 385
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$TaskRunnable;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$TaskRunnable;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$500(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)V

    .line 390
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$TaskRunnable;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$600(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->redraw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :catchall_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$TaskRunnable;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$800(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
