.class final Lio/realm/RealmCache;
.super Ljava/lang/Object;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmCache$CreateRealmRunnable;,
        Lio/realm/RealmCache$RealmCacheType;,
        Lio/realm/RealmCache$ThreadConfinedReferenceCounter;,
        Lio/realm/RealmCache$GlobalReferenceCounter;,
        Lio/realm/RealmCache$ReferenceCounter;,
        Lio/realm/RealmCache$Callback0;,
        Lio/realm/RealmCache$Callback;
    }
.end annotation


# static fields
.field private static final ASYNC_CALLBACK_NULL_MSG:Ljava/lang/String; = "The callback cannot be null."

.field private static final ASYNC_NOT_ALLOWED_MSG:Ljava/lang/String; = "Realm instances cannot be loaded asynchronously on a non-looper thread."

.field private static final DIFFERENT_KEY_MESSAGE:Ljava/lang/String; = "Wrong key used to decrypt Realm."

.field private static final WRONG_REALM_CLASS_MESSAGE:Ljava/lang/String; = "The type of Realm class must be Realm or DynamicRealm."

.field private static final cachesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/RealmCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final leakedCaches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/realm/RealmCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private configuration:Lio/realm/RealmConfiguration;

.field private final isLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pendingRealmFileCreation:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final realmPath:Ljava/lang/String;

.field private final refAndCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/realm/internal/util/Pair<",
            "Lio/realm/RealmCache$RealmCacheType;",
            "Lio/realm/internal/OsSharedRealm$VersionID;",
            ">;",
            "Lio/realm/RealmCache$ReferenceCounter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/realm/RealmCache;->cachesList:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lio/realm/RealmCache;->leakedCaches:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/realm/RealmCache;->isLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/realm/RealmCache;->pendingRealmFileCreation:Ljava/util/Set;

    .line 5
    iput-object p1, p0, Lio/realm/RealmCache;->realmPath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$800(Ljava/lang/String;Ljava/io/File;)V
    .registers 2

    invoke-static {p0, p1}, Lio/realm/RealmCache;->copyFileIfNeeded(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method private static copyAssetFileIfNeeded(Lio/realm/RealmConfiguration;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->hasAssetFile()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getRealmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getRealmFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lio/realm/internal/ObjectServerFacade;->getFacade(Z)Lio/realm/internal/ObjectServerFacade;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p0}, Lio/realm/internal/ObjectServerFacade;->getSyncServerCertificateAssetName(Lio/realm/RealmConfiguration;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v0, :cond_28

    if-eqz v2, :cond_30

    .line 6
    :cond_28
    new-instance v3, Lio/realm/RealmCache$1;

    invoke-direct {v3, v0, p0, v2, v1}, Lio/realm/RealmCache$1;-><init>(Ljava/io/File;Lio/realm/RealmConfiguration;ZLjava/lang/String;)V

    invoke-static {p0, v3}, Lio/realm/internal/OsObjectStore;->callWithLock(Lio/realm/RealmConfiguration;Ljava/lang/Runnable;)Z

    :cond_30
    return-void
.end method

.method private static copyFileIfNeeded(Ljava/lang/String;Ljava/io/File;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 2
    :try_start_8
    sget-object v1, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_12} :catch_69
    .catchall {:try_start_8 .. :try_end_12} :catchall_66

    if-eqz v1, :cond_4d

    .line 3
    :try_start_14
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_49
    .catchall {:try_start_14 .. :try_end_19} :catchall_45

    const/16 p1, 0x1000

    :try_start_1b
    new-array p1, p1, [B

    .line 4
    :goto_1d
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_29

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, p1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_28} :catch_43
    .catchall {:try_start_1b .. :try_end_28} :catchall_41

    goto :goto_1d

    .line 6
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    .line 7
    :goto_2e
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p0

    if-nez v0, :cond_36

    move-object v0, p0

    :cond_36
    :goto_36
    if-nez v0, :cond_39

    return-void

    .line 8
    :cond_39
    new-instance p0, Lio/realm/exceptions/RealmFileException;

    sget-object p1, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    invoke-direct {p0, p1, v0}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/Throwable;)V

    throw p0

    :catchall_41
    move-exception p0

    goto :goto_47

    :catch_43
    move-exception p1

    goto :goto_4b

    :catchall_45
    move-exception p0

    move-object v2, v0

    :goto_47
    move-object v0, v1

    goto :goto_85

    :catch_49
    move-exception p1

    move-object v2, v0

    :goto_4b
    move-object v0, v1

    goto :goto_6b

    .line 9
    :cond_4d
    :try_start_4d
    new-instance p1, Lio/realm/exceptions/RealmFileException;

    sget-object v2, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid input stream to the asset file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;)V

    throw p1
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_66} :catch_49
    .catchall {:try_start_4d .. :try_end_66} :catchall_45

    :catchall_66
    move-exception p0

    move-object v2, v0

    goto :goto_85

    :catch_69
    move-exception p1

    move-object v2, v0

    .line 10
    :goto_6b
    :try_start_6b
    new-instance v1, Lio/realm/exceptions/RealmFileException;

    sget-object v3, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not resolve the path to the asset file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v3, p0, p1}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_84
    .catchall {:try_start_6b .. :try_end_84} :catchall_84

    :catchall_84
    move-exception p0

    :goto_85
    if-eqz v0, :cond_8c

    .line 11
    :try_start_87
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_8c

    :catch_8b
    nop

    :cond_8c
    :goto_8c
    if-eqz v2, :cond_91

    .line 12
    :try_start_8e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_91

    .line 13
    :catch_91
    :cond_91
    throw p0
