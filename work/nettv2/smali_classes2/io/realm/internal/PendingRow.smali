.class public Lio/realm/internal/PendingRow;
.super Ljava/lang/Object;
.source "PendingRow.java"

# interfaces
.implements Lio/realm/internal/Row;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/PendingRow$FrontEnd;
    }
.end annotation


# static fields
.field private static final PROXY_NOT_SET_MESSAGE:Ljava/lang/String; = "The \'frontEnd\' has not been set."

.field private static final QUERY_EXECUTED_MESSAGE:Ljava/lang/String; = "The query has been executed. This \'PendingRow\' is not valid anymore."

.field private static final QUERY_NOT_RETURNED_MESSAGE:Ljava/lang/String; = "The pending query has not been executed."


# instance fields
.field private frontEndRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/internal/PendingRow$FrontEnd;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lio/realm/RealmChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/internal/PendingRow;",
            ">;"
        }
    .end annotation
.end field

.field private pendingOsResults:Lio/realm/internal/OsResults;

.field private returnCheckedRow:Z

.field private sharedRealm:Lio/realm/internal/OsSharedRealm;


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/internal/PendingRow;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 3
    invoke-static {p1, p2}, Lio/realm/internal/OsResults;->createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;)Lio/realm/internal/OsResults;

    move-result-object p2

    iput-object p2, p0, Lio/realm/internal/PendingRow;->pendingOsResults:Lio/realm/internal/OsResults;

    .line 4
    new-instance v0, Lio/realm/internal/PendingRow$1;

    invoke-direct {v0, p0}, Lio/realm/internal/PendingRow$1;-><init>(Lio/realm/internal/PendingRow;)V

    iput-object v0, p0, Lio/realm/internal/PendingRow;->listener:Lio/realm/RealmChangeListener;

    .line 5
    invoke-virtual {p2, p0, v0}, Lio/realm/internal/OsResults;->addListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    .line 6
    iput-boolean p3, p0, Lio/realm/internal/PendingRow;->returnCheckedRow:Z

    .line 7
    invoke-virtual {p1, p0}, Lio/realm/internal/OsSharedRealm;->addPendingRow(Lio/realm/internal/PendingRow;)V

    return-void
.end method

.method public static synthetic access$000(Lio/realm/internal/PendingRow;)V
    .locals 0

    invoke-direct {p0}, Lio/realm/internal/PendingRow;->notifyFrontEnd()V

    return-void
.end method

.method private clearPendingCollection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/PendingRow;->pendingOsResults:Lio/realm/internal/OsResults;

    iget-object v1, p0, Lio/realm/internal/PendingRow;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {v0, p0, v1}, Lio/realm/internal/OsResults;->removeListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/realm/internal/PendingRow;->pendingOsResults:Lio/realm/internal/OsResults;

    .line 3
    iput-object v0, p0, Lio/realm/internal/PendingRow;->listener:Lio/realm/RealmChangeListener;

    .line 4
    iget-object v0, p0, Lio/realm/internal/PendingRow;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0, p0}, Lio/realm/internal/OsSharedRealm;->removePendingRow(Lio/realm/internal/PendingRow;)V

    return-void
.end method

.method private notifyFrontEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/internal/PendingRow;->frontEndRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/PendingRow$FrontEnd;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lio/realm/internal/PendingRow;->clearPendingCollection()V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lio/realm/internal/PendingRow;->pendingOsResults:Lio/realm/internal/OsResults;

    invoke-virtual {v1}, Lio/realm/internal/OsResults;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, p0, Lio/realm/internal/PendingRow;->pendingOsResults:Lio/realm/internal/OsResults;

    invoke-virtual {v1}, Lio/realm/internal/OsResults;->firstUncheckedRow()Lio/realm/internal/UncheckedRow;

    move-result-object v1

    .line 6
    invoke-direct {p0}, Lio/realm/internal/PendingRow;->clearPendingCollection()V

    if-eqz v1, :cond_2

    .line 7
    iget-boolean v2, p0, Lio/realm/internal/PendingRow;->returnCheckedRow:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lio/realm/internal/CheckedRow;->getFromRow(Lio/realm/internal/UncheckedRow;)Lio/realm/internal/CheckedRow;

    move-result-object v1

    .line 8
    :cond_1
    invoke-interface {v0, v1}, Lio/realm/internal/PendingRow$FrontEnd;->onQueryFinished(Lio/realm/internal/Row;)V

    goto :goto_0

    .line 9
    :cond_2
    sget-object v1, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    invoke-interface {v0, v1}, Lio/realm/internal/PendingRow$FrontEnd;->onQueryFinished(Lio/realm/internal/Row;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-direct {p0}, Lio/realm/internal/PendingRow;->clearPendingCollection()V

    :goto_0
    return-void

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The \'frontEnd\' has not been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkIfAttached()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createEmbeddedObject(JLio/realm/RealmFieldType;)J
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executeQuery()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/PendingRow;->pendingOsResults:Lio/realm/internal/OsResults;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/internal/PendingRow;->notifyFrontEnd()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The query has been executed. This \'PendingRow\' is not valid anymore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public freeze(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/Row;
    .locals 0

    sget-object p1, Lio/realm/FrozenPendingRow;->INSTANCE:Lio/realm/FrozenPendingRow;

    return-object p1
.end method

.method public getBinaryByteArray(J)[B
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBoolean(J)Z
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnCount()J
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnKey(Ljava/lang/String;)J
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The pending query has not been executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnType(J)Lio/realm/RealmFieldType;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDate(J)Ljava/util/Date;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDecimal128(J)Lorg/bson/types/Decimal128;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDouble(J)D
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFloat(J)F
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLink(J)J
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLong(J)J
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getModelList(J)Lio/realm/internal/OsList;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getModelMap(J)Lio/realm/internal/OsMap;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getModelSet(J)Lio/realm/internal/OsSet;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNativeRealmAny(J)Lio/realm/internal/core/NativeRealmAny;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectId(J)Lorg/bson/types/ObjectId;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectKey()J
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRealmAnyMap(J)Lio/realm/internal/OsMap;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRealmAnySet(J)Lio/realm/internal/OsSet;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getString(J)Ljava/lang/String;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTable()Lio/realm/internal/Table;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUUID(J)Ljava/util/UUID;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The pending query has not been executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isLoaded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNull(J)Z
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isNullLink(J)Z
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nullifyLink(J)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBinaryByteArray(J[B)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBoolean(JZ)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDate(JLjava/util/Date;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDecimal128(JLorg/bson/types/Decimal128;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDouble(JD)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFloat(JF)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFrontEnd(Lio/realm/internal/PendingRow$FrontEnd;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/realm/internal/PendingRow;->frontEndRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setLink(JJ)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLong(JJ)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNull(J)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setObjectId(JLorg/bson/types/ObjectId;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRealmAny(JJ)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setString(JLjava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUUID(JLjava/util/UUID;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The pending query has not been executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
