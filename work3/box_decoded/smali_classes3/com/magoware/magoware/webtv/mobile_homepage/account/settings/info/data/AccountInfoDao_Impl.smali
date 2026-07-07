.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;
.super Ljava/lang/Object;
.source "AccountInfoDao_Impl.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfAccountInfo:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfAccountInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 33
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;->__insertionAdapterOfAccountInfo:Landroidx/room/EntityInsertionAdapter;

    .line 78
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;->__updateAdapterOfAccountInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;->__insertionAdapterOfAccountInfo:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;->__updateAdapterOfAccountInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method


# virtual methods
.method public getAccountInfo()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM AccountInfo"

    const/4 v1, 0x0

    .line 168
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 169
    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "AccountInfo"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl$5;

    invoke-direct {v4, p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl$5;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

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
            "accountInfo",
            "p1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl$3;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl$3;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "accountInfo",
            "p1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl$4;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl$4;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfo;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
