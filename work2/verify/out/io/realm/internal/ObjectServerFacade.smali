.class public Lio/realm/internal/ObjectServerFacade;
.super Ljava/lang/Object;
.source "ObjectServerFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/ObjectServerFacade$RealmInstanceFactory;,
        Lio/realm/internal/ObjectServerFacade$RealmCacheAccessor;
    }
.end annotation


# static fields
.field public static final SYNC_CONFIG_OPTIONS:I = 0x11

.field private static final nonSyncFacade:Lio/realm/internal/ObjectServerFacade;

.field private static syncFacade:Lio/realm/internal/ObjectServerFacade;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-string v0, "Failed to init SyncObjectServerFacade"

    .line 1
    new-instance v1, Lio/realm/internal/ObjectServerFacade;

    invoke-direct {v1}, Lio/realm/internal/ObjectServerFacade;-><init>()V

    sput-object v1, Lio/realm/internal/ObjectServerFacade;->nonSyncFacade:Lio/realm/internal/ObjectServerFacade;

    const/4 v1, 0x0

    .line 2
    sput-object v1, Lio/realm/internal/ObjectServerFacade;->syncFacade:Lio/realm/internal/ObjectServerFacade;

    :try_start_c
    const-string v1, "io.realm.internal.SyncObjectServerFacade"

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/ObjectServerFacade;

    sput-object v1, Lio/realm/internal/ObjectServerFacade;->syncFacade:Lio/realm/internal/ObjectServerFacade;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_23} :catch_44
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_23} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_23} :catch_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_23} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_23} :catch_24

    goto :goto_44

    :catch_24
    move-exception v1

    .line 5
    new-instance v2, Lio/realm/exceptions/RealmException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2f
    move-exception v1

    .line 6
    new-instance v2, Lio/realm/exceptions/RealmException;

    invoke-direct {v2, v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_36
    move-exception v1

    .line 7
    new-instance v2, Lio/realm/exceptions/RealmException;

    invoke-direct {v2, v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3d
    move-exception v1

    .line 8
    new-instance v2, Lio/realm/exceptions/RealmException;

    invoke-direct {v2, v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_44
    :goto_44
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFacade(Z)Lio/realm/internal/ObjectServerFacade;
    .registers 1

    if-eqz p0, :cond_5

    .line 1
    sget-object p0, Lio/realm/internal/ObjectServerFacade;->syncFacade:Lio/realm/internal/ObjectServerFacade;

    return-object p0

    .line 2
    :cond_5
    sget-object p0, Lio/realm/internal/ObjectServerFacade;->nonSyncFacade:Lio/realm/internal/ObjectServerFacade;

    return-object p0
.end method

.method public static getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;
    .registers 1

    .line 1
    sget-object v0, Lio/realm/internal/ObjectServerFacade;->syncFacade:Lio/realm/internal/ObjectServerFacade;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    sget-object v0, Lio/realm/internal/ObjectServerFacade;->nonSyncFacade:Lio/realm/internal/ObjectServerFacade;

    return-object v0
.end method


# virtual methods
.method public checkFlexibleSyncEnabled(Lio/realm/RealmConfiguration;)V
    .registers 2

    return-void
.end method

.method public createNativeSyncSession(Lio/realm/RealmConfiguration;)V
    .registers 2

    return-void
.end method

.method public downloadInitialFlexibleSyncData(Lio/realm/Realm;Lio/realm/RealmConfiguration;)V
    .registers 3

    return-void
.end method

.method public downloadInitialRemoteChanges(Lio/realm/RealmConfiguration;)V
    .registers 2

    return-void
.end method

.method public getSyncConfigurationOptions(Lio/realm/RealmConfiguration;)[Ljava/lang/Object;
    .registers 2

    const/16 p1, 0x11

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public getSyncServerCertificateAssetName(Lio/realm/RealmConfiguration;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSyncServerCertificateFilePath(Lio/realm/RealmConfiguration;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Lio/realm/internal/ObjectServerFacade$RealmCacheAccessor;Lio/realm/internal/ObjectServerFacade$RealmInstanceFactory;)V
    .registers 5

    return-void
.end method

.method public realmClosed(Lio/realm/RealmConfiguration;)V
    .registers 2

    return-void
.end method

.method public wasDownloadInterrupted(Ljava/lang/Throwable;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public wrapObjectStoreSessionIfRequired(Lio/realm/internal/OsRealmConfig;)V
    .registers 2

    return-void
.end method
