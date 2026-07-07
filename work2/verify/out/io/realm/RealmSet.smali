.class public Lio/realm/RealmSet;
.super Ljava/lang/Object;
.source "RealmSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Lio/realm/internal/ManageableObject;
.implements Lio/realm/RealmCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmSet$UnmanagedSetStrategy;,
        Lio/realm/RealmSet$ManagedSetStrategy;,
        Lio/realm/RealmSet$SetStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TE;>;",
        "Lio/realm/internal/ManageableObject;",
        "Lio/realm/RealmCollection<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final setStrategy:Lio/realm/RealmSet$SetStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmSet$SetStrategy<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/realm/RealmSet$UnmanagedSetStrategy;

    invoke-direct {v0}, Lio/realm/RealmSet$UnmanagedSetStrategy;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    return-void
.end method

.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsSet;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1, p2, p3}, Lio/realm/RealmSet;->getStrategy(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)Lio/realm/RealmSet$ManagedSetStrategy;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    return-void
.end method

.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/String;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p1, p2, p3}, Lio/realm/RealmSet;->getStrategy(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/String;)Lio/realm/RealmSet$ManagedSetStrategy;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lio/realm/RealmSet$UnmanagedSetStrategy;

    invoke-direct {v0, p1}, Lio/realm/RealmSet$UnmanagedSetStrategy;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    return-void
.end method

