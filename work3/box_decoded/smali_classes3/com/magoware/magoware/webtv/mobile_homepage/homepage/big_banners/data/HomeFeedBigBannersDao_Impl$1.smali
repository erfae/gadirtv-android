.class Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "HomeFeedBigBannersDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 27
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;)V
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

    .line 35
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 36
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 37
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 41
    :goto_0
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 42
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    :goto_1
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;->getLink()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 47
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;->getLink()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
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

    .line 27
    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `HomeFeedBigBanners` (`id`,`name`,`imgUrl`,`link`) VALUES (?,?,?,?)"

    return-object v0
.end method
