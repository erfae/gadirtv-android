.class public Lio/realm/internal/OsObject;
.super Ljava/lang/Object;
.source "OsObject.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsObject$Callback;,
        Lio/realm/internal/OsObject$ObjectObserverPair;,
        Lio/realm/internal/OsObject$OsObjectChangeSet;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field private final nativePtr:J

.field private observerPairs:Lio/realm/internal/ObserverPairList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/OsObject$ObjectObserverPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lio/realm/internal/OsObject;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsObject;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/realm/internal/ObserverPairList;

    invoke-direct {v0}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 3
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p2}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsObject;->nativeCreate(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    .line 4
    iget-object p1, p1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    return-void
.end method

.method public static create(Lio/realm/internal/Table;)Lio/realm/internal/UncheckedRow;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    .line 2
    new-instance v1, Lio/realm/internal/UncheckedRow;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 3
    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/realm/internal/OsObject;->nativeCreateNewObject(J)J

    move-result-wide v2

    invoke-direct {v1, v0, p0, v2, v3}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object v1
.end method

.method public static createEmbeddedObject(Lio/realm/internal/Table;JJ)J
    .registers 11

    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsObject;->nativeCreateEmbeddedObject(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static createRow(Lio/realm/internal/Table;)J
    .registers 3

    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/realm/internal/OsObject;->nativeCreateRow(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J
    .registers 18
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p3

    .line 1
    invoke-virtual/range {p0 .. p2}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lio/realm/internal/Table;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v2

    .line 3
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-ne v1, v3, :cond_3d

    if-eqz v0, :cond_2c

    .line 4
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_15

    goto :goto_2c

    .line 5
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary key value is not a String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_2c
    :goto_2c
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v2

    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v4

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    move-wide v6, p1

    invoke-static/range {v2 .. v8}, Lio/realm/internal/OsObject;->nativeCreateRowWithStringPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_3d
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-ne v1, v3, :cond_64

    if-nez v0, :cond_46

    const-wide/16 v3, 0x0

    goto :goto_4e

    .line 8
    :cond_46
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_4e
    move-wide v11, v3

    .line 9
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v5

    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v7

    if-nez v0, :cond_5c

    const/4 v0, 0x1

    const/4 v13, 0x1

    goto :goto_5e

    :cond_5c
    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_5e
    move-wide v9, p1

    invoke-static/range {v5 .. v13}, Lio/realm/internal/OsObject;->nativeCreateRowWithLongPrimaryKey(JJJJZ)J

    move-result-wide v0

    return-wide v0

    .line 10
    :cond_64
    sget-object v3, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_9d

    if-eqz v0, :cond_87

    .line 11
    instance-of v1, v0, Lorg/bson/types/ObjectId;

    if-eqz v1, :cond_70

    goto :goto_87

    .line 12
    :cond_70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary key value is not an ObjectId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_87
    :goto_87
    if-nez v0, :cond_8a

    goto :goto_8e

    .line 13
    :cond_8a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_8e
    move-object v11, v4

    .line 14
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v5

    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v7

    move-wide v9, p1

    invoke-static/range {v5 .. v11}, Lio/realm/internal/OsObject;->nativeCreateRowWithObjectIdPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 15
    :cond_9d
    sget-object v3, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    if-ne v1, v3, :cond_d5

    if-eqz v0, :cond_bf

    .line 16
    instance-of v1, v0, Ljava/util/UUID;

    if-eqz v1, :cond_a8

    goto :goto_bf

    .line 17
    :cond_a8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary key value is not an UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_bf
    :goto_bf
    if-nez v0, :cond_c2

    goto :goto_c6

    .line 18
    :cond_c2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_c6
    move-object v11, v4

    .line 19
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v5

    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v7

    move-wide v9, p1

    invoke-static/range {v5 .. v11}, Lio/realm/internal/OsObject;->nativeCreateRowWithUUIDPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 20
    :cond_d5
    new-instance v0, Lio/realm/exceptions/RealmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)Lio/realm/internal/UncheckedRow;
    .registers 13
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lio/realm/internal/OsObject;->getAndVerifyPrimaryKeyColumnIndex(Lio/realm/internal/Table;)J

    move-result-wide v4

    .line 2
    invoke-virtual {p0, v4, v5}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lio/realm/internal/Table;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    .line 4
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-ne v0, v2, :cond_45

    if-eqz p1, :cond_2e

    .line 5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_17

    goto :goto_2e

    .line 6
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Primary key value is not a String: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2e
    :goto_2e
    new-instance v7, Lio/realm/internal/UncheckedRow;

    iget-object v8, v1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 8
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v2

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithStringPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide v0

    invoke-direct {v7, v8, p0, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object v7

    .line 9
    :cond_45
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-ne v0, v2, :cond_72

    if-nez p1, :cond_4e

    const-wide/16 v2, 0x0

    goto :goto_56

    .line 10
    :cond_4e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_56
    move-wide v6, v2

    .line 11
    new-instance v9, Lio/realm/internal/UncheckedRow;

    iget-object v10, v1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 12
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v2

    if-nez p1, :cond_68

    const/4 p1, 0x1

    const/4 v8, 0x1

    goto :goto_6a

    :cond_68
    const/4 p1, 0x0

    const/4 v8, 0x0

    :goto_6a
    invoke-static/range {v0 .. v8}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithLongPrimaryKey(JJJJZ)J

    move-result-wide v0

    invoke-direct {v9, v10, p0, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object v9

    .line 13
    :cond_72
    sget-object v2, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_94

    if-nez p1, :cond_7b

    move-object v6, v3

    goto :goto_80

    .line 14
    :cond_7b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 15
    :goto_80
    new-instance p1, Lio/realm/internal/UncheckedRow;

    iget-object v7, v1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 16
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v2

    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithObjectIdPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide v0

    invoke-direct {p1, v7, p0, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object p1

    .line 17
    :cond_94
    sget-object v2, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    if-ne v0, v2, :cond_b5

    if-nez p1, :cond_9c

    move-object v6, v3

    goto :goto_a1

    .line 18
    :cond_9c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 19
    :goto_a1
    new-instance p1, Lio/realm/internal/UncheckedRow;

    iget-object v7, v1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 20
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v2

    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithUUIDPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide v0

    invoke-direct {p1, v7, p0, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object p1

    .line 21
    :cond_b5
    new-instance p0, Lio/realm/exceptions/RealmException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getAndVerifyPrimaryKeyColumnIndex(Lio/realm/internal/Table;)J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/Table;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {p0, v0}, Lio/realm/internal/Table;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has no primary key defined."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeCreate(JJ)J
.end method

.method private static native nativeCreateEmbeddedObject(JJJ)J
.end method

.method private static native nativeCreateNewObject(J)J
.end method

.method private static native nativeCreateNewObjectWithLongPrimaryKey(JJJJZ)J
.end method

.method private static native nativeCreateNewObjectWithObjectIdPrimaryKey(JJJLjava/lang/String;)J
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeCreateNewObjectWithStringPrimaryKey(JJJLjava/lang/String;)J
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeCreateNewObjectWithUUIDPrimaryKey(JJJLjava/lang/String;)J
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeCreateRow(J)J
.end method

.method private static native nativeCreateRowWithLongPrimaryKey(JJJJZ)J
.end method

.method private static native nativeCreateRowWithObjectIdPrimaryKey(JJJLjava/lang/String;)J
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeCreateRowWithStringPrimaryKey(JJJLjava/lang/String;)J
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeCreateRowWithUUIDPrimaryKey(JJJLjava/lang/String;)J
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private native nativeStartListening(J)V
.end method

.method private native nativeStopListening(J)V
.end method

.method private notifyChangeListeners([Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    new-instance v1, Lio/realm/internal/OsObject$Callback;

    invoke-direct {v1, p1}, Lio/realm/internal/OsObject$Callback;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/ObserverPairList;->foreach(Lio/realm/internal/ObserverPairList$Callback;)V

    return-void
.end method


# virtual methods
.method public addListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(TT;",
            "Lio/realm/RealmObjectChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStartListening(J)V

    .line 3
    :cond_d
    new-instance v0, Lio/realm/internal/OsObject$ObjectObserverPair;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/OsObject$ObjectObserverPair;-><init>(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    .line 4
    iget-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1, v0}, Lio/realm/internal/ObserverPairList;->add(Lio/realm/internal/ObserverPairList$ObserverPair;)V

    return-void
.end method

.method public getNativeFinalizerPtr()J
    .registers 3

    sget-wide v0, Lio/realm/internal/OsObject;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    return-wide v0
.end method

.method public removeListener(Lio/realm/RealmModel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, p1}, Lio/realm/internal/ObserverPairList;->removeByObserver(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3
    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStopListening(J)V

    :cond_12
    return-void
.end method

.method public removeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(TT;",
            "Lio/realm/RealmObjectChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/ObserverPairList;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 6
    iget-wide p1, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, p1, p2}, Lio/realm/internal/OsObject;->nativeStopListening(J)V

    :cond_12
    return-void
.end method

.method public setObserverPairs(Lio/realm/internal/ObserverPairList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/OsObject$ObjectObserverPair;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2
    iput-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 3
    invoke-virtual {p1}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    .line 4
    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStartListening(J)V

    :cond_15
    return-void

    .line 5
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'observerPairs\' is not empty. Listeners have been added before."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