.method private static getStrategy(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)Lio/realm/RealmSet$ManagedSetStrategy;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsSet;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/realm/RealmSet$ManagedSetStrategy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lio/realm/RealmAny;

    const-class v1, [B

    const-class v2, Ljava/lang/Double;

    const-class v3, Ljava/lang/Float;

    const-class v4, Ljava/lang/Byte;

    const-class v5, Ljava/lang/Short;

    const-class v6, Ljava/lang/Long;

    const-class v7, Ljava/lang/Integer;

    const-class v8, Ljava/lang/String;

    const-class v9, Ljava/lang/Boolean;

    invoke-static {p2}, Lio/realm/CollectionUtils;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 2
    new-instance v0, Lio/realm/RealmSet$ManagedSetStrategy;

    new-instance v1, Lio/realm/RealmModelSetOperator;

    invoke-direct {v1, p0, p1, p2}, Lio/realm/RealmModelSetOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    invoke-direct {v0, v1, p2}, Lio/realm/RealmSet$ManagedSetStrategy;-><init>(Lio/realm/SetValueOperator;Ljava/lang/Class;)V

    return-object v0

    :cond_25
    if-ne p2, v9, :cond_2e

    .line 3
    new-instance v0, Lio/realm/BooleanOperator;

    invoke-direct {v0, p0, p1}, Lio/realm/BooleanOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto/16 :goto_b5

    :cond_2e
    if-ne p2, v8, :cond_37

    .line 4
    new-instance v0, Lio/realm/StringOperator;

    invoke-direct {v0, p0, p1}, Lio/realm/StringOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto/16 :goto_b5

    :cond_37
    if-ne p2, v7, :cond_40

    .line 5
    new-instance v0, Lio/realm/IntegerOperator;

    invoke-direct {v0, p0, p1}, Lio/realm/IntegerOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto/16 :goto_b5

    :cond_40
    if-ne p2, v6, :cond_49

    .line 6
    new-instance v0, Lio/realm/LongOperator;

    invoke-direct {v0, p0, p1}, Lio/realm/LongOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto/16 :goto_b5

    :cond_49
    if-ne p2, v5, :cond_52

    .line 7
    new-instance v0, Lio/realm/ShortOperator;

    invoke-direct {v0, p0, p1}, Lio/realm/ShortOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto/16 :goto_b5

    :cond_52
    if-ne p2, v4, :cond_5a

    .line 8
    new-instance v0, Lio/realm/ByteOperator;

    invoke-direct {v0, p0, p1}, Lio/realm/ByteOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto :goto_b5

    :cond_5a
    if-ne p2, v3, :cond_62

    .line 9
    new-instance v0, Lio/realm/FloatOperator;

    invoke-direct {v0, p0, p1}, Lio/realm/FloatOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto :goto_b5

    :cond_62
    if-ne p2, v2, :cond_6a

    .line 10
    new-instance v0, Lio/realm/DoubleOperator;

    invoke-direct {v0, p0, p1}, Lio/realm/DoubleOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto :goto_b5

    :cond_6a
    if-ne p2, v1, :cond_72

    .line 11
    new-instance v0, Lio/realm/BinaryOperator;

    invoke-direct {v0, p0, p1}, Lio/realm/BinaryOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto :goto_b5

    .line 12
    :cond_72
    const-class v1, Ljava/util/Date;

    if-ne p2, v1, :cond_7e

    .line 13
    new-instance v0, Lio/realm/DateOperator;

    const-class v1, Ljava/util/Date;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/DateOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_b5

    .line 14
    :cond_7e
    const-class v1, Lorg/bson/types/Decimal128;

    if-ne p2, v1, :cond_8a

    .line 15
    new-instance v0, Lio/realm/Decimal128Operator;

    const-class v1, Lorg/bson/types/Decimal128;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/Decimal128Operator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_b5

    .line 16
    :cond_8a
    const-class v1, Lorg/bson/types/ObjectId;

    if-ne p2, v1, :cond_96

    .line 17
    new-instance v0, Lio/realm/ObjectIdOperator;

    const-class v1, Lorg/bson/types/ObjectId;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/ObjectIdOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_b5

    .line 18
    :cond_96
    const-class v1, Ljava/util/UUID;

    if-ne p2, v1, :cond_a2

    .line 19
    new-instance v0, Lio/realm/UUIDOperator;

    const-class v1, Ljava/util/UUID;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/UUIDOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_b5

    :cond_a2
    if-ne p2, v0, :cond_aa

    .line 20
    new-instance v0, Lio/realm/RealmAnySetOperator;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmAnySetOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto :goto_b5

    .line 21
    :cond_aa
    const-class v0, Ljava/lang/Number;

    if-ne p2, v0, :cond_bb

    .line 22
    new-instance v0, Lio/realm/NumberOperator;

    const-class v1, Ljava/lang/Number;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/NumberOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    .line 23
    :goto_b5
    new-instance p0, Lio/realm/RealmSet$ManagedSetStrategy;

    invoke-direct {p0, v0, p2}, Lio/realm/RealmSet$ManagedSetStrategy;-><init>(Lio/realm/SetValueOperator;Ljava/lang/Class;)V

    return-object p0

    .line 24
    :cond_bb
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getStrategy: missing class \'"

    .line 25
    invoke-static {p1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 26
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getStrategy(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/String;)Lio/realm/RealmSet$ManagedSetStrategy;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsSet;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmSet$ManagedSetStrategy<",
            "TT;>;"
        }
    .end annotation

    .line 30
    const-class v0, Lio/realm/RealmAny;

    const-class v1, [B

    const-class v2, Ljava/lang/Double;

    const-class v3, Ljava/lang/Float;

    const-class v4, Ljava/lang/Byte;

    const-class v5, Ljava/lang/Short;

    const-class v6, Ljava/lang/Long;

    const-class v7, Ljava/lang/Integer;

    const-class v8, Ljava/lang/String;

    const-class v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 31
    new-instance p2, Lio/realm/BooleanOperator;

    invoke-direct {p2, p0, p1}, Lio/realm/BooleanOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto/16 :goto_112

    .line 32
    :cond_25
    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 33
    new-instance p2, Lio/realm/StringOperator;

    invoke-direct {p2, p0, p1}, Lio/realm/StringOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto/16 :goto_112

    .line 34
    :cond_36
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 35
    new-instance p2, Lio/realm/IntegerOperator;

    invoke-direct {p2, p0, p1}, Lio/realm/IntegerOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto/16 :goto_112

    .line 36
    :cond_47
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 37
    new-instance p2, Lio/realm/LongOperator;

    invoke-direct {p2, p0, p1}, Lio/realm/LongOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto/16 :goto_112

    .line 38
    :cond_58
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 39
    new-instance p2, Lio/realm/ShortOperator;

    invoke-direct {p2, p0, p1}, Lio/realm/ShortOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto/16 :goto_112

    .line 40
    :cond_69
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 41
    new-instance p2, Lio/realm/ByteOperator;

    invoke-direct {p2, p0, p1}, Lio/realm/ByteOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto/16 :goto_112

    .line 42
    :cond_7a
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 43
    new-instance p2, Lio/realm/FloatOperator;

    invoke-direct {p2, p0, p1}, Lio/realm/FloatOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto/16 :goto_112

    .line 44
    :cond_8b
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 45
    new-instance p2, Lio/realm/DoubleOperator;

    invoke-direct {p2, p0, p1}, Lio/realm/DoubleOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto/16 :goto_112

    .line 46
    :cond_9c
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 47
    new-instance p2, Lio/realm/BinaryOperator;

    invoke-direct {p2, p0, p1}, Lio/realm/BinaryOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto :goto_112

    .line 48
    :cond_ac
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 49
    new-instance p2, Lio/realm/DateOperator;

    const-class v0, Ljava/util/Date;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/DateOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_112

    .line 50
    :cond_c0
    const-class v1, Lorg/bson/types/Decimal128;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 51
    new-instance p2, Lio/realm/Decimal128Operator;

    const-class v0, Lorg/bson/types/Decimal128;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/Decimal128Operator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_112

    .line 52
    :cond_d4
    const-class v1, Lorg/bson/types/ObjectId;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 53
    new-instance p2, Lio/realm/ObjectIdOperator;

    const-class v0, Lorg/bson/types/ObjectId;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/ObjectIdOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_112

    .line 54
    :cond_e8
    const-class v1, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 55
    new-instance p2, Lio/realm/UUIDOperator;

    const-class v0, Ljava/util/UUID;

    invoke-direct {p2, p0, p1, v0}, Lio/realm/UUIDOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    goto :goto_112

    .line 56
    :cond_fc
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 57
    new-instance p2, Lio/realm/RealmAnySetOperator;

    invoke-direct {p2, p0, p1}, Lio/realm/RealmAnySetOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;)V

    goto :goto_112

    .line 58
    :cond_10c
    new-instance v0, Lio/realm/DynamicSetOperator;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/DynamicSetOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/String;)V

    move-object p2, v0

    .line 59
    :goto_112
    new-instance p0, Lio/realm/RealmSet$ManagedSetStrategy;

    invoke-virtual {p2}, Lio/realm/SetValueOperator;->getValueClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lio/realm/RealmSet$ManagedSetStrategy;-><init>(Lio/realm/SetValueOperator;Ljava/lang/Class;)V

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addChangeListener(Lio/realm/RealmChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmSet<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p0, p1}, Lio/realm/RealmSet$SetStrategy;->addChangeListener(Lio/realm/RealmSet;Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method public addChangeListener(Lio/realm/SetChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/SetChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p0, p1}, Lio/realm/RealmSet$SetStrategy;->addChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V

    return-void
.end method

.method public average(Ljava/lang/String;)D
    .registers 4

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0, p1}, Lio/realm/RealmCollection;->average(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public deleteAllFromRealm()Z
    .registers 2

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0}, Lio/realm/RealmCollection;->deleteAllFromRealm()Z

    move-result v0

    return v0
