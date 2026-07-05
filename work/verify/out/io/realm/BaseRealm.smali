.class abstract Lio/realm/BaseRealm;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/BaseRealm$InstanceCallback;,
        Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;,
        Lio/realm/BaseRealm$RealmObjectContext;
    }
.end annotation


# static fields
.field private static final INCORRECT_THREAD_CLOSE_MESSAGE:Ljava/lang/String; = "Realm access from incorrect thread. Realm instance can only be closed on the thread it was created."

.field private static final NOT_IN_TRANSACTION_MESSAGE:Ljava/lang/String; = "Changing Realm data can only be done from inside a transaction."

.field public static final WRITE_EXECUTOR:Lio/realm/internal/async/RealmThreadPoolExecutor;

.field public static volatile applicationContext:Landroid/content/Context;

.field public static final asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

.field public static final objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;


# instance fields
.field public final configuration:Lio/realm/RealmConfiguration;

.field public final frozen:Z

.field private realmCache:Lio/realm/RealmCache;

.field private schemaChangedCallback:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

.field public sharedRealm:Lio/realm/internal/OsSharedRealm;

.field private shouldCloseSharedRealm:Z

.field public final threadId:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lio/realm/internal/async/RealmThreadPoolExecutor;->newDefaultExecutor()Lio/realm/internal/async/RealmThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lio/realm/BaseRealm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    .line 2
    invoke-static {}, Lio/realm/internal/async/RealmThreadPoolExecutor;->newSingleThreadExecutor()Lio/realm/internal/async/RealmThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lio/realm/BaseRealm;->WRITE_EXECUTOR:Lio/realm/internal/async/RealmThreadPoolExecutor;

    .line 3
    new-instance v0, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-direct {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;-><init>()V

    sput-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    return-void
.end method

.method public constructor <init>(Lio/realm/RealmCache;Lio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$VersionID;)V
    .registers 10
    .param p2    # Lio/realm/internal/OsSchemaInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/realm/RealmCache;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Lio/realm/BaseRealm$1;

    invoke-direct {v1, p0}, Lio/realm/BaseRealm$1;-><init>(Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/BaseRealm;->schemaChangedCallback:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/BaseRealm;->threadId:J

    .line 5
    iput-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    if-eqz p2, :cond_2e

    .line 7
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 8
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v2

    invoke-static {v2}, Lio/realm/BaseRealm;->createMigrationCallback(Lio/realm/RealmMigration;)Lio/realm/internal/OsSharedRealm$MigrationCallback;

    move-result-object v2

    goto :goto_2f

    :cond_2e
    move-object v2, v1

    .line 9
    :goto_2f
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getInitialDataTransaction()Lio/realm/Realm$Transaction;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 10
    new-instance v1, Lio/realm/BaseRealm$2;

    invoke-direct {v1, p0, v3}, Lio/realm/BaseRealm$2;-><init>(Lio/realm/BaseRealm;Lio/realm/Realm$Transaction;)V

    .line 11
    :cond_3a
    new-instance v3, Lio/realm/internal/OsRealmConfig$Builder;

    invoke-direct {v3, v0}, Lio/realm/internal/OsRealmConfig$Builder;-><init>(Lio/realm/RealmConfiguration;)V

    new-instance v0, Ljava/io/File;

    sget-object v4, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, ".realm.temp"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lio/realm/internal/OsRealmConfig$Builder;->fifoFallbackDir(Ljava/io/File;)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object v0

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v0, v3}, Lio/realm/internal/OsRealmConfig$Builder;->autoUpdateNotification(Z)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v2}, Lio/realm/internal/OsRealmConfig$Builder;->migrationCallback(Lio/realm/internal/OsSharedRealm$MigrationCallback;)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p2}, Lio/realm/internal/OsRealmConfig$Builder;->schemaInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object p2

    .line 16
    invoke-virtual {p2, v1}, Lio/realm/internal/OsRealmConfig$Builder;->initializationCallback(Lio/realm/internal/OsSharedRealm$InitializationCallback;)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object p2

    .line 17
    invoke-static {p2, p3}, Lio/realm/internal/OsSharedRealm;->getInstance(Lio/realm/internal/OsRealmConfig$Builder;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/internal/OsSharedRealm;

    move-result-object p2

    iput-object p2, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 18
    invoke-virtual {p2}, Lio/realm/internal/OsSharedRealm;->isFrozen()Z

    move-result p2

    iput-boolean p2, p0, Lio/realm/BaseRealm;->frozen:Z

    .line 19
    iput-boolean v3, p0, Lio/realm/BaseRealm;->shouldCloseSharedRealm:Z

    .line 20
    iget-object p2, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object p3, p0, Lio/realm/BaseRealm;->schemaChangedCallback:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

    invoke-virtual {p2, p3}, Lio/realm/internal/OsSharedRealm;->registerSchemaChangedCallback(Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V

    .line 21
    iput-object p1, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lio/realm/BaseRealm$1;

    invoke-direct {v0, p0}, Lio/realm/BaseRealm$1;-><init>(Lio/realm/BaseRealm;)V

    iput-object v0, p0, Lio/realm/BaseRealm;->schemaChangedCallback:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/BaseRealm;->threadId:J

    .line 25
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    iput-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    .line 27
    iput-object p1, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 28
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->isFrozen()Z

    move-result p1

    iput-boolean p1, p0, Lio/realm/BaseRealm;->frozen:Z

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lio/realm/BaseRealm;->shouldCloseSharedRealm:Z

    return-void
.end method

.method public static synthetic access$000(Lio/realm/RealmMigration;)Lio/realm/internal/OsSharedRealm$MigrationCallback;
    .registers 1

    invoke-static {p0}, Lio/realm/BaseRealm;->createMigrationCallback(Lio/realm/RealmMigration;)Lio/realm/internal/OsSharedRealm$MigrationCallback;

    move-result-object p0

    return-object p0
.end method

.method private static createMigrationCallback(Lio/realm/RealmMigration;)Lio/realm/internal/OsSharedRealm$MigrationCallback;
    .registers 2

    new-instance v0, Lio/realm/BaseRealm$6;

    invoke-direct {v0, p0}, Lio/realm/BaseRealm$6;-><init>(Lio/realm/RealmMigration;)V

    return-object v0
.end method


# virtual methods
.method public final addListener(Lio/realm/RealmChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_22

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Listeners cannot be used on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lio/realm/BaseRealm;->frozen:Z

    if-nez v0, :cond_1a

    .line 4
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/RealmNotifier;->addChangeListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    return-void

    .line 5
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "It is not possible to add a change listener to a frozen Realm since it never changes."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract asFlowable()Lio/reactivex/Flowable;
.end method

.method public beginTransaction()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->beginTransaction()V

    return-void
.end method

.method public cancelTransaction()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->cancelTransaction()V

    return-void
.end method

.method public final checkAllowQueriesOnUiThread()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 2
    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    invoke-interface {v0}, Lio/realm/internal/Capabilities;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isAllowQueriesOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 4
    :cond_15
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Queries on the UI thread have been disabled. They can be enabled by setting \'RealmConfiguration.Builder.allowQueriesOnUiThread(true)\'."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final checkAllowWritesOnUiThread()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 2
    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    invoke-interface {v0}, Lio/realm/internal/Capabilities;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isAllowWritesOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 4
    :cond_15
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Running transactions on the UI thread has been disabled. It can be enabled by setting \'RealmConfiguration.Builder.allowWritesOnUiThread(true)\'."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final checkIfValid()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_26

    .line 2
    iget-boolean v0, p0, Lio/realm/BaseRealm;->frozen:Z

    if-nez v0, :cond_25

    iget-wide v0, p0, Lio/realm/BaseRealm;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1d

    goto :goto_25

    .line 3
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :goto_25
    return-void

    .line 4
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkIfValidAndInTransaction()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Changing Realm data can only be done from inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkNotInSync()V
    .registers 2

    iget-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lio/realm/BaseRealm;->frozen:Z

    if-nez v0, :cond_1b

    iget-wide v0, p0, Lio/realm/BaseRealm;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    goto :goto_1b

    .line 2
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm instance can only be closed on the thread it was created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    if-eqz v0, :cond_23

    .line 4
    invoke-virtual {v0, p0}, Lio/realm/RealmCache;->release(Lio/realm/BaseRealm;)V

    goto :goto_33

    :cond_23
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    .line 6
    iget-object v1, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    if-eqz v1, :cond_33

    iget-boolean v2, p0, Lio/realm/BaseRealm;->shouldCloseSharedRealm:Z

    if-eqz v2, :cond_33

    .line 7
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 8
    iput-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    :cond_33
    :goto_33
    return-void
.end method

.method public commitTransaction()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->commitTransaction()V

    return-void
.end method

.method public deleteAll()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getAll()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmObjectSchema;

    .line 3
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    invoke-virtual {v1}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->clear()V

    goto :goto_f

    :cond_2b
    return-void
.end method

.method public final doClose()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    .line 2
    iget-object v1, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    if-eqz v1, :cond_10

    iget-boolean v2, p0, Lio/realm/BaseRealm;->shouldCloseSharedRealm:Z

    if-eqz v2, :cond_10

    .line 3
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 4
    iput-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    :cond_10
    return-void
.end method

.method public final finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/realm/BaseRealm;->shouldCloseSharedRealm:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    .line 3
    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory."

    .line 4
    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    if-eqz v0, :cond_26

    .line 6
    invoke-virtual {v0}, Lio/realm/RealmCache;->leak()V

    .line 7
    :cond_26
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public abstract freeze()Lio/realm/BaseRealm;
.end method

.method public final get(Ljava/lang/Class;JLjava/util/List;)Lio/realm/RealmModel;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;JZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p2, p3}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    .line 7
    iget-object p2, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {p2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;
    .registers 15
    .param p1    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "J)TE;"
        }
    .end annotation

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_10

    .line 8
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/realm/RealmSchema;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p2

    goto :goto_18

    :cond_10
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p2

    :goto_18
    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2d

    .line 9
    new-instance p1, Lio/realm/DynamicRealmObject;

    cmp-long v0, p3, v1

    if-eqz v0, :cond_27

    .line 10
    invoke-virtual {p2, p3, p4}, Lio/realm/internal/Table;->getCheckedRow(J)Lio/realm/internal/CheckedRow;

    move-result-object p2

    goto :goto_29

    :cond_27
    sget-object p2, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    :goto_29
    invoke-direct {p1, p0, p2}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    goto :goto_52

    .line 11
    :cond_2d
    iget-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v3

    cmp-long v0, p3, v1

    if-eqz v0, :cond_3c

    .line 12
    invoke-virtual {p2, p3, p4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object p2

    goto :goto_3e

    :cond_3c
    sget-object p2, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    :goto_3e
    move-object v6, p2

    .line 13
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    move-object v4, p1

    move-object v5, p0

    .line 14
    invoke-virtual/range {v3 .. v9}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p1

    :goto_52
    return-object p1
.end method

.method public final get(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;
    .registers 11
    .param p1    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "Lio/realm/internal/UncheckedRow;",
            ")TE;"
        }
    .end annotation

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    :goto_5
    if-eqz p2, :cond_11

    .line 1
    new-instance p1, Lio/realm/DynamicRealmObject;

    invoke-static {p3}, Lio/realm/internal/CheckedRow;->getFromRow(Lio/realm/internal/UncheckedRow;)Lio/realm/internal/CheckedRow;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    goto :goto_2b

    .line 2
    :cond_11
    iget-object p2, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {p2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    .line 4
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p1

    :goto_2b
    return-object p1
.end method

.method public getConfiguration()Lio/realm/RealmConfiguration;
    .registers 2

    iget-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    return-object v0
.end method

.method public final getEmbeddedObjectRow(Ljava/lang/String;Lio/realm/internal/RealmObjectProxy;Ljava/lang/String;Lio/realm/RealmSchema;Lio/realm/RealmObjectSchema;)Lio/realm/internal/Row;
    .registers 13

    .line 1
    invoke-virtual {p5, p3}, Lio/realm/RealmObjectSchema;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p5, p3}, Lio/realm/RealmObjectSchema;->getFieldType(Ljava/lang/String;)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 3
    invoke-interface {p2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p2

    .line 4
    invoke-virtual {p5, p3}, Lio/realm/RealmObjectSchema;->getFieldType(Ljava/lang/String;)Lio/realm/RealmFieldType;

    move-result-object v3

    .line 5
    sget-object v4, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_21

    sget-object v4, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v3, v4, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v3, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v3, 0x1

    :goto_22
    if-eqz v3, :cond_58

    .line 6
    invoke-virtual {p5, p3}, Lio/realm/RealmObjectSchema;->getPropertyClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 8
    invoke-interface {p2, v0, v1, v2}, Lio/realm/internal/Row;->createEmbeddedObject(JLio/realm/RealmFieldType;)J

    move-result-wide p2

    .line 9
    invoke-virtual {p4, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lio/realm/internal/Table;->getCheckedRow(J)Lio/realm/internal/CheckedRow;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p5}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v6

    aput-object p3, p4, v5

    const/4 p3, 0x2

    aput-object v3, p4, p3

    const/4 p3, 0x3

    aput-object p1, p4, p3

    const-string p1, "Parent type %s expects that property \'%s\' be of type %s but was %s."

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v5, [Ljava/lang/Object;

    aput-object p3, p2, v6

    const-string p3, "Field \'%s\' does not contain a valid link"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNumberOfActiveVersions()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 3
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getNumberOfVersions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSchema()Lio/realm/RealmSchema;
.end method

.method public getVersion()J
    .registers 3

    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v0}, Lio/realm/internal/OsObjectStore;->getSchemaVersion(Lio/realm/internal/OsSharedRealm;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAutoRefresh()Z
    .registers 2

    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isAutoRefresh()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lio/realm/BaseRealm;->frozen:Z

    if-nez v0, :cond_1b

    iget-wide v0, p0, Lio/realm/BaseRealm;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    goto :goto_1b

    .line 2
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    :goto_29
    return v0
.end method

.method public abstract isEmpty()Z
.end method

.method public isFrozen()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-boolean v0, p0, Lio/realm/BaseRealm;->frozen:Z

    return v0

    .line 3
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInTransaction()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isInTransaction()Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkAllowQueriesOnUiThread()V

    .line 3
    invoke-virtual {p0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-nez v0, :cond_12

    .line 4
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->refresh()V

    return-void

    .line 5
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refresh a Realm instance inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeAllListeners()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    .line 3
    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm."

    .line 4
    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_17
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v0, p0}, Lio/realm/internal/RealmNotifier;->removeChangeListeners(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeListener(Lio/realm/RealmChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    .line 3
    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm."

    .line 4
    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_19
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/RealmNotifier;->removeChangeListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    return-void

    .line 6
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAutoRefresh(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSharedRealm;->setAutoRefresh(Z)V

    return-void
.end method

.method public stopWaitForChange()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    if-eqz v0, :cond_12

    .line 2
    new-instance v1, Lio/realm/BaseRealm$3;

    invoke-direct {v1, p0}, Lio/realm/BaseRealm$3;-><init>(Lio/realm/BaseRealm;)V

    .line 3
    monitor-enter v0

    .line 4
    :try_start_a
    invoke-interface {v1}, Lio/realm/RealmCache$Callback0;->onCall()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 5
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1

    .line 6
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForChange()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    invoke-virtual {p0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-nez v0, :cond_25

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 4
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->waitForChange()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5
    iget-object v1, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->refresh()V

    :cond_1c
    return v0

    .line 6
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot wait for changes inside a Looper thread. Use RealmChangeListeners instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot wait for changes inside of a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeCopyTo(Ljava/io/File;)V
    .registers 4

    if-eqz p1, :cond_c

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSharedRealm;->writeCopy(Ljava/io/File;[B)V

    return-void

    .line 3
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The destination argument cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeEncryptedCopyTo(Ljava/io/File;[B)V
    .registers 4

    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/OsSharedRealm;->writeCopy(Ljava/io/File;[B)V

    return-void

    .line 3
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The destination argument cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
