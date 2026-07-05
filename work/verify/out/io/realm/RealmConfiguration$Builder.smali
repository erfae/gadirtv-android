.class public Lio/realm/RealmConfiguration$Builder;
.super Ljava/lang/Object;
.source "RealmConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allowQueriesOnUiThread:Z

.field private allowWritesOnUiThread:Z

.field private assetFilePath:Ljava/lang/String;

.field private compactOnLaunch:Lio/realm/CompactOnLaunchCallback;

.field private debugSchema:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private deleteRealmIfMigrationNeeded:Z

.field private directory:Ljava/io/File;

.field private durability:Lio/realm/internal/OsRealmConfig$Durability;

.field private excludeDebugSchema:Z

.field private fileName:Ljava/lang/String;

.field private flowFactory:Lio/realm/coroutines/FlowFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private initialDataTransaction:Lio/realm/Realm$Transaction;

.field private key:[B

.field private maxNumberOfActiveVersions:J

.field private migration:Lio/realm/RealmMigration;

.field private modules:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readOnly:Z

.field private rxFactory:Lio/realm/rx/RxObservableFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private schemaVersion:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lio/realm/RealmConfiguration$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/realm/RealmConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->excludeDebugSchema:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 6
    iput-wide v0, p0, Lio/realm/RealmConfiguration$Builder;->maxNumberOfActiveVersions:J

    if-eqz p1, :cond_24

    .line 7
    invoke-static {p1}, Lio/realm/internal/RealmCore;->loadLibrary(Landroid/content/Context;)V

    .line 8
    invoke-direct {p0, p1}, Lio/realm/RealmConfiguration$Builder;->initializeBuilder(Landroid/content/Context;)V

    return-void

    .line 9
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call `Realm.init(Context)` before creating a RealmConfiguration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkModule(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/realm/annotations/RealmModule;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 2
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a RealmModule. Add @RealmModule to the class definition."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeBuilder(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->directory:Ljava/io/File;

    const-string p1, "default.realm"

    .line 2
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->fileName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->key:[B

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lio/realm/RealmConfiguration$Builder;->schemaVersion:J

    .line 5
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->migration:Lio/realm/RealmMigration;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded:Z

    .line 7
    sget-object v1, Lio/realm/internal/OsRealmConfig$Durability;->FULL:Lio/realm/internal/OsRealmConfig$Durability;

    iput-object v1, p0, Lio/realm/RealmConfiguration$Builder;->durability:Lio/realm/internal/OsRealmConfig$Durability;

    .line 8
    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->readOnly:Z

    .line 9
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->compactOnLaunch:Lio/realm/CompactOnLaunchCallback;

    .line 10
    # getter for: Lio/realm/RealmConfiguration;->DEFAULT_MODULE:Ljava/lang/Object;
    invoke-static {}, Lio/realm/RealmConfiguration;->access$000()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 11
    iget-object p1, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    # getter for: Lio/realm/RealmConfiguration;->DEFAULT_MODULE:Ljava/lang/Object;
    invoke-static {}, Lio/realm/RealmConfiguration;->access$000()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2d
    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->allowWritesOnUiThread:Z

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lio/realm/RealmConfiguration$Builder;->allowQueriesOnUiThread:Z

    return-void
.end method


# virtual methods
.method public final addModule(Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;
    .registers 3

    if-eqz p1, :cond_a

    .line 1
    invoke-direct {p0, p1}, Lio/realm/RealmConfiguration$Builder;->checkModule(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object p0
.end method

.method public allowQueriesOnUiThread(Z)Lio/realm/RealmConfiguration$Builder;
    .registers 2

    iput-boolean p1, p0, Lio/realm/RealmConfiguration$Builder;->allowQueriesOnUiThread:Z

    return-object p0
.end method

.method public allowWritesOnUiThread(Z)Lio/realm/RealmConfiguration$Builder;
    .registers 2

    iput-boolean p1, p0, Lio/realm/RealmConfiguration$Builder;->allowWritesOnUiThread:Z

    return-object p0
.end method

.method public assetFile(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;
    .registers 4

    .line 1
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->durability:Lio/realm/internal/OsRealmConfig$Durability;

    sget-object v1, Lio/realm/internal/OsRealmConfig$Durability;->MEM_ONLY:Lio/realm/internal/OsRealmConfig$Durability;

    if-eq v0, v1, :cond_1b

    .line 3
    iget-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded:Z

    if-nez v0, :cond_13

    .line 4
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->assetFilePath:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Realm cannot use an asset file when previously configured to clear its schema in migration by calling deleteRealmIfMigrationNeeded()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1b
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Realm can not use in-memory configuration if asset file is present."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-empty asset file path must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lio/realm/RealmConfiguration;
    .registers 24

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lio/realm/RealmConfiguration$Builder;->readOnly:Z

    if-eqz v1, :cond_37

    .line 2
    iget-object v1, v0, Lio/realm/RealmConfiguration$Builder;->initialDataTransaction:Lio/realm/Realm$Transaction;

    if-nez v1, :cond_2f

    .line 3
    iget-object v1, v0, Lio/realm/RealmConfiguration$Builder;->assetFilePath:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 4
    iget-boolean v1, v0, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded:Z

    if-nez v1, :cond_1f

    .line 5
    iget-object v1, v0, Lio/realm/RealmConfiguration$Builder;->compactOnLaunch:Lio/realm/CompactOnLaunchCallback;

    if-nez v1, :cond_17

    goto :goto_37

    .line 6
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "\'compactOnLaunch()\' and read-only Realms cannot be combined"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "\'deleteRealmIfMigrationNeeded()\' and read-only Realms cannot be combined"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Only Realms provided using \'assetFile(path)\' can be marked read-only. No such Realm was provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This Realm is marked as read-only. Read-only Realms cannot use initialData(Realm.Transaction)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_37
    :goto_37
    iget-object v1, v0, Lio/realm/RealmConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    if-nez v1, :cond_49

    invoke-static {}, Lio/realm/internal/Util;->isRxJavaAvailable()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 11
    new-instance v1, Lio/realm/rx/RealmObservableFactory;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lio/realm/rx/RealmObservableFactory;-><init>(Z)V

    iput-object v1, v0, Lio/realm/RealmConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    .line 12
    :cond_49
    iget-object v1, v0, Lio/realm/RealmConfiguration$Builder;->flowFactory:Lio/realm/coroutines/FlowFactory;

    if-nez v1, :cond_5c

    invoke-static {}, Lio/realm/internal/Util;->isCoroutinesAvailable()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 13
    new-instance v1, Lio/realm/coroutines/RealmFlowFactory;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lio/realm/coroutines/RealmFlowFactory;-><init>(Ljava/lang/Boolean;)V

    iput-object v1, v0, Lio/realm/RealmConfiguration$Builder;->flowFactory:Lio/realm/coroutines/FlowFactory;

    .line 14
    :cond_5c
    new-instance v1, Lio/realm/RealmConfiguration;

    move-object v3, v1

    new-instance v2, Ljava/io/File;

    move-object v4, v2

    iget-object v5, v0, Lio/realm/RealmConfiguration$Builder;->directory:Ljava/io/File;

    iget-object v6, v0, Lio/realm/RealmConfiguration$Builder;->fileName:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, v0, Lio/realm/RealmConfiguration$Builder;->assetFilePath:Ljava/lang/String;

    iget-object v6, v0, Lio/realm/RealmConfiguration$Builder;->key:[B

    iget-wide v7, v0, Lio/realm/RealmConfiguration$Builder;->schemaVersion:J

    iget-object v9, v0, Lio/realm/RealmConfiguration$Builder;->migration:Lio/realm/RealmMigration;

    iget-boolean v10, v0, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded:Z

    iget-object v11, v0, Lio/realm/RealmConfiguration$Builder;->durability:Lio/realm/internal/OsRealmConfig$Durability;

    iget-object v2, v0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    iget-object v12, v0, Lio/realm/RealmConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    iget-boolean v13, v0, Lio/realm/RealmConfiguration$Builder;->excludeDebugSchema:Z

    .line 15
    invoke-static {v2, v12, v13}, Lio/realm/RealmConfiguration;->createSchemaMediator(Ljava/util/Set;Ljava/util/Set;Z)Lio/realm/internal/RealmProxyMediator;

    move-result-object v12

    iget-object v13, v0, Lio/realm/RealmConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    iget-object v14, v0, Lio/realm/RealmConfiguration$Builder;->flowFactory:Lio/realm/coroutines/FlowFactory;

    iget-object v15, v0, Lio/realm/RealmConfiguration$Builder;->initialDataTransaction:Lio/realm/Realm$Transaction;

    iget-boolean v2, v0, Lio/realm/RealmConfiguration$Builder;->readOnly:Z

    move/from16 v16, v2

    iget-object v2, v0, Lio/realm/RealmConfiguration$Builder;->compactOnLaunch:Lio/realm/CompactOnLaunchCallback;

    move-object/from16 v17, v2

    move-object/from16 v22, v1

    iget-wide v1, v0, Lio/realm/RealmConfiguration$Builder;->maxNumberOfActiveVersions:J

    move-wide/from16 v18, v1

    iget-boolean v1, v0, Lio/realm/RealmConfiguration$Builder;->allowWritesOnUiThread:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lio/realm/RealmConfiguration$Builder;->allowQueriesOnUiThread:Z

    move/from16 v21, v1

    invoke-direct/range {v3 .. v21}, Lio/realm/RealmConfiguration;-><init>(Ljava/io/File;Ljava/lang/String;[BJLio/realm/RealmMigration;ZLio/realm/internal/OsRealmConfig$Durability;Lio/realm/internal/RealmProxyMediator;Lio/realm/rx/RxObservableFactory;Lio/realm/coroutines/FlowFactory;Lio/realm/Realm$Transaction;ZLio/realm/CompactOnLaunchCallback;JZZ)V

    return-object v22
.end method

.method public compactOnLaunch()Lio/realm/RealmConfiguration$Builder;
    .registers 2

    .line 1
    new-instance v0, Lio/realm/DefaultCompactOnLaunchCallback;

    invoke-direct {v0}, Lio/realm/DefaultCompactOnLaunchCallback;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/RealmConfiguration$Builder;->compactOnLaunch(Lio/realm/CompactOnLaunchCallback;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public compactOnLaunch(Lio/realm/CompactOnLaunchCallback;)Lio/realm/RealmConfiguration$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 2
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->compactOnLaunch:Lio/realm/CompactOnLaunchCallback;

    return-object p0

    .line 3
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-null compactOnLaunch must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->assetFilePath:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 2
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm cannot clear its schema when previously configured to use an asset file by calling assetFile()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded:Z

    return-object p0
.end method

.method public directory(Ljava/io/File;)Lio/realm/RealmConfiguration$Builder;
    .registers 5

    if-eqz p1, :cond_6e

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v1, "."

    if-nez v0, :cond_54

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_31

    .line 3
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not create the specified directory: "

    .line 4
    invoke-static {v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_31
    :goto_31
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 7
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->directory:Ljava/io/File;

    return-object p0

    .line 8
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Realm directory is not writable: "

    .line 9
    invoke-static {v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'dir\' is a file, not a directory: "

    .line 12
    invoke-static {v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_6e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null \'dir\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encryptionKey([B)Lio/realm/RealmConfiguration$Builder;
    .registers 7

    if-eqz p1, :cond_2f

    .line 1
    array-length v0, p1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_f

    .line 2
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->key:[B

    return-object p0

    .line 3
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "The provided key must be %s bytes. Yours was: %s"

    .line 5
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-null key must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flowFactory(Lio/realm/coroutines/FlowFactory;)Lio/realm/RealmConfiguration$Builder;
    .registers 3
    .param p1    # Lio/realm/coroutines/FlowFactory;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->flowFactory:Lio/realm/coroutines/FlowFactory;

    return-object p0

    .line 2
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided Flow factory must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inMemory()Lio/realm/RealmConfiguration$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->assetFilePath:Ljava/lang/String;

    invoke-static {v0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    sget-object v0, Lio/realm/internal/OsRealmConfig$Durability;->MEM_ONLY:Lio/realm/internal/OsRealmConfig$Durability;

    iput-object v0, p0, Lio/realm/RealmConfiguration$Builder;->durability:Lio/realm/internal/OsRealmConfig$Durability;

    return-object p0

    .line 3
    :cond_d
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Realm can not use in-memory configuration if asset file is present."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialData(Lio/realm/Realm$Transaction;)Lio/realm/RealmConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->initialDataTransaction:Lio/realm/Realm$Transaction;

    return-object p0
.end method

.method public maxNumberOfActiveVersions(J)Lio/realm/RealmConfiguration$Builder;
    .registers 6

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    .line 1
    iput-wide p1, p0, Lio/realm/RealmConfiguration$Builder;->maxNumberOfActiveVersions:J

    return-object p0

    .line 2
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only positive numbers above 0 are allowed. Yours was: "

    .line 3
    invoke-static {v1, p1, p2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public migration(Lio/realm/RealmMigration;)Lio/realm/RealmConfiguration$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->migration:Lio/realm/RealmMigration;

    return-object p0

    .line 2
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-null migration must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/RealmConfiguration$Builder;->addModule(Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    if-eqz p2, :cond_16

    const/4 p1, 0x0

    .line 3
    :goto_b
    array-length v0, p2

    if-ge p1, v0, :cond_16

    .line 4
    aget-object v0, p2, p1

    .line 5
    invoke-virtual {p0, v0}, Lio/realm/RealmConfiguration$Builder;->addModule(Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_16
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;
    .registers 3

    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->fileName:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-empty filename must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readOnly()Lio/realm/RealmConfiguration$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->readOnly:Z

    return-object p0
.end method

.method public rxFactory(Lio/realm/rx/RxObservableFactory;)Lio/realm/RealmConfiguration$Builder;
    .registers 3
    .param p1    # Lio/realm/rx/RxObservableFactory;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    return-object p0

    .line 2
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided Rx Observable factory must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public schemaVersion(J)Lio/realm/RealmConfiguration$Builder;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    .line 1
    iput-wide p1, p0, Lio/realm/RealmConfiguration$Builder;->schemaVersion:J

    return-object p0

    .line 2
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Realm schema version numbers must be 0 (zero) or higher. Yours was: "

    .line 3
    invoke-static {v1, p1, p2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
