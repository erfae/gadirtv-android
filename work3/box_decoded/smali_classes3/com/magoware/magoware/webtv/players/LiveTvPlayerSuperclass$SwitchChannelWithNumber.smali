.class Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;
.super Landroid/os/AsyncTask;
.source "LiveTvPlayerSuperclass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchChannelWithNumber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1995
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$1;)V
    .locals 0

    .line 1995
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1998
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "ChannelChangeTask"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1999
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 1995
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const-string p1, ""

    .line 2004
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2005
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1600(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2008
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1700(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2014
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2016
    iget v2, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    if-eq v2, v1, :cond_0

    const-string v1, "NUMBERS"

    .line 2020
    sput-object v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 2021
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    :cond_0
    const/4 v1, 0x0

    .line 2024
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1000(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v0, :cond_1

    .line 2026
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1000(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2027
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_POSITION:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2031
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1700(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2010
    :catch_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    const v1, 0x7f1402f3

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2011
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1700(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 1995
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$SwitchChannelWithNumber;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
