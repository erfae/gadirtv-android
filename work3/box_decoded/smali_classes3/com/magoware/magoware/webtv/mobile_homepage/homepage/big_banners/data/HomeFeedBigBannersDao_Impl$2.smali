.class Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl$2;
.super Ljava/lang/Object;
.source "HomeFeedBigBannersDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl;->getHomeFeedBigBanners()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl$2;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl;->access$000(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "id"

    .line 76
    invoke-static {v0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    .line 77
    invoke-static {v0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "imgUrl"

    .line 78
    invoke-static {v0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "link"

    .line 79
    invoke-static {v0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 80
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 84
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 86
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 88
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 90
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 91
    new-instance v10, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;

    invoke-direct {v10, v6, v7, v8, v9}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 97
    throw v1
.end method

.method protected finalize()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
