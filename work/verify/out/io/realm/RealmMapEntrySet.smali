.class Lio/realm/RealmMapEntrySet;
.super Ljava/lang/Object;
.source "RealmMapEntrySet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmMapEntrySet$RealmAnyValueIterator;,
        Lio/realm/RealmMapEntrySet$RealmModelValueIterator;,
        Lio/realm/RealmMapEntrySet$UUIDValueIterator;,
        Lio/realm/RealmMapEntrySet$ObjectIdValueIterator;,
        Lio/realm/RealmMapEntrySet$BinaryValueIterator;,
        Lio/realm/RealmMapEntrySet$Decimal128ValueIterator;,
        Lio/realm/RealmMapEntrySet$DateValueIterator;,
        Lio/realm/RealmMapEntrySet$BooleanValueIterator;,
        Lio/realm/RealmMapEntrySet$StringValueIterator;,
        Lio/realm/RealmMapEntrySet$DoubleValueIterator;,
        Lio/realm/RealmMapEntrySet$FloatValueIterator;,
        Lio/realm/RealmMapEntrySet$IntegerValueIterator;,
        Lio/realm/RealmMapEntrySet$ShortValueIterator;,
        Lio/realm/RealmMapEntrySet$ByteValueIterator;,
        Lio/realm/RealmMapEntrySet$LongValueIterator;,
        Lio/realm/RealmMapEntrySet$EntrySetIterator;,
        Lio/realm/RealmMapEntrySet$IteratorType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final baseRealm:Lio/realm/BaseRealm;

.field private final equalsHelper:Lio/realm/EqualsHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/EqualsHelper<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final iteratorType:Lio/realm/RealmMapEntrySet$IteratorType;

.field private final osMap:Lio/realm/internal/OsMap;

.field private final typeSelectorForMap:Lio/realm/TypeSelectorForMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/EqualsHelper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "Lio/realm/RealmMapEntrySet$IteratorType;",
            "Lio/realm/EqualsHelper<",
            "TK;TV;>;",
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lio/realm/RealmMapEntrySet;->baseRealm:Lio/realm/BaseRealm;

    .line 9
    iput-object p2, p0, Lio/realm/RealmMapEntrySet;->osMap:Lio/realm/internal/OsMap;

    .line 10
    iput-object p3, p0, Lio/realm/RealmMapEntrySet;->iteratorType:Lio/realm/RealmMapEntrySet$IteratorType;

    .line 11
    iput-object p4, p0, Lio/realm/RealmMapEntrySet;->equalsHelper:Lio/realm/EqualsHelper;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lio/realm/RealmMapEntrySet;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    return-void
.end method

.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/TypeSelectorForMap;)V
    .registers 5
    .param p4    # Lio/realm/TypeSelectorForMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "Lio/realm/RealmMapEntrySet$IteratorType;",
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/RealmMapEntrySet;->baseRealm:Lio/realm/BaseRealm;

    .line 3
    iput-object p2, p0, Lio/realm/RealmMapEntrySet;->osMap:Lio/realm/internal/OsMap;

    .line 4
    iput-object p3, p0, Lio/realm/RealmMapEntrySet;->iteratorType:Lio/realm/RealmMapEntrySet$IteratorType;

    .line 5
    new-instance p1, Lio/realm/GenericEquals;

    invoke-direct {p1}, Lio/realm/GenericEquals;-><init>()V

    iput-object p1, p0, Lio/realm/RealmMapEntrySet;->equalsHelper:Lio/realm/EqualsHelper;

    .line 6
    iput-object p4, p0, Lio/realm/RealmMapEntrySet;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    return-void
.end method