.end method

.method private createInstance(Ljava/lang/Class;Lio/realm/RealmCache$ReferenceCounter;Lio/realm/internal/OsSharedRealm$VersionID;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/RealmCache$ReferenceCounter;",
            "Lio/realm/internal/OsSharedRealm$VersionID;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v0, Lio/realm/Realm;

    if-ne p1, v0, :cond_10

    .line 2
    invoke-static {p0, p3}, Lio/realm/Realm;->createInstance(Lio/realm/RealmCache;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/Realm;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3}, Lio/realm/RealmSchema;->createKeyPathMapping()V

    goto :goto_18

    .line 4
    :cond_10
    const-class v0, Lio/realm/DynamicRealm;

    if-ne p1, v0, :cond_1c

    .line 5
    invoke-static {p0, p3}, Lio/realm/DynamicRealm;->createInstance(Lio/realm/RealmCache;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/DynamicRealm;

    move-result-object p1

    .line 6
    :goto_18
    invoke-virtual {p2, p1}, Lio/realm/RealmCache$ReferenceCounter;->onRealmCreated(Lio/realm/BaseRealm;)V

    return-void

    .line 7
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The type of Realm class must be Realm or DynamicRealm."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmConfiguration;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/realm/RealmCache;->getCache(Ljava/lang/String;Z)Lio/realm/RealmCache;

    move-result-object v0

    .line 2
    sget-object v1, Lio/realm/internal/OsSharedRealm$VersionID;->LIVE:Lio/realm/internal/OsSharedRealm$VersionID;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/RealmCache;->doCreateRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/BaseRealm;

    move-result-object p0

    return-object p0
.end method

.method public static createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/BaseRealm;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmConfiguration;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/internal/OsSharedRealm$VersionID;",
            ")TE;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/realm/RealmCache;->getCache(Ljava/lang/String;Z)Lio/realm/RealmCache;

    move-result-object v0

    .line 4
    invoke-direct {v0, p0, p1, p2}, Lio/realm/RealmCache;->doCreateRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/BaseRealm;

    move-result-object p0

    return-object p0
.end method

.method public static createRealmOrGetFromCacheAsync(Lio/realm/RealmConfiguration;Lio/realm/BaseRealm$InstanceCallback;Ljava/lang/Class;)Lio/realm/RealmAsyncTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmConfiguration;",
            "Lio/realm/BaseRealm$InstanceCallback<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/realm/RealmAsyncTask;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/realm/RealmCache;->getCache(Ljava/lang/String;Z)Lio/realm/RealmCache;

    move-result-object v0

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lio/realm/RealmCache;->doCreateRealmOrGetFromCacheAsync(Lio/realm/RealmConfiguration;Lio/realm/BaseRealm$InstanceCallback;Ljava/lang/Class;)Lio/realm/RealmAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized doCreateRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/BaseRealm;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmConfiguration;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/internal/OsSharedRealm$VersionID;",
            ")TE;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0, p2, p3}, Lio/realm/RealmCache;->getRefCounter(Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/RealmCache$ReferenceCounter;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lio/realm/RealmCache;->getTotalGlobalRefCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_1b

    .line 3
    invoke-static {p1}, Lio/realm/RealmCache;->copyAssetFileIfNeeded(Lio/realm/RealmConfiguration;)V

    .line 4
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->realmExists()Z

    move-result v3

    .line 5
    iput-object p1, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    goto :goto_1e

    .line 6
    :cond_1b
    invoke-direct {p0, p1}, Lio/realm/RealmCache;->validateConfiguration(Lio/realm/RealmConfiguration;)V

    .line 7
    :goto_1e
    invoke-virtual {v0}, Lio/realm/RealmCache$ReferenceCounter;->hasInstanceAvailableForThread()Z

    move-result v3

    if-nez v3, :cond_27

    .line 8
    invoke-direct {p0, p2, v0, p3}, Lio/realm/RealmCache;->createInstance(Ljava/lang/Class;Lio/realm/RealmCache$ReferenceCounter;Lio/realm/internal/OsSharedRealm$VersionID;)V

    .line 9
    :cond_27
    invoke-virtual {v0, v2}, Lio/realm/RealmCache$ReferenceCounter;->incrementThreadCount(I)V

    .line 10
    invoke-virtual {v0}, Lio/realm/RealmCache$ReferenceCounter;->getRealmInstance()Lio/realm/BaseRealm;

    move-result-object p2

    if-eqz v1, :cond_46

    .line 11
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object p3

    iget-object v0, p2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 12
    invoke-static {v0}, Lio/realm/Realm;->createInstance(Lio/realm/internal/OsSharedRealm;)Lio/realm/Realm;

    move-result-object v0

    .line 13
    invoke-virtual {p3, v0, p1}, Lio/realm/internal/ObjectServerFacade;->downloadInitialFlexibleSyncData(Lio/realm/Realm;Lio/realm/RealmConfiguration;)V

    .line 14
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->isReadOnly()Z

    move-result p1

    if-nez p1, :cond_46

    .line 15
    invoke-virtual {p2}, Lio/realm/BaseRealm;->refresh()V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    .line 16
    :cond_46
    monitor-exit p0

    return-object p2

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized doCreateRealmOrGetFromCacheAsync(Lio/realm/RealmConfiguration;Lio/realm/BaseRealm$InstanceCallback;Ljava/lang/Class;)Lio/realm/RealmAsyncTask;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmConfiguration;",
            "Lio/realm/BaseRealm$InstanceCallback<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/realm/RealmAsyncTask;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v0}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    const-string v1, "Realm instances cannot be loaded asynchronously on a non-looper thread."

    .line 2
    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    if-eqz p2, :cond_32

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lio/realm/RealmCache$CreateRealmRunnable;

    new-instance v2, Lio/realm/internal/android/AndroidRealmNotifier;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lio/realm/internal/android/AndroidRealmNotifier;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Capabilities;)V

    invoke-direct {v1, v2, p1, p2, p3}, Lio/realm/RealmCache$CreateRealmRunnable;-><init>(Lio/realm/internal/RealmNotifier;Lio/realm/RealmConfiguration;Lio/realm/BaseRealm$InstanceCallback;Ljava/lang/Class;)V

    .line 5
    sget-object p2, Lio/realm/BaseRealm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    invoke-virtual {p2, v1}, Lio/realm/internal/async/RealmThreadPoolExecutor;->submitTransaction(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p3

    .line 6
    invoke-virtual {v1, p3}, Lio/realm/RealmCache$CreateRealmRunnable;->setFuture(Ljava/util/concurrent/Future;)V

    .line 7
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/internal/ObjectServerFacade;->createNativeSyncSession(Lio/realm/RealmConfiguration;)V

    .line 8
    new-instance p1, Lio/realm/internal/async/RealmAsyncTaskImpl;

    invoke-direct {p1, p3, p2}, Lio/realm/internal/async/RealmAsyncTaskImpl;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_3a

    monitor-exit p0

    return-object p1

    .line 9
    :cond_32
    :try_start_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The callback cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized doInvokeWithGlobalRefCount(Lio/realm/RealmCache$Callback;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lio/realm/RealmCache;->getTotalGlobalRefCount()I

    move-result v0

    invoke-interface {p1, v0}, Lio/realm/RealmCache$Callback;->onResult(I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 2
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static getCache(Ljava/lang/String;Z)Lio/realm/RealmCache;
    .registers 7

    .line 1
    sget-object v0, Lio/realm/RealmCache;->cachesList:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/RealmCache;

    if-nez v3, :cond_20

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 6
    :cond_20
    iget-object v4, v3, Lio/realm/RealmCache;->realmPath:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v2, v3

    goto :goto_8

    :cond_2a
    if-nez v2, :cond_3d

    if-eqz p1, :cond_3d

    .line 7
    new-instance v2, Lio/realm/RealmCache;

    invoke-direct {v2, p0}, Lio/realm/RealmCache;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object p0, Lio/realm/RealmCache;->cachesList:Ljava/util/List;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_3d
    monitor-exit v0

    return-object v2

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public static getLocalThreadCount(Lio/realm/RealmConfiguration;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/realm/RealmCache;->getCache(Ljava/lang/String;Z)Lio/realm/RealmCache;

    move-result-object p0

    if-nez p0, :cond_c

    return v0

    .line 2
    :cond_c
    iget-object p0, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmCache$ReferenceCounter;

    .line 3
    invoke-virtual {v1}, Lio/realm/RealmCache$ReferenceCounter;->getThreadLocalCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_16

    :cond_28
    return v0
.end method

.method private getRefCounter(Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/RealmCache$ReferenceCounter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/internal/OsSharedRealm$VersionID;",
            ")",
            "Lio/realm/RealmCache$ReferenceCounter;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/RealmCache$RealmCacheType;->TYPED_REALM:Lio/realm/RealmCache$RealmCacheType;

    .line 2
    const-class v0, Lio/realm/Realm;

    if-ne p1, v0, :cond_9

    .line 3
    sget-object p1, Lio/realm/RealmCache$RealmCacheType;->TYPED_REALM:Lio/realm/RealmCache$RealmCacheType;

    goto :goto_f

    .line 4
    :cond_9
    const-class v0, Lio/realm/DynamicRealm;

    if-ne p1, v0, :cond_38

    .line 5
    sget-object p1, Lio/realm/RealmCache$RealmCacheType;->DYNAMIC_REALM:Lio/realm/RealmCache$RealmCacheType;

    .line 6
    :goto_f
    new-instance v0, Lio/realm/internal/util/Pair;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmCache$ReferenceCounter;

    if-nez p1, :cond_37

    .line 8
    sget-object p1, Lio/realm/internal/OsSharedRealm$VersionID;->LIVE:Lio/realm/internal/OsSharedRealm$VersionID;

    invoke-virtual {p2, p1}, Lio/realm/internal/OsSharedRealm$VersionID;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2d

    .line 9
    new-instance p1, Lio/realm/RealmCache$ThreadConfinedReferenceCounter;

    invoke-direct {p1, p2}, Lio/realm/RealmCache$ThreadConfinedReferenceCounter;-><init>(Lio/realm/RealmCache$1;)V

    goto :goto_32

    .line 10
    :cond_2d
    new-instance p1, Lio/realm/RealmCache$GlobalReferenceCounter;

    invoke-direct {p1, p2}, Lio/realm/RealmCache$GlobalReferenceCounter;-><init>(Lio/realm/RealmCache$1;)V

    .line 11
    :goto_32
    iget-object p2, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    return-object p1

    .line 12
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The type of Realm class must be Realm or DynamicRealm."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getTotalGlobalRefCount()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmCache$ReferenceCounter;

    .line 2
    invoke-virtual {v2}, Lio/realm/RealmCache$ReferenceCounter;->getGlobalCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_b

    :cond_1d
    return v1
.end method

.method private getTotalLiveRealmGlobalRefCount()I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmCache$ReferenceCounter;

    .line 2
    instance-of v3, v2, Lio/realm/RealmCache$ThreadConfinedReferenceCounter;

    if-eqz v3, :cond_b

    .line 3
    invoke-virtual {v2}, Lio/realm/RealmCache$ReferenceCounter;->getGlobalCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_b

    :cond_21
    return v1
.end method

.method public static invokeWithGlobalRefCount(Lio/realm/RealmConfiguration;Lio/realm/RealmCache$Callback;)V
    .registers 4

    .line 1
    sget-object v0, Lio/realm/RealmCache;->cachesList:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lio/realm/RealmCache;->getCache(Ljava/lang/String;Z)Lio/realm/RealmCache;

    move-result-object p0

    if-nez p0, :cond_13

    .line 3
    invoke-interface {p1, v1}, Lio/realm/RealmCache$Callback;->onResult(I)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_13
    invoke-direct {p0, p1}, Lio/realm/RealmCache;->doInvokeWithGlobalRefCount(Lio/realm/RealmCache$Callback;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method private validateConfiguration(Lio/realm/RealmConfiguration;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0, p1}, Lio/realm/RealmConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v0, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 3
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v1

    if-eqz v1, :cond_5a

    if-eqz v0, :cond_5a

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: "

    .line 8
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Configurations cannot be different if used to open the same file. \nCached configuration: \n"

    .line 11
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\nNew configuration: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong key used to decrypt Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getConfiguration()Lio/realm/RealmConfiguration;
    .registers 2

    iget-object v0, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    return-object v0
.end method

.method public final leak()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmCache;->isLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2
    sget-object v0, Lio/realm/RealmCache;->leakedCaches:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_e
    return-void
.end method

.method public final declared-synchronized release(Lio/realm/BaseRealm;)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v2

    goto :goto_18

    :cond_16
    sget-object v2, Lio/realm/internal/OsSharedRealm$VersionID;->LIVE:Lio/realm/internal/OsSharedRealm$VersionID;

    :goto_18
    invoke-direct {p0, v1, v2}, Lio/realm/RealmCache;->getRefCounter(Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/RealmCache$ReferenceCounter;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lio/realm/RealmCache$ReferenceCounter;->getThreadLocalCount()I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_36

    const-string p1, "%s has been closed already. refCount is %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const/4 v0, 0x1

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_8b

    .line 5
    monitor-exit p0

    return-void

    :cond_36
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_86

    .line 6
    :try_start_3a
    invoke-virtual {v1}, Lio/realm/RealmCache$ReferenceCounter;->clearThreadLocalCache()V

    .line 7
    invoke-virtual {p1}, Lio/realm/BaseRealm;->doClose()V

    .line 8
    invoke-direct {p0}, Lio/realm/RealmCache;->getTotalLiveRealmGlobalRefCount()I

    move-result v0

    if-nez v0, :cond_89

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    .line 10
    iget-object v0, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmCache$ReferenceCounter;

    .line 11
    instance-of v2, v1, Lio/realm/RealmCache$GlobalReferenceCounter;

    if-eqz v2, :cond_53

    .line 12
    invoke-virtual {v1}, Lio/realm/RealmCache$ReferenceCounter;->getRealmInstance()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 13
    :goto_69
    invoke-virtual {v1}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v2

    if-nez v2, :cond_53

    .line 14
    invoke-virtual {v1}, Lio/realm/BaseRealm;->close()V

    goto :goto_69

    .line 15
    :cond_73
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lio/realm/internal/ObjectServerFacade;->getFacade(Z)Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/realm/internal/ObjectServerFacade;->realmClosed(Lio/realm/RealmConfiguration;)V

    goto :goto_89

    .line 16
    :cond_86
    invoke-virtual {v1, v2}, Lio/realm/RealmCache$ReferenceCounter;->setThreadCount(I)V
    :try_end_89
    .catchall {:try_start_3a .. :try_end_89} :catchall_8b

    .line 17
    :cond_89
    :goto_89
    monitor-exit p0

    return-void

    :catchall_8b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
