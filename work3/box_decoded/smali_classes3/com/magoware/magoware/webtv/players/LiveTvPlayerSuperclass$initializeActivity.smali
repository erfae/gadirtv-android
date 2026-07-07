.class Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;
.super Landroid/os/AsyncTask;
.source "LiveTvPlayerSuperclass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initializeActivity"
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
.field channelNumbers:Ljava/util/ArrayList;

.field channel_to_play:I

.field first_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field progress_dialog_init:Landroid/app/ProgressDialog;

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

    .line 1779
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$1;)V
    .locals 0

    .line 1779
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1797
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "InitializeActivityTask"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1798
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$800(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    .line 1799
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$900(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    .line 1801
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget v0, p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    if-nez v0, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1803
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget v0, v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1801
    :goto_0
    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1002(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1805
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->channelNumbers:Ljava/util/ArrayList;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1806
    :goto_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1000(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1807
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->channelNumbers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1000(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1811
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget v0, v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    if-nez v0, :cond_2

    .line 1812
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {v0, p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getFirstChannel(ZI)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->first_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    goto :goto_2

    .line 1814
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget v1, v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getFirstChannel(ZI)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->first_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 1816
    :goto_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->first_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    if-eqz v0, :cond_7

    .line 1817
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1818
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1819
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1100(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget v1, v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    if-nez v1, :cond_3

    .line 1820
    iput v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->channel_to_play:I

    goto :goto_3

    .line 1822
    :cond_3
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1823
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->first_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    iput v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->channel_to_play:I

    goto :goto_3

    .line 1824
    :cond_4
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1100(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget v1, v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    .line 1825
    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v2

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->genre_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 1826
    iput v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->channel_to_play:I

    goto :goto_3

    .line 1828
    :cond_5
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->first_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    iput v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->channel_to_play:I

    goto :goto_3

    .line 1832
    :cond_6
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->first_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    iput v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->channel_to_play:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1837
    :cond_7
    :goto_3
    :try_start_1
    iget v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->channel_to_play:I

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1838
    iget v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->channel_to_play:I

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    goto :goto_4

    .line 1840
    :cond_8
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->first_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1843
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->first_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 1845
    :goto_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    if-eqz v0, :cond_a

    .line 1846
    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->pin_protected:Ljava/lang/String;

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->openScheduledPinProtected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1847
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->first_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    goto :goto_5

    .line 1848
    :cond_9
    sget-object v0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->openScheduledPinProtected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1849
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->openScheduledPinProtected:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1855
    :cond_a
    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 1852
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    .line 1853
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

    .line 1779
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1860
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1861
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->progress_dialog_init:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->progress_dialog_init:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1864
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1865
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    const v2, 0x7f14017e

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1867
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1200(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    .line 1868
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1300(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    .line 1870
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    if-eqz p1, :cond_2

    const-string p1, "MAIN_MENU"

    .line 1872
    sput-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->accessWay:Ljava/lang/String;

    .line 1873
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    :cond_2
    :goto_0
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

    .line 1779
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 1788
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->progress_dialog_init:Landroid/app/ProgressDialog;

    .line 1789
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    const v2, 0x7f14013d

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1790
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->progress_dialog_init:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1791
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$initializeActivity;->progress_dialog_init:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1792
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
