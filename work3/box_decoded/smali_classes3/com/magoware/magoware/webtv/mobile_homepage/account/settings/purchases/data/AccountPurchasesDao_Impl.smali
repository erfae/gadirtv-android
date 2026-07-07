.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;
.super Ljava/lang/Object;
.source "AccountPurchasesDao_Impl.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfAccountPurchases:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;",
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;->__insertionAdapterOfAccountPurchases:Landroidx/room/EntityInsertionAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public getAccountPurchases()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM AccountPurchases"

    const/4 v1, 0x0

    .line 79
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "AccountPurchases"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl$2;

    invoke-direct {v4, p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public insertAllPurchases(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "accountPurchases"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchases;",
            ">;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 67
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;->__insertionAdapterOfAccountPurchases:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 70
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 73
    throw p1
.end method
