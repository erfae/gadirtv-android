.class public Lio/realm/RealmDictionary;
.super Lio/realm/RealmMap;
.source "RealmDictionary.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/RealmMap<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/realm/RealmMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 4
    invoke-static {p3, p1, p2}, Lio/realm/RealmDictionary;->getStrategy(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/RealmMap$ManagedMapStrategy;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/realm/RealmMap;-><init>(Lio/realm/RealmMap$MapStrategy;)V

    return-void
.end method

.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-static {p3, p1, p2}, Lio/realm/RealmDictionary;->getStrategy(Ljava/lang/String;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/RealmMap$ManagedMapStrategy;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/realm/RealmMap;-><init>(Lio/realm/RealmMap$MapStrategy;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/realm/RealmMap;-><init>()V

    .line 3
    iget-object v0, p0, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private static getManager(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/DictionaryManager;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            ")",
            "Lio/realm/DictionaryManager<",
            "TV;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v8, Lio/realm/SelectorForMap;

    invoke-direct {v8, p1, p2, p0}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    .line 2
    const-class v1, Lio/realm/RealmAny;

    if-ne p0, v1, :cond_0

    .line 3
    new-instance p0, Lio/realm/RealmAnyValueOperator;

    invoke-direct {p0, p1, p2, v8}, Lio/realm/RealmAnyValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    const-class v1, Ljava/lang/Long;

    if-ne p0, v1, :cond_1

    .line 5
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Ljava/lang/Long;

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->LONG:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 6
    :cond_1
    const-class v1, Ljava/lang/Float;

    if-ne p0, v1, :cond_2

    .line 7
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Ljava/lang/Float;

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->FLOAT:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 8
    :cond_2
    const-class v1, Ljava/lang/Double;

    if-ne p0, v1, :cond_3

    .line 9
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Ljava/lang/Double;

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->DOUBLE:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    :cond_3
    if-ne p0, v0, :cond_4

    .line 10
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Ljava/lang/String;

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->STRING:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 11
    :cond_4
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_5

    .line 12
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Ljava/lang/Boolean;

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->BOOLEAN:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 13
    :cond_5
    const-class v0, Ljava/util/Date;

    if-ne p0, v0, :cond_6

    .line 14
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Ljava/util/Date;

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->DATE:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 15
    :cond_6
    const-class v0, Lorg/bson/types/Decimal128;

    if-ne p0, v0, :cond_7

    .line 16
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Lorg/bson/types/Decimal128;

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->DECIMAL128:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 17
    :cond_7
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_8

    .line 18
    new-instance p0, Lio/realm/IntegerValueOperator;

    invoke-direct {p0, p1, p2, v8}, Lio/realm/IntegerValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto :goto_0

    .line 19
    :cond_8
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_9

    .line 20
    new-instance p0, Lio/realm/ShortValueOperator;

    invoke-direct {p0, p1, p2, v8}, Lio/realm/ShortValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto :goto_0

    .line 21
    :cond_9
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_a

    .line 22
    new-instance p0, Lio/realm/ByteValueOperator;

    invoke-direct {p0, p1, p2, v8}, Lio/realm/ByteValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto :goto_0

    .line 23
    :cond_a
    const-class v0, [B

    if-ne p0, v0, :cond_b

    .line 24
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, [B

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->BINARY:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v7, Lio/realm/BinaryEquals;

    invoke-direct {v7}, Lio/realm/BinaryEquals;-><init>()V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v1 .. v7}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/EqualsHelper;)V

    goto :goto_0

    .line 25
    :cond_b
    const-class v0, Lorg/bson/types/ObjectId;

    if-ne p0, v0, :cond_c

    .line 26
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Lorg/bson/types/ObjectId;

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->OBJECT_ID:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto :goto_0

    .line 27
    :cond_c
    const-class v0, Ljava/util/UUID;

    if-ne p0, v0, :cond_d

    .line 28
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Ljava/util/UUID;

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->UUID:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    .line 29
    :goto_0
    new-instance p2, Lio/realm/DictionaryManager;

    invoke-direct {p2, p1, p0, v8}, Lio/realm/DictionaryManager;-><init>(Lio/realm/BaseRealm;Lio/realm/MapValueOperator;Lio/realm/TypeSelectorForMap;)V

    return-object p2

    .line 30
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only Maps of RealmAny or one of the types that can be boxed inside RealmAny can be used."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getManager(Ljava/lang/String;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/DictionaryManager;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            ")",
            "Lio/realm/DictionaryManager<",
            "TV;>;"
        }
    .end annotation

    move-object v0, p0

    move-object v7, p1

    move-object/from16 v3, p2

    .line 31
    const-class v1, [B

    const-class v2, Ljava/lang/Byte;

    const-class v4, Ljava/lang/Short;

    const-class v5, Ljava/lang/Integer;

    const-class v6, Ljava/lang/Boolean;

    const-class v8, Ljava/lang/Double;

    const-class v9, Ljava/lang/Float;

    const-class v10, Ljava/lang/Long;

    const-class v11, Lio/realm/RealmAny;

    const-class v12, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 32
    new-instance v0, Lio/realm/RealmAnyValueOperator;

    new-instance v1, Lio/realm/SelectorForMap;

    invoke-direct {v1, p1, v3, v11}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    invoke-direct {v0, p1, v3, v1}, Lio/realm/RealmAnyValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto/16 :goto_0

    .line 33
    :cond_0
    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 34
    new-instance v6, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Ljava/lang/Long;

    new-instance v4, Lio/realm/SelectorForMap;

    invoke-direct {v4, p1, v3, v10}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->LONG:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, v6

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 35
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 36
    new-instance v6, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Ljava/lang/Float;

    new-instance v4, Lio/realm/SelectorForMap;

    invoke-direct {v4, p1, v3, v9}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->FLOAT:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, v6

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 37
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 38
    new-instance v6, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Ljava/lang/Double;

    new-instance v4, Lio/realm/SelectorForMap;

    invoke-direct {v4, p1, v3, v8}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->DOUBLE:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, v6

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 39
    :cond_3
    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 40
    new-instance v6, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Ljava/lang/String;

    new-instance v4, Lio/realm/SelectorForMap;

    invoke-direct {v4, p1, v3, v12}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->STRING:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, v6

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 41
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 42
    new-instance v8, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Ljava/lang/Boolean;

    new-instance v4, Lio/realm/SelectorForMap;

    invoke-direct {v4, p1, v3, v6}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->BOOLEAN:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, v8

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 43
    :cond_5
    const-class v6, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 44
    new-instance v6, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Ljava/util/Date;

    new-instance v4, Lio/realm/SelectorForMap;

    const-class v0, Ljava/util/Date;

    invoke-direct {v4, p1, v3, v0}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->DATE:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, v6

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 45
    :cond_6
    const-class v6, Lorg/bson/types/Decimal128;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 46
    new-instance v6, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Lorg/bson/types/Decimal128;

    new-instance v4, Lio/realm/SelectorForMap;

    const-class v0, Lorg/bson/types/Decimal128;

    invoke-direct {v4, p1, v3, v0}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->DECIMAL128:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, v6

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 47
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 48
    new-instance v0, Lio/realm/IntegerValueOperator;

    new-instance v1, Lio/realm/SelectorForMap;

    invoke-direct {v1, p1, v3, v5}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    invoke-direct {v0, p1, v3, v1}, Lio/realm/IntegerValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto/16 :goto_0

    .line 49
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 50
    new-instance v0, Lio/realm/ShortValueOperator;

    new-instance v1, Lio/realm/SelectorForMap;

    invoke-direct {v1, p1, v3, v4}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    invoke-direct {v0, p1, v3, v1}, Lio/realm/ShortValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto/16 :goto_0

    .line 51
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 52
    new-instance v0, Lio/realm/ByteValueOperator;

    new-instance v1, Lio/realm/SelectorForMap;

    invoke-direct {v1, p1, v3, v2}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    invoke-direct {v0, p1, v3, v1}, Lio/realm/ByteValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto/16 :goto_0

    .line 53
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 54
    new-instance v8, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, [B

    new-instance v4, Lio/realm/SelectorForMap;

    invoke-direct {v4, p1, v3, v1}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->BINARY:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v6, Lio/realm/BinaryEquals;

    invoke-direct {v6}, Lio/realm/BinaryEquals;-><init>()V

    move-object v0, v8

    move-object v1, v2

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/EqualsHelper;)V

    goto :goto_0

    .line 55
    :cond_b
    const-class v1, Lorg/bson/types/ObjectId;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 56
    new-instance v6, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Lorg/bson/types/ObjectId;

    new-instance v4, Lio/realm/SelectorForMap;

    const-class v0, Lorg/bson/types/ObjectId;

    invoke-direct {v4, p1, v3, v0}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->OBJECT_ID:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, v6

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto :goto_0

    .line 57
    :cond_c
    const-class v1, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 58
    new-instance v6, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Ljava/util/UUID;

    new-instance v4, Lio/realm/SelectorForMap;

    const-class v0, Ljava/util/UUID;

    invoke-direct {v4, p1, v3, v0}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->UUID:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, v6

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto :goto_0

    .line 59
    :cond_d
    new-instance v1, Lio/realm/RealmModelValueOperator;

    new-instance v2, Lio/realm/DynamicSelectorForMap;

    invoke-direct {v2, p1, v3, p0}, Lio/realm/DynamicSelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/String;)V

    invoke-direct {v1, p1, v3, v2}, Lio/realm/RealmModelValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    move-object v0, v1

    .line 60
    :goto_0
    new-instance v1, Lio/realm/DictionaryManager;

    iget-object v2, v0, Lio/realm/MapValueOperator;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    invoke-direct {v1, p1, v0, v2}, Lio/realm/DictionaryManager;-><init>(Lio/realm/BaseRealm;Lio/realm/MapValueOperator;Lio/realm/TypeSelectorForMap;)V

    return-object v1
.end method

.method private static getRealmSelector(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/LinkSelectorForMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            ")",
            "Lio/realm/LinkSelectorForMap<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lio/realm/LinkSelectorForMap;

    invoke-direct {v0, p1, p2, p0}, Lio/realm/LinkSelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static getStrategy(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/RealmMap$ManagedMapStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            ")",
            "Lio/realm/RealmMap$ManagedMapStrategy<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/realm/CollectionUtils;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Lio/realm/RealmDictionary;->getRealmSelector(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/LinkSelectorForMap;

    move-result-object p0

    .line 3
    new-instance v0, Lio/realm/DictionaryManager;

    new-instance v1, Lio/realm/RealmModelValueOperator;

    invoke-direct {v1, p1, p2, p0}, Lio/realm/RealmModelValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    invoke-direct {v0, p1, v1, p0}, Lio/realm/DictionaryManager;-><init>(Lio/realm/BaseRealm;Lio/realm/MapValueOperator;Lio/realm/TypeSelectorForMap;)V

    .line 4
    new-instance p0, Lio/realm/RealmMap$ManagedMapStrategy;

    invoke-direct {p0, v0}, Lio/realm/RealmMap$ManagedMapStrategy;-><init>(Lio/realm/ManagedMapManager;)V

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0, p1, p2}, Lio/realm/RealmDictionary;->getManager(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/DictionaryManager;

    move-result-object p0

    .line 6
    new-instance p1, Lio/realm/RealmMap$ManagedMapStrategy;

    invoke-direct {p1, p0}, Lio/realm/RealmMap$ManagedMapStrategy;-><init>(Lio/realm/ManagedMapManager;)V

    return-object p1
.end method

.method private static getStrategy(Ljava/lang/String;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/RealmMap$ManagedMapStrategy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            ")",
            "Lio/realm/RealmMap$ManagedMapStrategy<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 7
    invoke-static {p0, p1, p2}, Lio/realm/RealmDictionary;->getManager(Ljava/lang/String;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/DictionaryManager;

    move-result-object p0

    .line 8
    new-instance p1, Lio/realm/RealmMap$ManagedMapStrategy;

    invoke-direct {p1, p0}, Lio/realm/RealmMap$ManagedMapStrategy;-><init>(Lio/realm/ManagedMapManager;)V

    return-object p1
.end method

.method private toMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