.method private static iteratorFactory(Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/internal/OsMap;Lio/realm/BaseRealm;Lio/realm/TypeSelectorForMap;)Lio/realm/RealmMapEntrySet$EntrySetIterator;
    .registers 5
    .param p3    # Lio/realm/TypeSelectorForMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/RealmMapEntrySet$IteratorType;",
            "Lio/realm/internal/OsMap;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/TypeSelectorForMap;",
            ")",
            "Lio/realm/RealmMapEntrySet$EntrySetIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/RealmMapEntrySet$1;->$SwitchMap$io$realm$RealmMapEntrySet$IteratorType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_78

    .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid iterator type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_13
    if-eqz p3, :cond_1b

    .line 3
    new-instance p0, Lio/realm/RealmMapEntrySet$RealmModelValueIterator;

    invoke-direct {p0, p1, p2, p3}, Lio/realm/RealmMapEntrySet$RealmModelValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;Lio/realm/TypeSelectorForMap;)V

    return-object p0

    .line 4
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing class container when creating RealmModelValueIterator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :pswitch_23
    new-instance p0, Lio/realm/RealmMapEntrySet$RealmAnyValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$RealmAnyValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 6
    :pswitch_29
    new-instance p0, Lio/realm/RealmMapEntrySet$UUIDValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$UUIDValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 7
    :pswitch_2f
    new-instance p0, Lio/realm/RealmMapEntrySet$ObjectIdValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$ObjectIdValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 8
    :pswitch_35
    new-instance p0, Lio/realm/RealmMapEntrySet$BinaryValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$BinaryValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 9
    :pswitch_3b
    new-instance p0, Lio/realm/RealmMapEntrySet$Decimal128ValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$Decimal128ValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 10
    :pswitch_41
    new-instance p0, Lio/realm/RealmMapEntrySet$DateValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$DateValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 11
    :pswitch_47
    new-instance p0, Lio/realm/RealmMapEntrySet$BooleanValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$BooleanValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 12
    :pswitch_4d
    new-instance p0, Lio/realm/RealmMapEntrySet$StringValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$StringValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 13
    :pswitch_53
    new-instance p0, Lio/realm/RealmMapEntrySet$DoubleValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$DoubleValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 14
    :pswitch_59
    new-instance p0, Lio/realm/RealmMapEntrySet$FloatValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$FloatValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 15
    :pswitch_5f
    new-instance p0, Lio/realm/RealmMapEntrySet$IntegerValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$IntegerValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 16
    :pswitch_65
    new-instance p0, Lio/realm/RealmMapEntrySet$ShortValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$ShortValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 17
    :pswitch_6b
    new-instance p0, Lio/realm/RealmMapEntrySet$ByteValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$ByteValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 18
    :pswitch_71
    new-instance p0, Lio/realm/RealmMapEntrySet$LongValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$LongValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_71
        :pswitch_6b
        :pswitch_65
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_47
        :pswitch_41
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lio/realm/RealmMapEntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This set is immutable and cannot be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This set is immutable and cannot be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This set is immutable and cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmMapEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v3, 0x1

    if-nez v1, :cond_17

    if-nez p1, :cond_17

    return v3

    .line 2
    :cond_17
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-eqz v4, :cond_42

    if-eqz v1, :cond_4

    .line 3
    iget-object v4, p0, Lio/realm/RealmMapEntrySet;->equalsHelper:Lio/realm/EqualsHelper;

    move-object v5, p1

    check-cast v5, Ljava/util/Map$Entry;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 6
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lio/realm/EqualsHelper;->compareInternal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :cond_3f
    if-eqz v2, :cond_4

    return v3

    :cond_42
    return v2
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 5
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

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmMapEntrySet;->isEmpty()Z

    move-result p1

    return p1

    .line 3
    :cond_b
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 5
    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-virtual {p0, v0}, Lio/realm/RealmMapEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_26
    return v2

    :cond_27
    const/4 p1, 0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 6

    iget-object v0, p0, Lio/realm/RealmMapEntrySet;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmMapEntrySet;->iteratorType:Lio/realm/RealmMapEntrySet$IteratorType;

    iget-object v1, p0, Lio/realm/RealmMapEntrySet;->osMap:Lio/realm/internal/OsMap;

    iget-object v2, p0, Lio/realm/RealmMapEntrySet;->baseRealm:Lio/realm/BaseRealm;

    iget-object v3, p0, Lio/realm/RealmMapEntrySet;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    invoke-static {v0, v1, v2, v3}, Lio/realm/RealmMapEntrySet;->iteratorFactory(Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/internal/OsMap;Lio/realm/BaseRealm;Lio/realm/TypeSelectorForMap;)Lio/realm/RealmMapEntrySet$EntrySetIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This set is immutable and cannot be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This set is immutable and cannot be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This set is immutable and cannot be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .registers 6

    iget-object v0, p0, Lio/realm/RealmMapEntrySet;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_f

    long-to-int v1, v0

    goto :goto_12

    :cond_f
    const v1, 0x7fffffff

    :goto_12
    return v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/realm/RealmMapEntrySet;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmMapEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1f
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lio/realm/RealmMapEntrySet;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v0

    .line 5
    array-length v2, p1

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1d

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_13

    goto :goto_1d

    .line 6
    :cond_13
    const-class v2, Ljava/util/Map$Entry;

    long-to-int v3, v0

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    goto :goto_1e

    :cond_1d
    :goto_1d
    move-object v2, p1

    :goto_1e
    const/4 v3, 0x0

    .line 7
    invoke-virtual {p0}, Lio/realm/RealmMapEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 8
    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 9
    :cond_34
    array-length p1, p1

    int-to-long v4, p1

    cmp-long p1, v4, v0

    if-lez p1, :cond_3d

    const/4 p1, 0x0

    .line 10
    aput-object p1, v2, v3

    :cond_3d
    return-object v2
.end method
