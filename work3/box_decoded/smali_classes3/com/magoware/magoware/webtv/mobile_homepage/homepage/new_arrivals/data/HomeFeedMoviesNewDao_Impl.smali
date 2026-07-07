.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;
.super Ljava/lang/Object;
.source "HomeFeedMoviesNewDao_Impl.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfHomeFeedMoviesNew:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfHomeFeedMoviesNew:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;",
            ">;"
        }
    .end annotation
.end field


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
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 34
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;->__insertionAdapterOfHomeFeedMoviesNew:Landroidx/room/EntityInsertionAdapter;

    .line 61
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;->__updateAdapterOfHomeFeedMoviesNew:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;->__updateAdapterOfHomeFeedMoviesNew:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method


# virtual methods
.method public getHomeFeedNewArrivals()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM HomeFeedMoviesNew ORDER BY id DESC"

    const/4 v1, 0x0

    .line 124
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 125
    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "HomeFeedMoviesNew"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl$4;

    invoke-direct {v4, p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl$4;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public insertAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "homeFeedMoviesMoviesNew"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 94
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;->__insertionAdapterOfHomeFeedMoviesNew:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 97
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 100
    throw p1
.end method

.method public update(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "homeFeedMoviesMoviesNew",
            "p1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl$3;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl$3;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
