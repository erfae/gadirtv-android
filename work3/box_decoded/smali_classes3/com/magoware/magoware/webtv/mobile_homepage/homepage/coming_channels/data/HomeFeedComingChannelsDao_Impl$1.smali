.class Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "HomeFeedComingChannelsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 49
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 50
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelNumber()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 51
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 52
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl;->access$000(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl;)Lcom/magoware/magoware/webtv/data/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelEpgData()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/magoware/magoware/webtv/data/Converters;->listToJsonEpgData(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    if-nez p2, :cond_1

    .line 59
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 61
    :cond_1
    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 41
    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `HomeFeedComingChannels` (`id`,`channelNumber`,`title`,`channelEpgData`) VALUES (?,?,?,?)"

    return-object v0
.end method
