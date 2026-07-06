.class abstract Lio/realm/SetValueOperator;
.super Ljava/lang/Object;
.source "SetValueOperator.java"

# interfaces
.implements Lio/realm/internal/ObservableSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/realm/internal/ObservableSet;"
    }
.end annotation


# instance fields
.field public final baseRealm:Lio/realm/BaseRealm;

.field public final className:Ljava/lang/String;

.field public final osSet:Lio/realm/internal/OsSet;

.field public final setObserverPairs:Lio/realm/internal/ObserverPairList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/ObservableSet$SetObserverPair<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field public final valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsSet;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Lio/realm/internal/ObserverPairList;

    invoke-direct {v1}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v1, p0, Lio/realm/SetValueOperator;->setObserverPairs:Lio/realm/internal/ObserverPairList;

    .line 4
    iput-object p1, p0, Lio/realm/SetValueOperator;->baseRealm:Lio/realm/BaseRealm;

    .line 5
    iput-object p2, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    .line 6
    iput-object p3, p0, Lio/realm/SetValueOperator;->valueClass:Ljava/lang/Class;

    .line 7
    iput-object v0, p0, Lio/realm/SetValueOperator;->className:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsSet;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lio/realm/DynamicRealmObject;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v1, Lio/realm/internal/ObserverPairList;

    invoke-direct {v1}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v1, p0, Lio/realm/SetValueOperator;->setObserverPairs:Lio/realm/internal/ObserverPairList;

    .line 10
    iput-object p1, p0, Lio/realm/SetValueOperator;->baseRealm:Lio/realm/BaseRealm;

    .line 11
    iput-object p2, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    .line 12
    iput-object v0, p0, Lio/realm/SetValueOperator;->valueClass:Ljava/lang/Class;

    .line 13
    iput-object p3, p0, Lio/realm/SetValueOperator;->className:Ljava/lang/String;

    return-void
.end method

