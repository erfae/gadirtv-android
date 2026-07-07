.class Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "TvMediaMetadataDAO_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 40
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;)V
    .locals 4
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

    .line 48
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 49
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 53
    :goto_0
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getCollectionId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 54
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getCollectionId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 58
    :goto_1
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 59
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 63
    :goto_2
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getSearchableTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 64
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getSearchableTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 69
    :goto_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;->access$000(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;)Lcom/magoware/magoware/webtv/data/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/data/Converters;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 71
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 73
    :cond_4
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 75
    :goto_4
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 76
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 78
    :cond_5
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 80
    :goto_5
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getYear()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_6

    .line 81
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 83
    :cond_6
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 85
    :goto_6
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getPlaybackDurationMillis()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_7

    .line 86
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 88
    :cond_7
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getPlaybackDurationMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 90
    :goto_7
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getPlaybackPositionMillis()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_8

    .line 91
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 93
    :cond_8
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getPlaybackPositionMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 96
    :goto_8
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;->access$000(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;)Lcom/magoware/magoware/webtv/data/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getRatings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/data/Converters;->stringListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_9

    .line 98
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 100
    :cond_9
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    :goto_9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;->access$000(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;)Lcom/magoware/magoware/webtv/data/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getGenres()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/data/Converters;->stringListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_a

    .line 105
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_a

    .line 107
    :cond_a
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 109
    :goto_a
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_b

    .line 110
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_b

    .line 112
    :cond_b
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 114
    :goto_b
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getTrackNumber()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xd

    if-nez v0, :cond_c

    .line 115
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_c

    .line 117
    :cond_c
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getTrackNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 120
    :goto_c
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;->access$000(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;)Lcom/magoware/magoware/webtv/data/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getArtUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/data/Converters;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_d

    .line 122
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_d

    .line 124
    :cond_d
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_d
    const/16 v0, 0xf

    .line 126
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getArtAspectRatio()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 128
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getHidden()Z

    move-result v0

    const/16 v1, 0x10

    int-to-long v2, v0

    .line 129
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 131
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getWatchNext()Z

    move-result v0

    const/16 v1, 0x11

    int-to-long v2, v0

    .line 132
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x12

    .line 133
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getProgramType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 134
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getResumePosition()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x13

    if-nez v0, :cond_e

    .line 135
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_e

    .line 137
    :cond_e
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->getResumePosition()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_e
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

    .line 40
    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `TvMediaMetadata` (`id`,`collectionId`,`title`,`searchableTitle`,`contentUri`,`author`,`year`,`playbackDurationMillis`,`playbackPositionMillis`,`ratings`,`genres`,`description`,`trackNumber`,`artUri`,`artAspectRatio`,`hidden`,`watchNext`,`programType`,`resumePosition`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
