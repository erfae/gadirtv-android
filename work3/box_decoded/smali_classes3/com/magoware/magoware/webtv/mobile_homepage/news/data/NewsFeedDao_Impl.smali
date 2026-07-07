.class public final Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;
.super Ljava/lang/Object;
.source "NewsFeedDao_Impl.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfNewsFeed:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfClearTable:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 34
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__insertionAdapterOfNewsFeed:Landroidx/room/EntityInsertionAdapter;

    .line 65
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__insertionAdapterOfNewsFeed:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method


# virtual methods
.method public clearTable()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 94
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 97
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 98
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 101
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 100
    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 101
    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 102
    throw v1
.end method

.method public getNews(J)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM NewsFeed WHERE timestamp = :id"

    const/4 v1, 0x1

    .line 151
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 154
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "NewsFeed"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl$5;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl$5;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getNewsFeed()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM NewsFeed"

    const/4 v1, 0x0

    .line 108
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 109
    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "NewsFeed"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl$4;

    invoke-direct {v4, p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl$4;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public insertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "newsFeed",
            "p1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl$3;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl$3;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
