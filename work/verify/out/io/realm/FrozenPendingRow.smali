.class public final enum Lio/realm/FrozenPendingRow;
.super Ljava/lang/Enum;
.source "FrozenPendingRow.java"

# interfaces
.implements Lio/realm/internal/Row;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/FrozenPendingRow;",
        ">;",
        "Lio/realm/internal/Row;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/FrozenPendingRow;

.field public static final enum INSTANCE:Lio/realm/FrozenPendingRow;

.field private static final QUERY_NOT_RETURNED_MESSAGE:Ljava/lang/String; = "This object was frozen while a query for it was still running."


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/realm/FrozenPendingRow;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/FrozenPendingRow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/FrozenPendingRow;->INSTANCE:Lio/realm/FrozenPendingRow;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/FrozenPendingRow;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lio/realm/FrozenPendingRow;->$VALUES:[Lio/realm/FrozenPendingRow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/FrozenPendingRow;
    .registers 2

    const-class v0, Lio/realm/FrozenPendingRow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/FrozenPendingRow;

    return-object p0
.end method

.method public static values()[Lio/realm/FrozenPendingRow;
    .registers 1

    sget-object v0, Lio/realm/FrozenPendingRow;->$VALUES:[Lio/realm/FrozenPendingRow;

    invoke-virtual {v0}, [Lio/realm/FrozenPendingRow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/FrozenPendingRow;

    return-object v0
.end method


# virtual methods
.method public checkIfAttached()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object was frozen while a query for it was still running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createEmbeddedObject(JLio/realm/RealmFieldType;)J
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public freeze(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/Row;
    .registers 2

    sget-object p1, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    return-object p1
.end method

.method public getBinaryByteArray(J)[B
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBoolean(J)Z
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnCount()J
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object was frozen while a query for it was still running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnKey(Ljava/lang/String;)J
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This object was frozen while a query for it was still running."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object was frozen while a query for it was still running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnType(J)Lio/realm/RealmFieldType;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDate(J)Ljava/util/Date;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDecimal128(J)Lorg/bson/types/Decimal128;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDouble(J)D
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFloat(J)F
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLink(J)J
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLong(J)J
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getModelList(J)Lio/realm/internal/OsList;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getModelMap(J)Lio/realm/internal/OsMap;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getModelSet(J)Lio/realm/internal/OsSet;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNativeRealmAny(J)Lio/realm/internal/core/NativeRealmAny;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectId(J)Lorg/bson/types/ObjectId;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectKey()J
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object was frozen while a query for it was still running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRealmAnyMap(J)Lio/realm/internal/OsMap;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRealmAnySet(J)Lio/realm/internal/OsSet;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getString(J)Ljava/lang/String;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTable()Lio/realm/internal/Table;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object was frozen while a query for it was still running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUUID(J)Ljava/util/UUID;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This object was frozen while a query for it was still running."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isLoaded()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isNull(J)Z
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isNullLink(J)Z
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isValid()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public nullifyLink(J)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBinaryByteArray(J[B)V
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBoolean(JZ)V
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDate(JLjava/util/Date;)V
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDecimal128(JLorg/bson/types/Decimal128;)V
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDouble(JD)V
    .registers 5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFloat(JF)V
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLink(JJ)V
    .registers 5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLong(JJ)V
    .registers 5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNull(J)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setObjectId(JLorg/bson/types/ObjectId;)V
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRealmAny(JJ)V
    .registers 5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setString(JLjava/lang/String;)V
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUUID(JLjava/util/UUID;)V
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This object was frozen while a query for it was still running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
