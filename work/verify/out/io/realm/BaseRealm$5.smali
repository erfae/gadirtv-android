.class Lio/realm/BaseRealm$5;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Lio/realm/RealmCache$Callback;


# instance fields
.field public final synthetic val$configuration:Lio/realm/RealmConfiguration;

.field public final synthetic val$fileNotFound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic val$migration:Lio/realm/RealmMigration;


# direct methods
.method public constructor <init>(Lio/realm/RealmConfiguration;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/realm/RealmMigration;)V
    .registers 4

    iput-object p1, p0, Lio/realm/BaseRealm$5;->val$configuration:Lio/realm/RealmConfiguration;

    iput-object p2, p0, Lio/realm/BaseRealm$5;->val$fileNotFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lio/realm/BaseRealm$5;->val$migration:Lio/realm/RealmMigration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .registers 5

    if-nez p1, :cond_61

    .line 1
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lio/realm/BaseRealm$5;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 3
    iget-object p1, p0, Lio/realm/BaseRealm$5;->val$fileNotFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 4
    :cond_1a
    iget-object p1, p0, Lio/realm/BaseRealm$5;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object p1

    .line 5
    new-instance v0, Lio/realm/internal/OsSchemaInfo;

    invoke-virtual {p1}, Lio/realm/internal/RealmProxyMediator;->getExpectedObjectSchemaInfoMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/realm/internal/OsSchemaInfo;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 6
    iget-object v1, p0, Lio/realm/BaseRealm$5;->val$migration:Lio/realm/RealmMigration;

    if-eqz v1, :cond_33

    goto :goto_39

    :cond_33
    iget-object v1, p0, Lio/realm/BaseRealm$5;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v1

    :goto_39
    if-eqz v1, :cond_3f

    .line 7
    # invokes: Lio/realm/BaseRealm;->createMigrationCallback(Lio/realm/RealmMigration;)Lio/realm/internal/OsSharedRealm$MigrationCallback;
    invoke-static {v1}, Lio/realm/BaseRealm;->access$000(Lio/realm/RealmMigration;)Lio/realm/internal/OsSharedRealm$MigrationCallback;

    move-result-object p1

    .line 8
    :cond_3f
    new-instance v1, Lio/realm/internal/OsRealmConfig$Builder;

    iget-object v2, p0, Lio/realm/BaseRealm$5;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-direct {v1, v2}, Lio/realm/internal/OsRealmConfig$Builder;-><init>(Lio/realm/RealmConfiguration;)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Lio/realm/internal/OsRealmConfig$Builder;->autoUpdateNotification(Z)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Lio/realm/internal/OsRealmConfig$Builder;->schemaInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lio/realm/internal/OsRealmConfig$Builder;->migrationCallback(Lio/realm/internal/OsSharedRealm$MigrationCallback;)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object p1

    .line 12
    :try_start_53
    sget-object v0, Lio/realm/internal/OsSharedRealm$VersionID;->LIVE:Lio/realm/internal/OsSharedRealm$VersionID;

    .line 13
    invoke-static {p1, v0}, Lio/realm/internal/OsSharedRealm;->getInstance(Lio/realm/internal/OsRealmConfig$Builder;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/internal/OsSharedRealm;

    move-result-object p1
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_5f

    if-eqz p1, :cond_5e

    .line 14
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->close()V

    :cond_5e
    return-void

    :catchall_5f
    move-exception p1

    .line 15
    throw p1

    .line 16
    :cond_61
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot migrate a Realm file that is already open: "

    .line 17
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lio/realm/BaseRealm$5;->val$configuration:Lio/realm/RealmConfiguration;

    .line 19
    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
