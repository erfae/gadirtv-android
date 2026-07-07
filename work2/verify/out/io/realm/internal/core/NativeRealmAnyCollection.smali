.class public final Lio/realm/internal/core/NativeRealmAnyCollection;
.super Ljava/lang/Object;
.source "NativeRealmAnyCollection.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# instance fields
.field private final nativePtr:J


# direct methods
.method private constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/realm/internal/core/NativeRealmAnyCollection;->nativePtr:J

    .line 3
    sget-object p1, Lio/realm/internal/NativeContext;->dummyContext:Lio/realm/internal/NativeContext;

    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    return-void
.end method

.method private static native nativeCreateBinaryCollection([[B[Z)J
.end method

.method private static native nativeCreateBooleanCollection([Z[Z)J
.end method

.method private static native nativeCreateDateCollection([J[Z)J
.end method

.method private static native nativeCreateDecimal128Collection([J[J[Z)J
.end method

.method private static native nativeCreateDoubleCollection([D[Z)J
.end method

.method private static native nativeCreateFloatCollection([F[Z)J
.end method

.method private static native nativeCreateIntegerCollection([J[Z)J
.end method

.method private static native nativeCreateObjectCollection([J[Z)J
.end method

.method private static native nativeCreateObjectIdCollection([Ljava/lang/String;[Z)J
.end method

.method private static native nativeCreateRealmAnyCollection([J[Z)J
.end method

.method private static native nativeCreateStringCollection([Ljava/lang/String;[Z)J
.end method

.method private static native nativeCreateUUIDCollection([Ljava/lang/String;[Z)J
.end method

.method private static native nativeGetCollectionItem(JI)J
.end method

.method private static native nativeGetCollectionSize(J)I
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method public static newBinaryCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+[B>;)",
            "Lio/realm/internal/core/NativeRealmAnyCollection;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [[B

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Z

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_24

    .line 4
    aput-object v3, v0, v2

    const/4 v3, 0x1

    .line 5
    aput-boolean v3, v1, v2

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 6
    :cond_27
    new-instance p0, Lio/realm/internal/core/NativeRealmAnyCollection;

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeCreateBinaryCollection([[B[Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;-><init>(J)V

    return-object p0
.end method

.method public static newBooleanCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/realm/internal/core/NativeRealmAnyCollection;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Z

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Z

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_28

    .line 4
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v0, v2

    const/4 v3, 0x1

    .line 5
    aput-boolean v3, v1, v2

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 6
    :cond_2b
    new-instance p0, Lio/realm/internal/core/NativeRealmAnyCollection;

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeCreateBooleanCollection([Z[Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;-><init>(J)V

    return-object p0
.end method

.method public static newDateCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Date;",
            ">;)",
            "Lio/realm/internal/core/NativeRealmAnyCollection;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Z

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    if-eqz v3, :cond_28

    .line 4
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    aput-wide v3, v0, v2

    const/4 v3, 0x1

    .line 5
    aput-boolean v3, v1, v2

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 6
    :cond_2b
    new-instance p0, Lio/realm/internal/core/NativeRealmAnyCollection;

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeCreateDateCollection([J[Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;-><init>(J)V

    return-object p0
.end method

.method public static newDecimal128Collection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/bson/types/Decimal128;",
            ">;)",
            "Lio/realm/internal/core/NativeRealmAnyCollection;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Z

    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bson/types/Decimal128;

    if-eqz v4, :cond_34

    .line 5
    invoke-virtual {v4}, Lorg/bson/types/Decimal128;->getLow()J

    move-result-wide v5

    aput-wide v5, v0, v3

    .line 6
    invoke-virtual {v4}, Lorg/bson/types/Decimal128;->getHigh()J

    move-result-wide v4

    aput-wide v4, v1, v3

    const/4 v4, 0x1

    .line 7
    aput-boolean v4, v2, v3

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 8
    :cond_37
    new-instance p0, Lio/realm/internal/core/NativeRealmAnyCollection;

    invoke-static {v0, v1, v2}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeCreateDecimal128Collection([J[J[Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;-><init>(J)V

    return-object p0
.end method

.method public static newDoubleCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Double;",
            ">;)",
            "Lio/realm/internal/core/NativeRealmAnyCollection;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [D

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Z

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    if-eqz v3, :cond_28

    .line 4
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v0, v2

    const/4 v3, 0x1

    .line 5
    aput-boolean v3, v1, v2

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 6
    :cond_2b
    new-instance p0, Lio/realm/internal/core/NativeRealmAnyCollection;

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeCreateDoubleCollection([D[Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;-><init>(J)V

    return-object p0
.end method

.method public static newFloatCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Float;",
            ">;)",
            "Lio/realm/internal/core/NativeRealmAnyCollection;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [F

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Z

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v3, :cond_28

    .line 4
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v0, v2

    const/4 v3, 0x1

    .line 5
    aput-boolean v3, v1, v2

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 6
    :cond_2b
    new-instance p0, Lio/realm/internal/core/NativeRealmAnyCollection;

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeCreateFloatCollection([F[Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;-><init>(J)V

    return-object p0
.end method

.method public static newIntegerCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lio/realm/internal/core/NativeRealmAnyCollection;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Z

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    if-eqz v3, :cond_28

    .line 4
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v2

    const/4 v3, 0x1

    .line 5
    aput-boolean v3, v1, v2

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 6
    :cond_2b
    new-instance p0, Lio/realm/internal/core/NativeRealmAnyCollection;

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeCreateIntegerCollection([J[Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;-><init>(J)V

    return-object p0
.end method

.method public static newObjectIdCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/bson/types/ObjectId;",
            ">;)",
            "Lio/realm/internal/core/NativeRealmAnyCollection;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Z

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bson/types/ObjectId;

    if-eqz v3, :cond_28

    .line 4
    invoke-virtual {v3}, Lorg/bson/types/ObjectId;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x1

    .line 5
    aput-boolean v3, v1, v2

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 6
    :cond_2b
    new-instance p0, Lio/realm/internal/core/NativeRealmAnyCollection;

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeCreateObjectIdCollection([Ljava/lang/String;[Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;-><init>(J)V

    return-object p0
.end method

.method public static newRealmAnyCollection([J[Z)Lio/realm/internal/core/NativeRealmAnyCollection;
    .registers 3

    new-instance v0, Lio/realm/internal/core/NativeRealmAnyCollection;

    invoke-static {p0, p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeCreateRealmAnyCollection([J[Z)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lio/realm/internal/core/NativeRealmAnyCollection;-><init>(J)V

    return-object v0
.end method

.method public static newRealmModelCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/internal/core/NativeRealmAnyCollection;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Z

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/RealmModel;

    if-eqz v3, :cond_34

    .line 4
    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    .line 5
    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    check-cast v3, Lio/realm/internal/UncheckedRow;

    invoke-virtual {v3}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v3

    aput-wide v3, v0, v2

    const/4 v3, 0x1

    .line 6
    aput-boolean v3, v1, v2

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 7
    :cond_37
    new-instance p0, Lio/realm/internal/core/NativeRealmAnyCollection;

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeCreateObjectCollection([J[Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;-><init>(J)V

    return-object p0
.end method

.method public static newStringCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/realm/internal/core/NativeRealmAnyCollection;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Z

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_24

    .line 4
    aput-object v3, v0, v2

    const/4 v3, 0x1

    .line 5
    aput-boolean v3, v1, v2

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 6
    :cond_27
    new-instance p0, Lio/realm/internal/core/NativeRealmAnyCollection;

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeCreateStringCollection([Ljava/lang/String;[Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;-><init>(J)V

    return-object p0
.end method

.method public static newUUIDCollection(Ljava/util/Collection;)Lio/realm/internal/core/NativeRealmAnyCollection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/UUID;",
            ">;)",
            "Lio/realm/internal/core/NativeRealmAnyCollection;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Z

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    if-eqz v3, :cond_28

    .line 4
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x1

    .line 5
    aput-boolean v3, v1, v2

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 6
    :cond_2b
    new-instance p0, Lio/realm/internal/core/NativeRealmAnyCollection;

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeCreateUUIDCollection([Ljava/lang/String;[Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;-><init>(J)V

    return-object p0
.end method


# virtual methods
.method public getItem(I)Lio/realm/internal/core/NativeRealmAny;
    .registers 5

    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    iget-wide v1, p0, Lio/realm/internal/core/NativeRealmAnyCollection;->nativePtr:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeGetCollectionItem(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/realm/internal/core/NativeRealmAny;-><init>(J)V

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .registers 3

    invoke-static {}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeGetFinalizerPtr()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativePtr()J
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAnyCollection;->nativePtr:J

    return-wide v0
.end method

.method public getSize()I
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/core/NativeRealmAnyCollection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/core/NativeRealmAnyCollection;->nativeGetCollectionSize(J)I

    move-result v0

    return v0
.end method
