.class public Lio/realm/internal/OsResults;
.super Ljava/lang/Object;
.source "OsResults.java"

# interfaces
.implements Lio/realm/internal/NativeObject;
.implements Lio/realm/internal/ObservableCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsResults$AddListTypeDelegate;,
        Lio/realm/internal/OsResults$Mode;,
        Lio/realm/internal/OsResults$Aggregate;,
        Lio/realm/internal/OsResults$ListIterator;,
        Lio/realm/internal/OsResults$Iterator;
    }
.end annotation


# static fields
.field public static final AGGREGATE_FUNCTION_AVERAGE:B = 0x3t

.field public static final AGGREGATE_FUNCTION_MAXIMUM:B = 0x2t

.field public static final AGGREGATE_FUNCTION_MINIMUM:B = 0x1t

.field public static final AGGREGATE_FUNCTION_SUM:B = 0x4t

.field private static final CLOSED_REALM_MESSAGE:Ljava/lang/String; = "This Realm instance has already been closed, making it unusable."

.field public static final MODE_EMPTY:B = 0x0t

.field public static final MODE_LIST:B = 0x2t

.field public static final MODE_QUERY:B = 0x3t

.field public static final MODE_TABLE:B = 0x1t

.field public static final MODE_TABLEVIEW:B = 0x4t

.field private static final nativeFinalizerPtr:J


# instance fields
.field private final context:Lio/realm/internal/NativeContext;

.field private isSnapshot:Z

.field public loaded:Z

.field private final nativePtr:J

.field public final observerPairs:Lio/realm/internal/ObserverPairList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/ObservableCollection$CollectionObserverPair;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedRealm:Lio/realm/internal/OsSharedRealm;

