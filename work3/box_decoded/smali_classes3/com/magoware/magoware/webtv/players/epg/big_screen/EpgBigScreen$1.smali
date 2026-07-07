.class Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$1;
.super Ljava/lang/Object;
.source "EpgBigScreen.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelClicked(ILcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelPosition",
            "epgChannel"
        }
    .end annotation

    return-void
.end method

.method public onEventClicked(IILcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelPosition",
            "programPosition",
            "epgEvent"
        }
    .end annotation

    .line 137
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->dialog:Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->dialog:Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    invoke-virtual {p1, p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->showEventInfo(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->access$000(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;)Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->loadProgramDetails(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    return-void
.end method

.method public onResetButtonClicked()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->access$000(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;)Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;ZLandroid/view/KeyEvent;)V

    return-void
.end method