.end method

.method public freeze()Lio/realm/RealmSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->freeze()Lio/realm/RealmSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmSet;->freeze()Lio/realm/RealmSet;

    move-result-object v0

    return-object v0
.end method

.method public final getOsSet()Lio/realm/internal/OsSet;
    .registers 2

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->getOsSet()Lio/realm/internal/OsSet;

    move-result-object v0

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValueClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->getValueClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .registers 2

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0}, Lio/realm/internal/ManageableObject;->isFrozen()Z

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isManaged()Z
    .registers 2

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0}, Lio/realm/RealmCollection;->isManaged()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0}, Lio/realm/RealmCollection;->isValid()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public load()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public max(Ljava/lang/String;)Ljava/lang/Number;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0, p1}, Lio/realm/RealmCollection;->max(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public maxDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0, p1}, Lio/realm/RealmCollection;->maxDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/String;)Ljava/lang/Number;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0, p1}, Lio/realm/RealmCollection;->min(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public minDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0, p1}, Lio/realm/RealmCollection;->minDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public removeAllChangeListeners()V
    .registers 2

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0}, Lio/realm/RealmSet$SetStrategy;->removeAllChangeListeners()V

    return-void
.end method

.method public removeChangeListener(Lio/realm/RealmChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmSet<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p0, p1}, Lio/realm/RealmSet$SetStrategy;->removeChangeListener(Lio/realm/RealmSet;Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method public removeChangeListener(Lio/realm/SetChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/SetChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-virtual {v0, p0, p1}, Lio/realm/RealmSet$SetStrategy;->removeChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V

    return-void
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

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public sum(Ljava/lang/String;)Ljava/lang/Number;
    .registers 3

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0, p1}, Lio/realm/RealmCollection;->sum(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public where()Lio/realm/RealmQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmSet;->setStrategy:Lio/realm/RealmSet$SetStrategy;

    invoke-interface {v0}, Lio/realm/RealmCollection;->where()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method