.method private isCollectionSameType(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lio/realm/SetValueOperator;->valueClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isObjectSameType(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/realm/SetValueOperator;->valueClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private isUpperBoundCollectionSameType(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lio/realm/SetValueOperator;->valueClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static iteratorFactory(Ljava/lang/Class;Lio/realm/internal/OsSet;Lio/realm/BaseRealm;Ljava/lang/String;)Lio/realm/SetIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/realm/internal/OsSet;",
            "Lio/realm/BaseRealm;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/SetIterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_0

    .line 2
    new-instance p0, Lio/realm/BooleanSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/BooleanSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 3
    :cond_0
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_1

    .line 4
    new-instance p0, Lio/realm/StringSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/StringSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 5
    :cond_1
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_2

    .line 6
    new-instance p0, Lio/realm/IntegerSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/IntegerSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 7
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_3

    .line 8
    new-instance p0, Lio/realm/LongSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/LongSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 9
    :cond_3
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_4

    .line 10
    new-instance p0, Lio/realm/ShortSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/ShortSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 11
    :cond_4
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_5

    .line 12
    new-instance p0, Lio/realm/ByteSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/ByteSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 13
    :cond_5
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_6

    .line 14
    new-instance p0, Lio/realm/FloatSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/FloatSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 15
    :cond_6
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_7

    .line 16
    new-instance p0, Lio/realm/DoubleSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/DoubleSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 17
    :cond_7
    const-class v0, [B

    if-ne p0, v0, :cond_8

    .line 18
    new-instance p0, Lio/realm/BinarySetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/BinarySetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 19
    :cond_8
    const-class v0, Ljava/util/Date;

    if-ne p0, v0, :cond_9

    .line 20
    new-instance p0, Lio/realm/DateSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/DateSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 21
    :cond_9
    const-class v0, Lorg/bson/types/Decimal128;

    if-ne p0, v0, :cond_a

    .line 22
    new-instance p0, Lio/realm/Decimal128SetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/Decimal128SetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 23
    :cond_a
    const-class v0, Lorg/bson/types/ObjectId;

    if-ne p0, v0, :cond_b

    .line 24
    new-instance p0, Lio/realm/ObjectIdSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/ObjectIdSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 25
    :cond_b
    const-class v0, Ljava/util/UUID;

    if-ne p0, v0, :cond_c

    .line 26
    new-instance p0, Lio/realm/UUIDSetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/UUIDSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 27
    :cond_c
    const-class v0, Lio/realm/RealmAny;

    if-ne p0, v0, :cond_d

    .line 28
    new-instance p0, Lio/realm/RealmAnySetIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmAnySetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    return-object p0

    .line 29
    :cond_d
    const-class v0, Lio/realm/DynamicRealmObject;

    if-ne p0, v0, :cond_e

    .line 30
    new-instance p0, Lio/realm/DynamicSetIterator;

    invoke-direct {p0, p1, p2, p3}, Lio/realm/DynamicSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;Ljava/lang/String;)V

    return-object p0

    .line 31
    :cond_e
    invoke-static {p0}, Lio/realm/CollectionUtils;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 32
    new-instance p3, Lio/realm/RealmModelSetIterator;

    invoke-direct {p3, p1, p2, p0}, Lio/realm/RealmModelSetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;Ljava/lang/Class;)V

    return-object p3

    .line 33
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown class for iterator: "

    .line 34
    invoke-static {p2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 35
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract add(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->isRealmCollection(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/realm/RealmSet;

    invoke-virtual {p1}, Lio/realm/RealmSet;->getOsSet()Lio/realm/internal/OsSet;

    move-result-object p1

    .line 3
    sget-object v0, Lio/realm/internal/OsSet$ExternalCollectionOperation;->ADD_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {p0, p1, v0}, Lio/realm/SetValueOperator;->funnelCollection(Lio/realm/internal/OsSet;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lio/realm/SetValueOperator;->isUpperBoundCollectionSameType(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->addAllInternal(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Set contents and collection must be the same type when calling \'addAll\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract addAllInternal(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation
.end method

.method public final addChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "TE;>;",
            "Lio/realm/SetChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/SetValueOperator;->baseRealm:Lio/realm/BaseRealm;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lio/realm/CollectionUtils;->checkForAddRemoveListener(Lio/realm/BaseRealm;Ljava/lang/Object;Z)V

    .line 2
    iget-object v0, p0, Lio/realm/SetValueOperator;->setObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0, p0}, Lio/realm/internal/OsSet;->startListening(Lio/realm/internal/ObservableSet;)V

    .line 4
    :cond_0
    new-instance v0, Lio/realm/internal/ObservableSet$SetObserverPair;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/ObservableSet$SetObserverPair;-><init>(Lio/realm/RealmSet;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lio/realm/SetValueOperator;->setObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1, v0}, Lio/realm/internal/ObserverPairList;->add(Lio/realm/internal/ObserverPairList$ObserverPair;)V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/realm/SetValueOperator;->isObjectSameType(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->containsInternal(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Set contents and object must be the same type when calling \'contains\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->isRealmCollection(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/realm/RealmSet;

    invoke-virtual {p1}, Lio/realm/RealmSet;->getOsSet()Lio/realm/internal/OsSet;

    move-result-object p1

    .line 3
    sget-object v0, Lio/realm/internal/OsSet$ExternalCollectionOperation;->CONTAINS_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {p0, p1, v0}, Lio/realm/SetValueOperator;->funnelCollection(Lio/realm/internal/OsSet;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lio/realm/SetValueOperator;->isCollectionSameType(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->containsAllInternal(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Set contents and collection must be the same type when calling \'containsAll\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract containsAllInternal(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract containsInternal(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public final funnelCollection(Lio/realm/internal/OsSet;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0}, Lio/realm/internal/OsSet;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/realm/internal/OsSet;->getNativePtr()J

    move-result-wide v2

    const-string v4, "Unexpected value: "

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    cmp-long v9, v0, v2

    if-nez v9, :cond_4

    .line 2
    sget-object p1, Lio/realm/SetValueOperator$3;->$SwitchMap$io$realm$internal$OsSet$ExternalCollectionOperation:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v8, :cond_3

    const/4 v0, 0x0

    if-eq p1, v7, :cond_2

    if-eq p1, v6, :cond_1

    if-ne p1, v5, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    iget-object p1, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p1}, Lio/realm/internal/OsSet;->clear()V

    return v8

    :cond_2
    return v0

    :cond_3
    return v8

    .line 5
    :cond_4
    sget-object v0, Lio/realm/SetValueOperator$3;->$SwitchMap$io$realm$internal$OsSet$ExternalCollectionOperation:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v8, :cond_8

    if-eq v0, v7, :cond_7

    if-eq v0, v6, :cond_6

    if-ne v0, v5, :cond_5

    .line 6
    iget-object p2, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p2, p1}, Lio/realm/internal/OsSet;->intersect(Lio/realm/internal/OsSet;)Z

    move-result p1

    return p1

    .line 7
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_6
    iget-object p2, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p2, p1}, Lio/realm/internal/OsSet;->asymmetricDifference(Lio/realm/internal/OsSet;)Z

    move-result p1

    return p1

    .line 9
    :cond_7
    iget-object p2, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p2, p1}, Lio/realm/internal/OsSet;->union(Lio/realm/internal/OsSet;)Z

    move-result p1

    return p1

    .line 10
    :cond_8
    iget-object p2, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {p2, p1}, Lio/realm/internal/OsSet;->containsAll(Lio/realm/internal/OsSet;)Z

    move-result p1

    return p1
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/SetValueOperator;->valueClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getValueClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/SetValueOperator;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final isRealmCollection(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p1, Lio/realm/RealmSet;

    if-eqz v0, :cond_0

    check-cast p1, Lio/realm/RealmSet;

    invoke-virtual {p1}, Lio/realm/RealmSet;->isManaged()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/SetValueOperator;->valueClass:Ljava/lang/Class;

    iget-object v1, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    iget-object v2, p0, Lio/realm/SetValueOperator;->baseRealm:Lio/realm/BaseRealm;

    iget-object v3, p0, Lio/realm/SetValueOperator;->className:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lio/realm/SetValueOperator;->iteratorFactory(Ljava/lang/Class;Lio/realm/internal/OsSet;Lio/realm/BaseRealm;Ljava/lang/String;)Lio/realm/SetIterator;

    move-result-object v0

    return-object v0
.end method

.method public notifyChangeListeners(J)V
    .locals 2

    iget-object v0, p0, Lio/realm/SetValueOperator;->osSet:Lio/realm/internal/OsSet;

    iget-object v1, p0, Lio/realm/SetValueOperator;->setObserverPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, p1, p2, v1}, Lio/realm/internal/OsSet;->notifyChangeListeners(JLio/realm/internal/ObserverPairList;)V

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/realm/SetValueOperator;->isObjectSameType(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->removeInternal(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Set contents and object must be the same type when calling \'remove\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->isRealmCollection(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/realm/RealmSet;

    invoke-virtual {p1}, Lio/realm/RealmSet;->getOsSet()Lio/realm/internal/OsSet;

    move-result-object p1

    .line 3
    sget-object v0, Lio/realm/internal/OsSet$ExternalCollectionOperation;->REMOVE_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {p0, p1, v0}, Lio/realm/SetValueOperator;->funnelCollection(Lio/realm/internal/OsSet;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lio/realm/SetValueOperator;->isCollectionSameType(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->removeAllInternal(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Set contents and collection must be the same type when calling \'removeAll\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract removeAllInternal(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract removeInternal(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->isRealmCollection(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/realm/RealmSet;

    invoke-virtual {p1}, Lio/realm/RealmSet;->getOsSet()Lio/realm/internal/OsSet;

    move-result-object p1

    .line 3
    sget-object v0, Lio/realm/internal/OsSet$ExternalCollectionOperation;->RETAIN_ALL:Lio/realm/internal/OsSet$ExternalCollectionOperation;

    invoke-virtual {p0, p1, v0}, Lio/realm/SetValueOperator;->funnelCollection(Lio/realm/internal/OsSet;Lio/realm/internal/OsSet$ExternalCollectionOperation;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lio/realm/SetValueOperator;->isCollectionSameType(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lio/realm/SetValueOperator;->retainAllInternal(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Set contents and collection must be the same type when calling \'retainAll\'."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract retainAllInternal(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public where()Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature is available only when the element type is implementing RealmModel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
