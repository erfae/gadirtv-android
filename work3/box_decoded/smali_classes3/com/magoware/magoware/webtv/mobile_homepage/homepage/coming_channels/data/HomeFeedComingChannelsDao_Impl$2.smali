.class Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
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

    .line 65
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

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

    .line 73
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 74
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelNumber()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 75
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 76
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl;->access$000(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl;)Lcom/magoware/magoware/webtv/data/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelEpgData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/data/Converters;->listToJsonEpgData(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 83
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 85
    :cond_1
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x5

    .line 87
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getId()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

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

    .line 65
    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `HomeFeedComingChannels` SET `id` = ?,`channelNumber` = ?,`title` = ?,`channelEpgData` = ? WHERE `id` = ?"

    return-object v0
.end method
