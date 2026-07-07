.class Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;
.super Ljava/lang/Object;
.source "EpgMobileGridActivity.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/players/epg/mobile/EPGClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onEventClicked$0$EpgMobileGridActivity$1(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 198
    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 199
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->genre:Ljava/lang/String;

    iput-object v2, v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->genre:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->program_title:Ljava/lang/String;

    iput-object v2, v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->program_title:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->program_description:Ljava/lang/String;

    iput-object v2, v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->program_description:Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->status:Ljava/lang/String;

    iput-object v2, v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->program_status:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->scheduled:Ljava/lang/String;

    iput-object v2, v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->program_scheduled:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->has_catchup:Ljava/lang/String;

    iput-object p1, v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->has_catchup:Ljava/lang/String;

    .line 205
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$200(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->program_ID:Ljava/lang/String;

    .line 207
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->program_status:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->program_status:Ljava/lang/String;

    const-string v1, "live"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->program_status:Ljava/lang/String;

    const-string v1, "catchup"

    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->program_status:Ljava/lang/String;

    const-string v1, "future"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object v2, v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->program_title:Ljava/lang/String;

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object v3, p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->genre:Ljava/lang/String;

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object v4, p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->program_description:Ljava/lang/String;

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object v5, p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->program_status:Ljava/lang/String;

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object v6, p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->program_scheduled:Ljava/lang/String;

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object v7, p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->has_catchup:Ljava/lang/String;

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    iget-object v8, p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->program_ID:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->showProgramInfoDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$002(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;Z)Z

    return-void
.end method

.method public onChannelClicked(ILcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V
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

.method public onEventClicked(IILcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V
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

    .line 188
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$000(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 189
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$002(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;Z)Z

    .line 190
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    sput-object p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 191
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {p1, p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$102(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    .line 192
    sget-object p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    if-eqz p1, :cond_0

    .line 193
    sget-object p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    sget-object p2, Lcom/magoware/magoware/webtv/util/Server;->imagesServer:Ljava/lang/String;

    const-string p3, "~"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    const-string p3, "%20"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->channel_icon2:Ljava/lang/String;

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$100(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string p2, "no epg"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 195
    sput-object p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$100(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$202(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$300(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    move-result-object p1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$200(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getPopupProgramInfoObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    new-instance p3, Lcom/magoware/magoware/webtv/players/epg/mobile/-$$Lambda$EpgMobileGridActivity$1$M4DLJJA-cncljfcUR-bdt7dYqWg;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/-$$Lambda$EpgMobileGridActivity$1$M4DLJJA-cncljfcUR-bdt7dYqWg;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;)V

    invoke-virtual {p1, p2, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 217
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$400(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$400(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 218
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$400(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 220
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$500(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)V

    :cond_3
    return-void
.end method

.method public onResetButtonClicked()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$600(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->access$600(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getSelectedEvent()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V

    return-void
.end method