.field private final table:Lio/realm/internal/Table;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lio/realm/internal/OsResults;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsResults;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;J)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->isSnapshot:Z

    .line 3
    new-instance v1, Lio/realm/internal/ObserverPairList;

    invoke-direct {v1}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v1, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 4
    iput-object p1, p0, Lio/realm/internal/OsResults;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 5
    iget-object v1, p1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    iput-object v1, p0, Lio/realm/internal/OsResults;->context:Lio/realm/internal/NativeContext;

    .line 6
    iput-wide p2, p0, Lio/realm/internal/OsResults;->nativePtr:J

    .line 7
    invoke-virtual {v1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 8
    invoke-virtual {p0}, Lio/realm/internal/OsResults;->getMode()Lio/realm/internal/OsResults$Mode;

    move-result-object v1

    sget-object v2, Lio/realm/internal/OsResults$Mode;->QUERY:Lio/realm/internal/OsResults$Mode;

    if-eq v1, v2, :cond_21

    const/4 v0, 0x1

    :cond_21
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->loaded:Z

    .line 9
    new-instance v0, Lio/realm/internal/Table;

    invoke-static {p2, p3}, Lio/realm/internal/OsResults;->nativeGetTable(J)J

    move-result-wide p2

    invoke-direct {v0, p1, p2, p3}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    iput-object v0, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V
    .registers 7

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->isSnapshot:Z

    .line 12
    new-instance v1, Lio/realm/internal/ObserverPairList;

    invoke-direct {v1}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v1, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 13
    iput-object p1, p0, Lio/realm/internal/OsResults;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 14
    iget-object p1, p1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    iput-object p1, p0, Lio/realm/internal/OsResults;->context:Lio/realm/internal/NativeContext;

    .line 15
    iput-object p2, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    .line 16
    iput-wide p3, p0, Lio/realm/internal/OsResults;->nativePtr:J

    .line 17
    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 18
    invoke-virtual {p0}, Lio/realm/internal/OsResults;->getMode()Lio/realm/internal/OsResults$Mode;

    move-result-object p1

    sget-object p2, Lio/realm/internal/OsResults$Mode;->QUERY:Lio/realm/internal/OsResults$Mode;

    if-eq p1, p2, :cond_23

    const/4 v0, 0x1

    :cond_23
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->loaded:Z

    return-void
.end method

.method public static synthetic access$000(Lio/realm/internal/OsResults;)Lio/realm/internal/OsSharedRealm;
    .registers 1

    iget-object p0, p0, Lio/realm/internal/OsResults;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    return-object p0
.end method

.method public static synthetic access$100(Lio/realm/internal/OsResults;)Z
    .registers 1

    iget-boolean p0, p0, Lio/realm/internal/OsResults;->isSnapshot:Z

    return p0
.end method

.method private addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "TT;>;",
            "Lio/realm/internal/OsResults$AddListTypeDelegate<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-virtual {p0}, Lio/realm/internal/OsResults;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 2
    invoke-interface {p3, v0, p2}, Lio/realm/internal/OsResults$AddListTypeDelegate;->addList(Lio/realm/internal/objectstore/OsObjectBuilder;Lio/realm/RealmList;)V

    .line 3
    :try_start_e
    iget-wide p2, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->getNativePtr()J

    move-result-wide v1

    invoke-static {p2, p3, p1, v1, v2}, Lio/realm/internal/OsResults;->nativeSetList(JLjava/lang/String;J)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1b

    .line 4
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    return-void

    :catchall_1b
    move-exception p1

    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    .line 5
    throw p1
.end method

.method public static createForBacklinks(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/internal/OsResults;
    .registers 12

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    .line 3
    invoke-virtual {p2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v4

    .line 4
    invoke-virtual {p2, p3}, Lio/realm/internal/Table;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v6

    .line 5
    invoke-static/range {v0 .. v7}, Lio/realm/internal/OsResults;->nativeCreateResultsFromBacklinks(JJJJ)J

    move-result-wide v0

    .line 6
    new-instance p1, Lio/realm/internal/OsResults;

    invoke-direct {p1, p0, p2, v0, v1}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    return-object p1
.end method

.method public static createFromMap(Lio/realm/internal/OsSharedRealm;J)Lio/realm/internal/OsResults;
    .registers 4

    new-instance v0, Lio/realm/internal/OsResults;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    return-object v0
.end method

.method public static createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;)Lio/realm/internal/OsResults;
    .registers 6

    .line 1
    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 2
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsResults;->nativeCreateResults(JJ)J

    move-result-wide v0

    .line 3
    new-instance v2, Lio/realm/internal/OsResults;

    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    invoke-direct {v2, p0, p1, v0, v1}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    return-object v2
.end method

.method private static native nativeAggregate(JJB)Ljava/lang/Object;
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeContains(JJ)Z
.end method

.method public static native nativeCreateResults(JJ)J
.end method

.method private static native nativeCreateResultsFromBacklinks(JJJJ)J
.end method

.method private static native nativeCreateSnapshot(J)J
.end method

.method private static native nativeDelete(JJ)V
.end method

.method private static native nativeDeleteFirst(J)Z
.end method

.method private static native nativeDeleteLast(J)Z
.end method

.method private static native nativeEvaluateQueryIfNeeded(JZ)V
.end method

.method private static native nativeFirstRow(J)J
.end method

.method private static native nativeFreeze(JJ)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetMode(J)B
.end method

.method private static native nativeGetRow(JI)J
.end method

.method private static native nativeGetTable(J)J
.end method

.method private static native nativeGetValue(JI)Ljava/lang/Object;
.end method

.method private static native nativeIndexOf(JJ)J
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeLastRow(J)J
.end method

.method private static native nativeSetBinary(JLjava/lang/String;[B)V
    .param p3    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeSetBoolean(JLjava/lang/String;Z)V
.end method

.method private static native nativeSetDecimal128(JLjava/lang/String;JJ)V
.end method

.method private static native nativeSetDouble(JLjava/lang/String;D)V
.end method

.method private static native nativeSetFloat(JLjava/lang/String;F)V
.end method

.method private static native nativeSetInt(JLjava/lang/String;J)V
.end method

.method private static native nativeSetList(JLjava/lang/String;J)V
.end method

.method private static native nativeSetNull(JLjava/lang/String;)V
.end method

.method private static native nativeSetObject(JLjava/lang/String;J)V
.end method

.method private static native nativeSetObjectId(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetString(JLjava/lang/String;Ljava/lang/String;)V
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeSetTimestamp(JLjava/lang/String;J)V
.end method

.method private static native nativeSetUUID(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSize(J)J
.end method

.method private native nativeStartListening(J)V
.end method

.method private native nativeStopListening(J)V
.end method

.method private static native nativeStringDescriptor(JLjava/lang/String;J)J
.end method

.method private static native nativeWhere(J)J
.end method

.method private static native toJSON(JI)Ljava/lang/String;
.end method


# virtual methods
.method public addListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsResults;->nativeStartListening(J)V

    .line 3
    :cond_d
    new-instance v0, Lio/realm/internal/ObservableCollection$CollectionObserverPair;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/ObservableCollection$CollectionObserverPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1, v0}, Lio/realm/internal/ObserverPairList;->add(Lio/realm/internal/ObserverPairList$ObserverPair;)V

    return-void
.end method

.method public addListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/RealmChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;

    invoke-direct {v0, p2}, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;-><init>(Lio/realm/RealmChangeListener;)V

    invoke-virtual {p0, p1, v0}, Lio/realm/internal/OsResults;->addListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V

    return-void
.end method

.method public aggregateDate(Lio/realm/internal/OsResults$Aggregate;J)Ljava/util/Date;
    .registers 6

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/OsResults$Aggregate;->getValue()B

    move-result p1

    invoke-static {v0, v1, p2, p3, p1}, Lio/realm/internal/OsResults;->nativeAggregate(JJB)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public aggregateNumber(Lio/realm/internal/OsResults$Aggregate;J)Ljava/lang/Number;
    .registers 6

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/OsResults$Aggregate;->getValue()B

    move-result p1

    invoke-static {v0, v1, p2, p3, p1}, Lio/realm/internal/OsResults;->nativeAggregate(JJB)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public clear()V
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeClear(J)V

    return-void
.end method

.method public contains(Lio/realm/internal/UncheckedRow;)Z
    .registers 6

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsResults;->nativeContains(JJ)Z

    move-result p1

    return p1
.end method

.method public createSnapshot()Lio/realm/internal/OsResults;
    .registers 6

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/OsResults;->isSnapshot:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 2
    :cond_5
    new-instance v0, Lio/realm/internal/OsResults;

    iget-object v1, p0, Lio/realm/internal/OsResults;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    iget-wide v3, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v3, v4}, Lio/realm/internal/OsResults;->nativeCreateSnapshot(J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lio/realm/internal/OsResults;->isSnapshot:Z

    return-object v0
.end method

.method public delete(J)V
    .registers 5

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsResults;->nativeDelete(JJ)V

    return-void
.end method

.method public deleteFirst()Z
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeDeleteFirst(J)Z

    move-result v0

    return v0
.end method

.method public deleteLast()Z
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeDeleteLast(J)Z

    move-result v0

    return v0
.end method

.method public distinct(Lio/realm/internal/objectstore/OsKeyPathMapping;[Ljava/lang/String;)Lio/realm/internal/OsResults;
    .registers 10
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Lio/realm/internal/TableQuery;->buildDistinctDescriptor([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Lio/realm/internal/OsResults;

    iget-object v1, p0, Lio/realm/internal/OsResults;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    iget-wide v3, p0, Lio/realm/internal/OsResults;->nativePtr:J

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lio/realm/internal/objectstore/OsKeyPathMapping;->getNativePtr()J

    move-result-wide v5

    goto :goto_15

    :cond_13
    const-wide/16 v5, 0x0

    :goto_15
    invoke-static {v3, v4, p2, v5, v6}, Lio/realm/internal/OsResults;->nativeStringDescriptor(JLjava/lang/String;J)J

    move-result-wide p1

    invoke-direct {v0, v1, v2, p1, p2}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    return-object v0
.end method

.method public firstUncheckedRow()Lio/realm/internal/UncheckedRow;
    .registers 6

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeFirstRow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    .line 2
    iget-object v2, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getUncheckedRowByPointer(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public freeze(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/OsResults;
    .registers 8

    .line 1
    new-instance v0, Lio/realm/internal/OsResults;

    iget-object v1, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    invoke-virtual {v1, p1}, Lio/realm/internal/Table;->freeze(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v2, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/OsResults;->nativeFreeze(JJ)J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    .line 2
    invoke-virtual {p0}, Lio/realm/internal/OsResults;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 3
    invoke-virtual {v0}, Lio/realm/internal/OsResults;->load()V

    :cond_1e
    return-object v0
.end method

.method public getMode()Lio/realm/internal/OsResults$Mode;
    .registers 4

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeGetMode(J)B

    move-result v0

    sget-object v1, Lio/realm/internal/OsResults$Mode;->EMPTY:Lio/realm/internal/OsResults$Mode;

    if-eqz v0, :cond_2e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 2
    sget-object v0, Lio/realm/internal/OsResults$Mode;->TABLEVIEW:Lio/realm/internal/OsResults$Mode;

    goto :goto_30

    .line 3
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid value: "

    .line 4
    invoke-static {v2, v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_25
    sget-object v0, Lio/realm/internal/OsResults$Mode;->QUERY:Lio/realm/internal/OsResults$Mode;

    goto :goto_30

    .line 7
    :cond_28
    sget-object v0, Lio/realm/internal/OsResults$Mode;->PRIMITIVE_LIST:Lio/realm/internal/OsResults$Mode;

    goto :goto_30

    .line 8
    :cond_2b
    sget-object v0, Lio/realm/internal/OsResults$Mode;->TABLE:Lio/realm/internal/OsResults$Mode;

    goto :goto_30

    .line 9
    :cond_2e
    sget-object v0, Lio/realm/internal/OsResults$Mode;->EMPTY:Lio/realm/internal/OsResults$Mode;

    :goto_30
    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .registers 3

    sget-wide v0, Lio/realm/internal/OsResults;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    return-wide v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    return-object v0
.end method

.method public getUncheckedRow(I)Lio/realm/internal/UncheckedRow;
    .registers 5

    iget-object v0, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    iget-wide v1, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/OsResults;->nativeGetRow(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->getUncheckedRowByPointer(J)Lio/realm/internal/UncheckedRow;

    move-result-object p1

    return-object p1
.end method

.method public getValue(I)Ljava/lang/Object;
    .registers 4

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->nativeGetValue(JI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Lio/realm/internal/UncheckedRow;)I
    .registers 6

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsResults;->nativeIndexOf(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-lez p1, :cond_15

    const p1, 0x7fffffff

    goto :goto_16

    :cond_15
    long-to-int p1, v0

    :goto_16
    return p1
.end method

.method public isLoaded()Z
    .registers 2

    iget-boolean v0, p0, Lio/realm/internal/OsResults;->loaded:Z

    return v0
.end method

.method public isValid()Z
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeIsValid(J)Z

    move-result v0

    return v0
.end method

.method public lastUncheckedRow()Lio/realm/internal/UncheckedRow;
    .registers 6

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeLastRow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    .line 2
    iget-object v2, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getUncheckedRowByPointer(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public load()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/OsResults;->loaded:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsResults;->nativeEvaluateQueryIfNeeded(JZ)V

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lio/realm/internal/OsResults;->notifyChangeListeners(J)V

    return-void
.end method

.method public notifyChangeListeners(J)V
    .registers 7

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_d

    .line 1
    new-instance p1, Lio/realm/internal/EmptyLoadChangeSet;

    invoke-direct {p1}, Lio/realm/internal/EmptyLoadChangeSet;-><init>()V

    goto :goto_18

    .line 2
    :cond_d
    new-instance v1, Lio/realm/internal/OsCollectionChangeSet;

    invoke-virtual {p0}, Lio/realm/internal/OsResults;->isLoaded()Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-direct {v1, p1, p2, v2}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZ)V

    move-object p1, v1

    .line 3
    :goto_18
    invoke-virtual {p1}, Lio/realm/internal/OsCollectionChangeSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-virtual {p0}, Lio/realm/internal/OsResults;->isLoaded()Z

    move-result p2

    if-eqz p2, :cond_25

    return-void

    .line 4
    :cond_25
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->loaded:Z

    .line 5
    iget-object p2, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    new-instance v0, Lio/realm/internal/ObservableCollection$Callback;

    invoke-direct {v0, p1}, Lio/realm/internal/ObservableCollection$Callback;-><init>(Lio/realm/internal/OsCollectionChangeSet;)V

    invoke-virtual {p2, v0}, Lio/realm/internal/ObserverPairList;->foreach(Lio/realm/internal/ObserverPairList$Callback;)V

    return-void
.end method

.method public removeAllListeners()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->clear()V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsResults;->nativeStopListening(J)V

    return-void
.end method

.method public removeListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/ObserverPairList;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3
    iget-wide p1, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-direct {p0, p1, p2}, Lio/realm/internal/OsResults;->nativeStopListening(J)V

    :cond_12
    return-void
.end method

.method public removeListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/RealmChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;

    invoke-direct {v0, p2}, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;-><init>(Lio/realm/RealmChangeListener;)V

    invoke-virtual {p0, p1, v0}, Lio/realm/internal/OsResults;->removeListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V

    return-void
.end method

.method public setBlob(Ljava/lang/String;[B)V
    .registers 5
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsResults;->nativeSetBinary(JLjava/lang/String;[B)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .registers 5

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsResults;->nativeSetBoolean(JLjava/lang/String;Z)V

    return-void
.end method

.method public setBooleanList(Ljava/lang/String;Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/OsResults$6;

    invoke-direct {v0}, Lio/realm/internal/OsResults$6;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setByteArrayList(Ljava/lang/String;Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "[B>;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/OsResults$7;

    invoke-direct {v0}, Lio/realm/internal/OsResults$7;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setByteList(Ljava/lang/String;Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/OsResults$2;

    invoke-direct {v0}, Lio/realm/internal/OsResults$2;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/util/Date;)V
    .registers 7
    .param p2    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_8

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->nativeSetNull(JLjava/lang/String;)V

    goto :goto_11

    .line 2
    :cond_8
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lio/realm/internal/OsResults;->nativeSetTimestamp(JLjava/lang/String;J)V

    :goto_11
    return-void
.end method

.method public setDateList(Ljava/lang/String;Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/OsResults$8;

    invoke-direct {v0}, Lio/realm/internal/OsResults$8;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setDecimal128(Ljava/lang/String;Lorg/bson/types/Decimal128;)V
    .registers 12
    .param p2    # Lorg/bson/types/Decimal128;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_8

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->nativeSetNull(JLjava/lang/String;)V

    goto :goto_16

    .line 2
    :cond_8
    iget-wide v2, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p2}, Lorg/bson/types/Decimal128;->getLow()J

    move-result-wide v5

    invoke-virtual {p2}, Lorg/bson/types/Decimal128;->getHigh()J

    move-result-wide v7

    move-object v4, p1

    invoke-static/range {v2 .. v8}, Lio/realm/internal/OsResults;->nativeSetDecimal128(JLjava/lang/String;JJ)V

    :goto_16
    return-void
.end method

.method public setDecimal128List(Ljava/lang/String;Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Lorg/bson/types/Decimal128;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/OsResults$12;

    invoke-direct {v0}, Lio/realm/internal/OsResults$12;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .registers 6

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsResults;->nativeSetDouble(JLjava/lang/String;D)V

    return-void
.end method

.method public setDoubleList(Ljava/lang/String;Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/OsResults$10;

    invoke-direct {v0}, Lio/realm/internal/OsResults$10;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .registers 5

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsResults;->nativeSetFloat(JLjava/lang/String;F)V

    return-void
.end method

.method public setFloatList(Ljava/lang/String;Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/OsResults$9;

    invoke-direct {v0}, Lio/realm/internal/OsResults$9;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setInt(Ljava/lang/String;J)V
    .registers 6

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsResults;->nativeSetInt(JLjava/lang/String;J)V

    return-void
.end method

.method public setIntegerList(Ljava/lang/String;Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/OsResults$4;

    invoke-direct {v0}, Lio/realm/internal/OsResults$4;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setLongList(Ljava/lang/String;Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/OsResults$5;

    invoke-direct {v0}, Lio/realm/internal/OsResults$5;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setModelList(Ljava/lang/String;Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/OsResults$11;

    invoke-direct {v0}, Lio/realm/internal/OsResults$11;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setNull(Ljava/lang/String;)V
    .registers 4

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->nativeSetNull(JLjava/lang/String;)V

    return-void
.end method

.method public setObject(Ljava/lang/String;Lio/realm/internal/Row;)V
    .registers 7
    .param p2    # Lio/realm/internal/Row;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_6

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/internal/OsResults;->setNull(Ljava/lang/String;)V

    goto :goto_20

    .line 2
    :cond_6
    instance-of v0, p2, Lio/realm/internal/UncheckedRow;

    if-eqz v0, :cond_11

    .line 3
    check-cast p2, Lio/realm/internal/UncheckedRow;

    invoke-virtual {p2}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v0

    goto :goto_1b

    .line 4
    :cond_11
    instance-of v0, p2, Lio/realm/internal/CheckedRow;

    if-eqz v0, :cond_21

    .line 5
    check-cast p2, Lio/realm/internal/CheckedRow;

    invoke-virtual {p2}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v0

    .line 6
    :goto_1b
    iget-wide v2, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v2, v3, p1, v0, v1}, Lio/realm/internal/OsResults;->nativeSetObject(JLjava/lang/String;J)V

    :goto_20
    return-void

    .line 7
    :cond_21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported Row type: "

    .line 8
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setObjectId(Ljava/lang/String;Lorg/bson/types/ObjectId;)V
    .registers 5
    .param p2    # Lorg/bson/types/ObjectId;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_8

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->nativeSetNull(JLjava/lang/String;)V

    goto :goto_11

    .line 2
    :cond_8
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p2}, Lorg/bson/types/ObjectId;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsResults;->nativeSetObjectId(JLjava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method public setObjectIdList(Ljava/lang/String;Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Lorg/bson/types/ObjectId;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/OsResults$13;

    invoke-direct {v0}, Lio/realm/internal/OsResults$13;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setShortList(Ljava/lang/String;Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/OsResults$3;

    invoke-direct {v0}, Lio/realm/internal/OsResults$3;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsResults;->nativeSetString(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStringList(Ljava/lang/String;Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/OsResults$1;

    invoke-direct {v0}, Lio/realm/internal/OsResults$1;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setUUID(Ljava/lang/String;Ljava/util/UUID;)V
    .registers 5
    .param p2    # Ljava/util/UUID;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_8

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->nativeSetNull(JLjava/lang/String;)V

    goto :goto_11

    .line 2
    :cond_8
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsResults;->nativeSetUUID(JLjava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method public setUUIDList(Ljava/lang/String;Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/OsResults$14;

    invoke-direct {v0}, Lio/realm/internal/OsResults$14;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public size()J
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public sort(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/Sort;)Lio/realm/internal/OsResults;
    .registers 10
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-array p2, v0, [Lio/realm/Sort;

    aput-object p3, p2, v2

    .line 1
    invoke-static {v1, p2}, Lio/realm/internal/TableQuery;->buildSortDescriptor([Ljava/lang/String;[Lio/realm/Sort;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance p3, Lio/realm/internal/OsResults;

    iget-object v0, p0, Lio/realm/internal/OsResults;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v1, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    iget-wide v2, p0, Lio/realm/internal/OsResults;->nativePtr:J

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lio/realm/internal/objectstore/OsKeyPathMapping;->getNativePtr()J

    move-result-wide v4

    goto :goto_1f

    :cond_1d
    const-wide/16 v4, 0x0

    :goto_1f
    invoke-static {v2, v3, p2, v4, v5}, Lio/realm/internal/OsResults;->nativeStringDescriptor(JLjava/lang/String;J)J

    move-result-wide p1

    invoke-direct {p3, v0, v1, p1, p2}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    return-object p3
.end method

.method public sort(Lio/realm/internal/objectstore/OsKeyPathMapping;[Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/internal/OsResults;
    .registers 10
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_2e

    .line 3
    array-length v0, p3

    if-eqz v0, :cond_2e

    .line 4
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_26

    .line 5
    invoke-static {p2, p3}, Lio/realm/internal/TableQuery;->buildSortDescriptor([Ljava/lang/String;[Lio/realm/Sort;)Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance p3, Lio/realm/internal/OsResults;

    iget-object v0, p0, Lio/realm/internal/OsResults;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v1, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    iget-wide v2, p0, Lio/realm/internal/OsResults;->nativePtr:J

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lio/realm/internal/objectstore/OsKeyPathMapping;->getNativePtr()J

    move-result-wide v4

    goto :goto_1e

    :cond_1c
    const-wide/16 v4, 0x0

    :goto_1e
    invoke-static {v2, v3, p2, v4, v5}, Lio/realm/internal/OsResults;->nativeStringDescriptor(JLjava/lang/String;J)J

    move-result-wide p1

    invoke-direct {p3, v0, v1, p1, p2}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    return-object p3

    .line 7
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of fields and sort orders do not match."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must provide at least one sort order."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toJSON(I)Ljava/lang/String;
    .registers 4

    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->toJSON(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public where()Lio/realm/internal/TableQuery;
    .registers 6

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeWhere(J)J

    move-result-wide v0

    .line 2
    new-instance v2, Lio/realm/internal/TableQuery;

    iget-object v3, p0, Lio/realm/internal/OsResults;->context:Lio/realm/internal/NativeContext;

    iget-object v4, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    invoke-direct {v2, v3, v4, v0, v1}, Lio/realm/internal/TableQuery;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object v2
.end method
