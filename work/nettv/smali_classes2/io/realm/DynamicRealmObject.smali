.class public Lio/realm/DynamicRealmObject;
.super Lio/realm/RealmObject;
.source "DynamicRealmObject.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/DynamicRealmObject$CollectionType;
    }
.end annotation


# instance fields
.field private final proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    .line 16
    new-instance v0, Lio/realm/ProxyState;

    invoke-direct {v0, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    .line 17
    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 18
    invoke-virtual {v0, p2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 19
    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public constructor <init>(Lio/realm/RealmModel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    .line 2
    new-instance v0, Lio/realm/ProxyState;

    invoke-direct {v0, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    if-eqz p1, :cond_3

    .line 3
    instance-of v1, p1, Lio/realm/DynamicRealmObject;

    if-nez v1, :cond_2

    .line 4
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    .line 7
    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    .line 8
    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 9
    check-cast v1, Lio/realm/internal/UncheckedRow;

    invoke-virtual {v1}, Lio/realm/internal/UncheckedRow;->convertToChecked()Lio/realm/internal/CheckedRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 10
    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A valid object managed by Realm must be provided. This object was deleted."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "An object managed by Realm must be provided. This is an unmanaged object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The object is already a DynamicRealmObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-null object must be provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lio/realm/internal/Row;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object p2

    if-eq p2, p4, :cond_4

    .line 2
    sget-object p3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v0, "n"

    const-string v1, ""

    if-eq p4, p3, :cond_1

    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-ne p4, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v0

    :goto_1
    if-eq p2, p3, :cond_3

    .line 3
    sget-object p3, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-ne p2, p3, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 4
    :cond_3
    :goto_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v2, v3, p1

    const/4 p1, 0x2

    aput-object p4, v3, p1

    const/4 p1, 0x3

    aput-object v0, v3, p1

    const/4 p1, 0x4

    aput-object p2, v3, p1

    const-string p1, "\'%s\' is not a%s \'%s\', but a%s \'%s\'."

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_4
    return-void
.end method

.method private checkIsPrimaryKey(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/DynamicRealmObject;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/realm/RealmObjectSchema;->hasPrimaryKey()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/realm/RealmObjectSchema;->getPrimaryKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Primary key field \'%s\' cannot be changed after object was created."

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private getOperator(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Lio/realm/RealmFieldType;Ljava/lang/Class;)Lio/realm/ManagedListOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsList;",
            "Lio/realm/RealmFieldType;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lio/realm/ManagedListOperator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_0

    .line 2
    new-instance p3, Lio/realm/StringListOperator;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/StringListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 3
    :cond_0
    sget-object v0, Lio/realm/RealmFieldType;->INTEGER_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_1

    .line 4
    new-instance p3, Lio/realm/LongListOperator;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/LongListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 5
    :cond_1
    sget-object v0, Lio/realm/RealmFieldType;->BOOLEAN_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_2

    .line 6
    new-instance p3, Lio/realm/BooleanListOperator;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/BooleanListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 7
    :cond_2
    sget-object v0, Lio/realm/RealmFieldType;->BINARY_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_3

    .line 8
    new-instance p3, Lio/realm/BinaryListOperator;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/BinaryListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 9
    :cond_3
    sget-object v0, Lio/realm/RealmFieldType;->DOUBLE_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_4

    .line 10
    new-instance p3, Lio/realm/DoubleListOperator;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/DoubleListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 11
    :cond_4
    sget-object v0, Lio/realm/RealmFieldType;->FLOAT_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_5

    .line 12
    new-instance p3, Lio/realm/FloatListOperator;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/FloatListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 13
    :cond_5
    sget-object v0, Lio/realm/RealmFieldType;->DATE_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_6

    .line 14
    new-instance p3, Lio/realm/DateListOperator;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/DateListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 15
    :cond_6
    sget-object v0, Lio/realm/RealmFieldType;->DECIMAL128_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_7

    .line 16
    new-instance p3, Lio/realm/Decimal128ListOperator;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/Decimal128ListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 17
    :cond_7
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT_ID_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_8

    .line 18
    new-instance p3, Lio/realm/ObjectIdListOperator;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/ObjectIdListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 19
    :cond_8
    sget-object v0, Lio/realm/RealmFieldType;->UUID_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_9

    .line 20
    new-instance p3, Lio/realm/UUIDListOperator;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/UUIDListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 21
    :cond_9
    sget-object v0, Lio/realm/RealmFieldType;->MIXED_LIST:Lio/realm/RealmFieldType;

    if-ne p3, v0, :cond_a

    .line 22
    new-instance p3, Lio/realm/RealmAnyListOperator;

    invoke-direct {p3, p1, p2, p4}, Lio/realm/RealmAnyListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object p3

    .line 23
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected list type: "

    .line 24
    invoke-static {p2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 25
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getRealmAny(J)Lio/realm/RealmAny;
    .locals 1

    .line 5
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/realm/internal/Row;->getNativeRealmAny(J)Lio/realm/internal/core/NativeRealmAny;

    move-result-object p1

    .line 6
    new-instance p2, Lio/realm/RealmAny;

    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-static {v0, p1}, Lio/realm/RealmAnyOperator;->fromNativeRealmAny(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/RealmAnyOperator;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object p2
.end method

.method private primitiveTypeToCoreType(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)I"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-class v0, Ljava/lang/Long;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-class v0, Ljava/lang/Short;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-class v0, Ljava/lang/Byte;

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 7
    :cond_2
    const-class v0, [B

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    return p1

    .line 8
    :cond_3
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x8

    return p1

    .line 9
    :cond_4
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0x9

    return p1

    .line 10
    :cond_5
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0xa

    return p1

    .line 11
    :cond_6
    const-class v0, Lorg/bson/types/Decimal128;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p1, 0xb

    return p1

    .line 12
    :cond_7
    const-class v0, Lorg/bson/types/ObjectId;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0xf

    return p1

    .line 13
    :cond_8
    const-class v0, Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0x11

    return p1

    .line 14
    :cond_9
    const-class v0, Lio/realm/RealmAny;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x6

    return p1

    .line 15
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported element type. Only primitive types supported. Yours was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private primitiveTypeToRealmFieldType(Lio/realm/DynamicRealmObject$CollectionType;Ljava/lang/Class;)Lio/realm/RealmFieldType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/DynamicRealmObject$CollectionType;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lio/realm/RealmFieldType;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lio/realm/DynamicRealmObject;->primitiveTypeToCoreType(Ljava/lang/Class;)I

    move-result p2

    .line 2
    sget-object v0, Lio/realm/DynamicRealmObject$1;->$SwitchMap$io$realm$DynamicRealmObject$CollectionType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    add-int/lit16 p2, p2, 0x80

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    add-int/lit16 p2, p2, 0x200

    goto :goto_0

    :cond_2
    add-int/lit16 p2, p2, 0x100

    .line 4
    :goto_0
    invoke-static {p2}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object p1

    return-object p1
.end method

.method private setModelDictionary(Ljava/lang/String;Lio/realm/RealmDictionary;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmDictionary<",
            "Lio/realm/DynamicRealmObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->getModelMap(J)Lio/realm/internal/OsMap;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/realm/internal/OsMap;->getTargetTable()Lio/realm/internal/Table;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p2}, Lio/realm/RealmMap;->isManaged()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v2, p2, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v2}, Lio/realm/RealmMap$MapStrategy;->getValueClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v2}, Lio/realm/RealmMap$MapStrategy;->getValueClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    .line 8
    iget-object v6, p2, Lio/realm/RealmMap;->mapStrategy:Lio/realm/RealmMap$MapStrategy;

    invoke-virtual {v6}, Lio/realm/RealmMap$MapStrategy;->getValueClass()Ljava/lang/Class;

    move-result-object v6

    .line 9
    invoke-virtual {v2, v6}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 10
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v2, 0x1

    .line 11
    :goto_1
    new-instance v6, Lio/realm/RealmDictionary;

    invoke-direct {v6}, Lio/realm/RealmDictionary;-><init>()V

    .line 12
    invoke-virtual {p2}, Lio/realm/RealmMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/realm/internal/RealmObjectProxy;

    .line 14
    invoke-interface {v8}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v9

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v9

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v10

    if-ne v9, v10, :cond_4

    if-nez v2, :cond_3

    .line 15
    invoke-interface {v8}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v9

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v9

    invoke-virtual {v0, v9}, Lio/realm/internal/Table;->hasSameSchema(Lio/realm/internal/Table;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v5

    .line 18
    invoke-interface {v8}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v1, v0, v3

    const-string v1, "Element with key %s is not the proper type. Was \'%s\' expected \'%s\'."

    .line 19
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    :goto_3
    invoke-interface {v8}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v8

    invoke-interface {v8}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v8

    .line 21
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lio/realm/RealmMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Each element in \'dictionary\' must belong to the same Realm instance."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_5
    invoke-virtual {p1}, Lio/realm/internal/OsMap;->clear()V

    .line 24
    invoke-virtual {v6}, Lio/realm/RealmMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lio/realm/internal/OsMap;->putRow(Ljava/lang/Object;J)V

    goto :goto_4

    :cond_6
    return-void

    .line 26
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v5

    aput-object v1, v0, v4

    const-string v1, "The elements in the dictionary are not the proper type. Was %s expected %s."

    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setModelList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Lio/realm/DynamicRealmObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/realm/internal/OsList;->getTargetTable()Lio/realm/internal/Table;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p2, Lio/realm/RealmList;->className:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    iget-object v6, p2, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    if-nez v6, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    iget-object v6, p2, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-virtual {v2, v6}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v2, 0x1

    .line 8
    :goto_1
    invoke-virtual {p2}, Lio/realm/RealmList;->size()I

    move-result v6

    .line 9
    new-array v7, v6, [J

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_5

    .line 10
    invoke-virtual {p2, v8}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/realm/internal/RealmObjectProxy;

    .line 11
    invoke-interface {v9}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v10

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v10

    iget-object v11, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v11}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v11

    if-ne v10, v11, :cond_4

    if-nez v2, :cond_3

    .line 12
    invoke-interface {v9}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v10

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v10

    invoke-virtual {v0, v10}, Lio/realm/internal/Table;->hasSameSchema(Lio/realm/internal/Table;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_3

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    .line 15
    invoke-interface {v9}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v1, v0, v3

    const-string v1, "Element at index %d is not the proper type. Was \'%s\' expected \'%s\'."

    .line 16
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    :goto_3
    invoke-interface {v9}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v9

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Each element in \'list\' must belong to the same Realm instance."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_5
    invoke-virtual {p1}, Lio/realm/internal/OsList;->removeAll()V

    :goto_4
    if-ge v5, v6, :cond_6

    .line 20
    aget-wide v0, v7, v5

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/OsList;->addRow(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    return-void

    .line 21
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v5

    aput-object v1, v0, v4

    const-string v1, "The elements in the list are not the proper type. Was %s expected %s."

    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setModelSet(Ljava/lang/String;Lio/realm/RealmSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmSet<",
            "Lio/realm/DynamicRealmObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->getModelSet(J)Lio/realm/internal/OsSet;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/realm/internal/OsSet;->getTargetTable()Lio/realm/internal/Table;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p2}, Lio/realm/RealmSet;->isManaged()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p2}, Lio/realm/RealmSet;->getValueClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lio/realm/RealmSet;->getValueClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    invoke-virtual {p2}, Lio/realm/RealmSet;->getValueClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 8
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v2, 0x1

    .line 9
    :goto_1
    new-instance v6, Lio/realm/RealmSet;

    invoke-direct {v6}, Lio/realm/RealmSet;-><init>()V

    .line 10
    invoke-virtual {p2}, Lio/realm/RealmSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/realm/DynamicRealmObject;

    .line 11
    invoke-virtual {v7}, Lio/realm/DynamicRealmObject;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v8

    iget-object v9, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v9

    if-ne v8, v9, :cond_4

    if-nez v2, :cond_3

    .line 12
    invoke-virtual {v7}, Lio/realm/DynamicRealmObject;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v8

    invoke-interface {v8}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    invoke-virtual {v0, v8}, Lio/realm/internal/Table;->hasSameSchema(Lio/realm/internal/Table;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v3, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v7}, Lio/realm/DynamicRealmObject;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v1, v0, v4

    const-string v1, "Set contains an element with not the proper type. Was \'%s\' expected \'%s\'."

    .line 15
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    :goto_3
    invoke-virtual {v7}, Lio/realm/DynamicRealmObject;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v7

    .line 17
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/realm/RealmSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Each element in \'set\' must belong to the same Realm instance."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_5
    invoke-virtual {p1}, Lio/realm/internal/OsSet;->clear()V

    .line 20
    invoke-virtual {v6}, Lio/realm/RealmSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/OsSet;->addRow(J)Z

    goto :goto_4

    :cond_6
    return-void

    .line 22
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v5

    aput-object v1, v0, v4

    const-string v1, "The elements in the set are not the proper type. Was %s expected %s."

    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 4
    :cond_0
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setShort(Ljava/lang/String;S)V

    goto/16 :goto_0

    .line 6
    :cond_1
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    .line 7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_3

    .line 9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/DynamicRealmObject;->setLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 10
    :cond_3
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_4

    .line 11
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setByte(Ljava/lang/String;B)V

    goto/16 :goto_0

    .line 12
    :cond_4
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_5

    .line 13
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setFloat(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 14
    :cond_5
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_6

    .line 15
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/DynamicRealmObject;->setDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 16
    :cond_6
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_7

    .line 17
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_7
    instance-of v1, p2, Ljava/util/Date;

    if-eqz v1, :cond_8

    .line 19
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setDate(Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0

    .line 20
    :cond_8
    instance-of v1, p2, [B

    if-eqz v1, :cond_9

    .line 21
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setBlob(Ljava/lang/String;[B)V

    goto :goto_0

    .line 22
    :cond_9
    const-class v1, Lio/realm/DynamicRealmObject;

    if-ne v0, v1, :cond_a

    .line 23
    check-cast p2, Lio/realm/DynamicRealmObject;

    invoke-virtual {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setObject(Ljava/lang/String;Lio/realm/DynamicRealmObject;)V

    goto :goto_0

    .line 24
    :cond_a
    const-class v1, Lio/realm/RealmList;

    if-ne v0, v1, :cond_b

    .line 25
    check-cast p2, Lio/realm/RealmList;

    .line 26
    invoke-virtual {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setList(Ljava/lang/String;Lio/realm/RealmList;)V

    goto :goto_0

    .line 27
    :cond_b
    const-class v1, Lorg/bson/types/Decimal128;

    if-ne v0, v1, :cond_c

    .line 28
    check-cast p2, Lorg/bson/types/Decimal128;

    invoke-virtual {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setDecimal128(Ljava/lang/String;Lorg/bson/types/Decimal128;)V

    goto :goto_0

    .line 29
    :cond_c
    const-class v1, Lorg/bson/types/ObjectId;

    if-ne v0, v1, :cond_d

    .line 30
    check-cast p2, Lorg/bson/types/ObjectId;

    invoke-virtual {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setObjectId(Ljava/lang/String;Lorg/bson/types/ObjectId;)V

    goto :goto_0

    .line 31
    :cond_d
    const-class v1, Ljava/util/UUID;

    if-ne v0, v1, :cond_e

    .line 32
    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setUUID(Ljava/lang/String;Ljava/util/UUID;)V

    goto :goto_0

    .line 33
    :cond_e
    const-class v1, Lio/realm/RealmAny;

    if-ne v0, v1, :cond_f

    .line 34
    check-cast p2, Lio/realm/RealmAny;

    invoke-virtual {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setRealmAny(Ljava/lang/String;Lio/realm/RealmAny;)V

    :goto_0
    return-void

    .line 35
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is of an type not supported: "

    .line 36
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setValueDictionary(Ljava/lang/String;Lio/realm/RealmDictionary;Lio/realm/RealmFieldType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/realm/RealmDictionary<",
            "TE;>;",
            "Lio/realm/RealmFieldType;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1, p3}, Lio/realm/internal/Row;->getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object p1

    .line 3
    sget-object v0, Lio/realm/DynamicRealmObject$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_0
    const-class p3, Lio/realm/RealmAny;

    goto :goto_0

    .line 6
    :pswitch_1
    const-class p3, Ljava/util/UUID;

    goto :goto_0

    .line 7
    :pswitch_2
    const-class p3, Lorg/bson/types/ObjectId;

    goto :goto_0

    .line 8
    :pswitch_3
    const-class p3, Lorg/bson/types/Decimal128;

    goto :goto_0

    .line 9
    :pswitch_4
    const-class p3, Ljava/lang/Double;

    goto :goto_0

    .line 10
    :pswitch_5
    const-class p3, Ljava/lang/Float;

    goto :goto_0

    .line 11
    :pswitch_6
    const-class p3, Ljava/util/Date;

    goto :goto_0

    .line 12
    :pswitch_7
    const-class p3, [B

    goto :goto_0

    .line 13
    :pswitch_8
    const-class p3, Ljava/lang/String;

    goto :goto_0

    .line 14
    :pswitch_9
    const-class p3, Ljava/lang/Boolean;

    goto :goto_0

    .line 15
    :pswitch_a
    const-class p3, Ljava/lang/Long;

    .line 16
    :goto_0
    new-instance v0, Lio/realm/RealmDictionary;

    iget-object v1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Lio/realm/RealmDictionary;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V

    .line 17
    new-instance p3, Lio/realm/RealmDictionary;

    invoke-direct {p3}, Lio/realm/RealmDictionary;-><init>()V

    .line 18
    invoke-virtual {p2}, Lio/realm/RealmMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lio/realm/RealmMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p1}, Lio/realm/internal/OsMap;->clear()V

    .line 21
    invoke-virtual {p3}, Lio/realm/RealmMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lio/realm/RealmMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setValueList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/RealmFieldType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "TE;>;",
            "Lio/realm/RealmFieldType;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1, p3}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object p1

    .line 3
    sget-object v0, Lio/realm/DynamicRealmObject$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_0
    const-class v0, Lio/realm/RealmAny;

    goto :goto_0

    .line 6
    :pswitch_1
    const-class v0, Ljava/util/UUID;

    goto :goto_0

    .line 7
    :pswitch_2
    const-class v0, Lorg/bson/types/ObjectId;

    goto :goto_0

    .line 8
    :pswitch_3
    const-class v0, Lorg/bson/types/Decimal128;

    goto :goto_0

    .line 9
    :pswitch_4
    const-class v0, Ljava/lang/Double;

    goto :goto_0

    .line 10
    :pswitch_5
    const-class v0, Ljava/lang/Float;

    goto :goto_0

    .line 11
    :pswitch_6
    const-class v0, Ljava/util/Date;

    goto :goto_0

    .line 12
    :pswitch_7
    const-class v0, [B

    goto :goto_0

    .line 13
    :pswitch_8
    const-class v0, Ljava/lang/String;

    goto :goto_0

    .line 14
    :pswitch_9
    const-class v0, Ljava/lang/Boolean;

    goto :goto_0

    .line 15
    :pswitch_a
    const-class v0, Ljava/lang/Long;

    .line 16
    :goto_0
    iget-object v1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-direct {p0, v1, p1, p3, v0}, Lio/realm/DynamicRealmObject;->getOperator(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Lio/realm/RealmFieldType;Ljava/lang/Class;)Lio/realm/ManagedListOperator;

    move-result-object p3

    .line 17
    invoke-virtual {p2}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/realm/internal/OsList;->size()J

    move-result-wide v0

    invoke-virtual {p2}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 18
    invoke-virtual {p2}, Lio/realm/RealmList;->size()I

    move-result p1

    .line 19
    invoke-virtual {p2}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 21
    invoke-virtual {p3, v0, v1}, Lio/realm/ManagedListOperator;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p1}, Lio/realm/internal/OsList;->removeAll()V

    .line 23
    invoke-virtual {p2}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 24
    invoke-virtual {p3, p2}, Lio/realm/ManagedListOperator;->append(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setValueSet(Ljava/lang/String;Lio/realm/RealmSet;Lio/realm/RealmFieldType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/realm/RealmSet<",
            "TE;>;",
            "Lio/realm/RealmFieldType;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1, p3}, Lio/realm/internal/Row;->getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object p1

    .line 3
    sget-object v0, Lio/realm/DynamicRealmObject$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_1
    const-class p3, Lio/realm/RealmAny;

    goto :goto_0

    .line 6
    :pswitch_2
    const-class p3, Ljava/util/UUID;

    goto :goto_0

    .line 7
    :pswitch_3
    const-class p3, Lorg/bson/types/ObjectId;

    goto :goto_0

    .line 8
    :pswitch_4
    const-class p3, Lorg/bson/types/Decimal128;

    goto :goto_0

    .line 9
    :pswitch_5
    const-class p3, Ljava/lang/Double;

    goto :goto_0

    .line 10
    :pswitch_6
    const-class p3, Ljava/lang/Float;

    goto :goto_0

    .line 11
    :pswitch_7
    const-class p3, Ljava/util/Date;

    goto :goto_0

    .line 12
    :pswitch_8
    const-class p3, [B

    goto :goto_0

    .line 13
    :pswitch_9
    const-class p3, Ljava/lang/String;

    goto :goto_0

    .line 14
    :pswitch_a
    const-class p3, Ljava/lang/Boolean;

    goto :goto_0

    .line 15
    :pswitch_b
    const-class p3, Ljava/lang/Number;

    .line 16
    :goto_0
    new-instance v0, Lio/realm/RealmSet;

    iget-object v1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Lio/realm/RealmSet;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V

    .line 17
    new-instance p3, Lio/realm/RealmSet;

    invoke-direct {p3}, Lio/realm/RealmSet;-><init>()V

    .line 18
    invoke-virtual {p3, p2}, Lio/realm/RealmSet;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-virtual {p1}, Lio/realm/internal/OsSet;->clear()V

    .line 20
    invoke-virtual {v0, p3}, Lio/realm/RealmSet;->addAll(Ljava/util/Collection;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    check-cast p1, Lio/realm/DynamicRealmObject;

    .line 4
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p1, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 7
    :cond_3
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v3, p1, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 10
    :cond_5
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_7
    :goto_3
    return v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 1
    const-class v0, Lio/realm/RealmAny;

    const-class v1, Ljava/lang/Double;

    const-class v2, Ljava/lang/Float;

    const-class v3, [B

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/lang/Boolean;

    const-class v6, Ljava/lang/Integer;

    iget-object v7, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v7, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v7

    .line 3
    iget-object v9, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v9, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Lio/realm/internal/Row;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v9

    .line 5
    sget-object v10, Lio/realm/DynamicRealmObject$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field type not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :pswitch_0
    invoke-virtual {p0, p1, v0}, Lio/realm/DynamicRealmObject;->getRealmSet(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmSet;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_1
    invoke-virtual {p0, p1}, Lio/realm/DynamicRealmObject;->getRealmSet(Ljava/lang/String;)Lio/realm/RealmSet;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    const-class v0, Ljava/util/UUID;

    invoke-virtual {p0, p1, v0}, Lio/realm/DynamicRealmObject;->getRealmSet(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmSet;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_3
    const-class v0, Lorg/bson/types/ObjectId;

    invoke-virtual {p0, p1, v0}, Lio/realm/DynamicRealmObject;->getRealmSet(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmSet;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_4
    const-class v0, Lorg/bson/types/Decimal128;

    invoke-virtual {p0, p1, v0}, Lio/realm/DynamicRealmObject;->getRealmSet(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmSet;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    invoke-virtual {p0, p1, v1}, Lio/realm/DynamicRealmObject;->getRealmSet(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmSet;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_6
    invoke-virtual {p0, p1, v2}, Lio/realm/DynamicRealmObject;->getRealmSet(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmSet;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_7
    const-class v0, Ljava/util/Date;

    invoke-virtual {p0, p1, v0}, Lio/realm/DynamicRealmObject;->getRealmSet(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmSet;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_8
    invoke-virtual {p0, p1, v3}, Lio/realm/DynamicRealmObject;->getRealmSet(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmSet;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_9
    invoke-virtual {p0, p1, v4}, Lio/realm/DynamicRealmObject;->getRealmSet(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmSet;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_a
    invoke-virtual {p0, p1, v5}, Lio/realm/DynamicRealmObject;->getRealmSet(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmSet;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_b
    invoke-virtual {p0, p1, v6}, Lio/realm/DynamicRealmObject;->getRealmSet(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmSet;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_c
    invoke-virtual {p0, p1}, Lio/realm/DynamicRealmObject;->getDictionary(Ljava/lang/String;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_d
    invoke-virtual {p0, p1, v0}, Lio/realm/DynamicRealmObject;->getDictionary(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_e
    const-class v0, Ljava/util/UUID;

    invoke-virtual {p0, p1, v0}, Lio/realm/DynamicRealmObject;->getDictionary(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_f
    const-class v0, Lorg/bson/types/ObjectId;

    invoke-virtual {p0, p1, v0}, Lio/realm/DynamicRealmObject;->getDictionary(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_10
    const-class v0, Lorg/bson/types/Decimal128;

    invoke-virtual {p0, p1, v0}, Lio/realm/DynamicRealmObject;->getDictionary(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_11
    invoke-virtual {p0, p1, v1}, Lio/realm/DynamicRealmObject;->getDictionary(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_12
    invoke-virtual {p0, p1, v2}, Lio/realm/DynamicRealmObject;->getDictionary(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_13
    const-class v0, Ljava/util/Date;

    invoke-virtual {p0, p1, v0}, Lio/realm/DynamicRealmObject;->getDictionary(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_14
    invoke-virtual {p0, p1, v3}, Lio/realm/DynamicRealmObject;->getDictionary(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_15
    invoke-virtual {p0, p1, v4}, Lio/realm/DynamicRealmObject;->getDictionary(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_16
    invoke-virtual {p0, p1, v5}, Lio/realm/DynamicRealmObject;->getDictionary(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_17
    invoke-virtual {p0, p1, v6}, Lio/realm/DynamicRealmObject;->getDictionary(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmDictionary;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_18
    invoke-virtual {p0, p1}, Lio/realm/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/RealmList;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_19
    invoke-virtual {p0, p1}, Lio/realm/DynamicRealmObject;->getObject(Ljava/lang/String;)Lio/realm/DynamicRealmObject;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_1a
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v7, v8}, Lio/realm/internal/Row;->getUUID(J)Ljava/util/UUID;

    move-result-object p1

    return-object p1

    .line 34
    :pswitch_1b
    invoke-direct {p0, v7, v8}, Lio/realm/DynamicRealmObject;->getRealmAny(J)Lio/realm/RealmAny;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_1c
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v7, v8}, Lio/realm/internal/Row;->getObjectId(J)Lorg/bson/types/ObjectId;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_1d
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v7, v8}, Lio/realm/internal/Row;->getDecimal128(J)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_1e
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v7, v8}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 38
    :pswitch_1f
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v7, v8}, Lio/realm/internal/Row;->getBinaryByteArray(J)[B

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_20
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v7, v8}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 40
    :pswitch_21
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v7, v8}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_22
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v7, v8}, Lio/realm/internal/Row;->getFloat(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 42
    :pswitch_23
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v7, v8}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_24
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v7, v8}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBlob(Ljava/lang/String;)[B
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/Row;->getBinaryByteArray(J)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 4
    sget-object v3, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v3}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 5
    throw v2
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v2

    .line 4
    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v3}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 5
    throw v2
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 2

    invoke-virtual {p0, p1}, Lio/realm/DynamicRealmObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-byte p1, p1

    return p1
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v2}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 4
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->isNull(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDecimal128(Ljava/lang/String;)Lorg/bson/types/Decimal128;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    sget-object v2, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v2}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 4
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->isNull(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->getDecimal128(J)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1
.end method

.method public getDictionary(Ljava/lang/String;)Lio/realm/RealmDictionary;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmDictionary<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/Row;->getModelMap(J)Lio/realm/internal/OsMap;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lio/realm/internal/OsMap;->getTargetTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Lio/realm/RealmDictionary;

    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lio/realm/RealmDictionary;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    .line 6
    sget-object v3, Lio/realm/RealmFieldType;->STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v3}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 7
    throw v2
.end method

.method public getDictionary(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmDictionary;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lio/realm/RealmDictionary<",
            "TE;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_0

    .line 9
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 10
    sget-object v2, Lio/realm/DynamicRealmObject$CollectionType;->DICTIONARY:Lio/realm/DynamicRealmObject$CollectionType;

    invoke-direct {p0, v2, p2}, Lio/realm/DynamicRealmObject;->primitiveTypeToRealmFieldType(Lio/realm/DynamicRealmObject$CollectionType;Ljava/lang/Class;)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 11
    :try_start_0
    iget-object v3, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lio/realm/internal/Row;->getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v3

    .line 12
    new-instance v4, Lio/realm/RealmDictionary;

    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    invoke-direct {v4, v5, v3, p2}, Lio/realm/RealmDictionary;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p2

    .line 13
    invoke-direct {p0, p1, v0, v1, v2}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 14
    throw p2

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'primitiveType\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v2

    .line 4
    sget-object v3, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v3}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 5
    throw v2
.end method

.method public getDynamicRealm()Lio/realm/DynamicRealm;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/DynamicRealmObject;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3
    invoke-virtual {p0}, Lio/realm/RealmObject;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lio/realm/DynamicRealm;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the object is already deleted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFieldNames()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldType(Ljava/lang/String;)Lio/realm/RealmFieldType;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/Row;->getFloat(J)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v2

    .line 4
    sget-object v3, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v3}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 5
    throw v2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0, p1}, Lio/realm/DynamicRealmObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public getList(Ljava/lang/String;)Lio/realm/RealmList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmList<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lio/realm/internal/OsList;->getTargetTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Lio/realm/RealmList;

    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    invoke-direct {v4, v3, v2, v5}, Lio/realm/RealmList;-><init>(Ljava/lang/String;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    .line 6
    sget-object v3, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v3}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 7
    throw v2
.end method

.method public getList(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lio/realm/RealmList<",
            "TE;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_0

    .line 9
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 10
    sget-object v2, Lio/realm/DynamicRealmObject$CollectionType;->LIST:Lio/realm/DynamicRealmObject$CollectionType;

    invoke-direct {p0, v2, p2}, Lio/realm/DynamicRealmObject;->primitiveTypeToRealmFieldType(Lio/realm/DynamicRealmObject$CollectionType;Ljava/lang/Class;)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 11
    :try_start_0
    iget-object v3, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v3

    .line 12
    new-instance v4, Lio/realm/RealmList;

    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    invoke-direct {v4, p2, v3, v5}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p2

    .line 13
    invoke-direct {p0, p1, v0, v1, v2}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 14
    throw p2

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'primitiveType\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v2

    .line 4
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v3}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 5
    throw v2
.end method

.method public getObject(Ljava/lang/String;)Lio/realm/DynamicRealmObject;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v2}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 4
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v2

    .line 6
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lio/realm/internal/Table;->getCheckedRow(J)Lio/realm/internal/CheckedRow;

    move-result-object p1

    .line 7
    new-instance v0, Lio/realm/DynamicRealmObject;

    iget-object v1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    return-object v0
.end method

.method public getObjectId(Ljava/lang/String;)Lorg/bson/types/ObjectId;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    sget-object v2, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v2}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 4
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->isNull(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->getObjectId(J)Lorg/bson/types/ObjectId;

    move-result-object p1

    return-object p1
.end method

.method public getRealmAny(Ljava/lang/String;)Lio/realm/RealmAny;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    sget-object v2, Lio/realm/RealmFieldType;->MIXED:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v2}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 4
    invoke-direct {p0, v0, v1}, Lio/realm/DynamicRealmObject;->getRealmAny(J)Lio/realm/RealmAny;

    move-result-object p1

    return-object p1
.end method

.method public getRealmSet(Ljava/lang/String;)Lio/realm/RealmSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmSet<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/Row;->getModelSet(J)Lio/realm/internal/OsSet;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lio/realm/internal/OsSet;->getTargetTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Lio/realm/RealmSet;

    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lio/realm/RealmSet;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    .line 6
    sget-object v3, Lio/realm/RealmFieldType;->LINK_SET:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v3}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 7
    throw v2
.end method

.method public getRealmSet(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lio/realm/RealmSet<",
            "TE;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_0

    .line 9
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 10
    sget-object v2, Lio/realm/DynamicRealmObject$CollectionType;->SET:Lio/realm/DynamicRealmObject$CollectionType;

    invoke-direct {p0, v2, p2}, Lio/realm/DynamicRealmObject;->primitiveTypeToRealmFieldType(Lio/realm/DynamicRealmObject$CollectionType;Ljava/lang/Class;)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 11
    :try_start_0
    iget-object v3, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lio/realm/internal/Row;->getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v3

    .line 12
    new-instance v4, Lio/realm/RealmSet;

    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    invoke-direct {v4, v5, v3, p2}, Lio/realm/RealmSet;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p2

    .line 13
    invoke-direct {p0, p1, v0, v1, v2}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 14
    throw p2

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'primitiveType\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 2

    invoke-virtual {p0, p1}, Lio/realm/DynamicRealmObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-short p1, p1

    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 4
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v3}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 5
    throw v2
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUUID(Ljava/lang/String;)Ljava/util/UUID;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    sget-object v2, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    invoke-direct {p0, p1, v0, v1, v2}, Lio/realm/DynamicRealmObject;->checkFieldType(Ljava/lang/String;JLio/realm/RealmFieldType;)V

    .line 4
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->isNull(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->getUUID(J)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->hasColumn(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v5, 0x20f

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_1
    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    long-to-int v1, v0

    add-int/2addr v5, v1

    return v5
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object p1

    .line 4
    sget-object v2, Lio/realm/DynamicRealmObject$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 5
    :pswitch_0
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result p1

    return p1

    .line 6
    :pswitch_1
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->isNull(J)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public linkingObjects(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmResults;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/DynamicRealm;

    .line 2
    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3
    iget-object v1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->checkIfAttached()V

    .line 4
    invoke-virtual {v0}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    const-string p1, "."

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {v1, p2}, Lio/realm/RealmObjectSchema;->getFieldType(Ljava/lang/String;)Lio/realm/RealmFieldType;

    move-result-object p1

    .line 8
    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq p1, v2, :cond_1

    sget-object v3, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne p1, v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const/4 p1, 0x1

    const-string v4, "RealmFieldType"

    aput-object v4, v1, p1

    const/4 p1, 0x2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "Unexpected field type: %1$s. Field type should be either %2$s.%3$s or %2$s.%4$s."

    .line 12
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    check-cast p1, Lio/realm/internal/UncheckedRow;

    .line 14
    iget-object v1, v1, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    .line 15
    sget v2, Lio/realm/RealmResults;->$r8$clinit:I

    .line 16
    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/realm/internal/Table;->getClassNameForTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    new-instance v3, Lio/realm/RealmResults;

    iget-object v4, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 18
    invoke-static {v4, p1, v1, p2}, Lio/realm/internal/OsResults;->createForBacklinks(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/internal/OsResults;

    move-result-object p1

    invoke-direct {v3, v0, p1, v2}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/String;)V

    return-object v3

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Queries across relationships are not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'srcFieldName\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Class not found: "

    .line 22
    invoke-static {v0, p1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public realm$injectObjectContext()V
    .locals 0

    return-void
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v2

    .line 5
    iget-object v4, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lio/realm/internal/Row;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v0, :cond_1

    .line 7
    sget-object v0, Lio/realm/DynamicRealmObject$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 8
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p1, "Field %s is not a String field, and the provide value could not be automatically converted: %s. Use a typedsetter instead"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :pswitch_1
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    goto :goto_1

    .line 10
    :pswitch_2
    invoke-static {v1}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object p2

    goto :goto_1

    .line 11
    :pswitch_3
    new-instance p2, Lorg/bson/types/ObjectId;

    invoke-direct {p2, v1}, Lorg/bson/types/ObjectId;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :pswitch_4
    invoke-static {v1}, Lorg/bson/types/Decimal128;->parse(Ljava/lang/String;)Lorg/bson/types/Decimal128;

    move-result-object p2

    goto :goto_1

    .line 13
    :pswitch_5
    invoke-static {v1}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    goto :goto_1

    .line 14
    :pswitch_6
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_1

    .line 15
    :pswitch_7
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_1

    .line 16
    :pswitch_8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_1

    .line 17
    :pswitch_9
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :cond_1
    :goto_1
    if-nez p2, :cond_2

    .line 18
    invoke-virtual {p0, p1}, Lio/realm/DynamicRealmObject;->setNull(Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_2
    invoke-direct {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBlob(Ljava/lang/String;[B)V
    .locals 2
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/Row;->setBinaryByteArray(J[B)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public setByte(Ljava/lang/String;B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/DynamicRealmObject;->checkIsPrimaryKey(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    int-to-long v2, p2

    invoke-interface {p1, v0, v1, v2, v3}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2
    .param p2    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    :goto_0
    return-void
.end method

.method public setDecimal128(Ljava/lang/String;Lorg/bson/types/Decimal128;)V
    .locals 2
    .param p2    # Lorg/bson/types/Decimal128;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/Row;->setDecimal128(JLorg/bson/types/Decimal128;)V

    :goto_0
    return-void
.end method

.method public setDictionary(Ljava/lang/String;Lio/realm/RealmDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/realm/RealmDictionary<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/Row;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 4
    sget-object v1, Lio/realm/DynamicRealmObject$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const-string p1, "Field \'%s\' is not a dictionary but a %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setModelDictionary(Ljava/lang/String;Lio/realm/RealmDictionary;)V

    goto :goto_0

    .line 7
    :pswitch_1
    invoke-direct {p0, p1, p2, v0}, Lio/realm/DynamicRealmObject;->setValueDictionary(Ljava/lang/String;Lio/realm/RealmDictionary;Lio/realm/RealmFieldType;)V

    :goto_0
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'dictionary\' required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2, p3}, Lio/realm/internal/Row;->setDouble(JD)V

    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/Row;->setFloat(JF)V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/DynamicRealmObject;->checkIsPrimaryKey(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    int-to-long v2, p2

    invoke-interface {p1, v0, v1, v2, v3}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public setList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_3

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/Row;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 4
    sget-object v1, Lio/realm/DynamicRealmObject$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const-string p1, "Field \'%s\' is not a list but a %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lio/realm/DynamicRealmObject;->setValueList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/RealmFieldType;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p2}, Lio/realm/RealmList;->first()Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lio/realm/DynamicRealmObject;

    if-nez v1, :cond_2

    const-class v1, Lio/realm/RealmModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RealmList must contain `DynamicRealmObject\'s, not Java model classes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setModelList(Ljava/lang/String;Lio/realm/RealmList;)V

    :goto_1
    return-void

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'list\' required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/DynamicRealmObject;->checkIsPrimaryKey(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2, p3}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public setNull(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/Row;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 4
    sget-object v3, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-ne v2, v3, :cond_0

    .line 5
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lio/realm/DynamicRealmObject;->checkIsPrimaryKey(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/String;Lio/realm/DynamicRealmObject;)V
    .locals 4
    .param p2    # Lio/realm/DynamicRealmObject;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p2, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p2, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    iget-object v2, p2, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 6
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object p1

    .line 7
    iget-object v2, p2, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v2}, Lio/realm/internal/Table;->hasSameSchema(Lio/realm/internal/Table;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object p2, p2, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p2

    invoke-interface {p2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lio/realm/internal/Row;->setLink(JJ)V

    :goto_0
    return-void

    .line 10
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Type of object is wrong. Was %s, expected %s"

    .line 12
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add an object from another Realm instance."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot link to objects that are not part of the Realm."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setObjectId(Ljava/lang/String;Lorg/bson/types/ObjectId;)V
    .locals 2
    .param p2    # Lorg/bson/types/ObjectId;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/Row;->setObjectId(JLorg/bson/types/ObjectId;)V

    :goto_0
    return-void
.end method

.method public setRealmAny(Ljava/lang/String;Lio/realm/RealmAny;)V
    .locals 4
    .param p2    # Lio/realm/RealmAny;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-virtual {p2}, Lio/realm/RealmAny;->getNativePtr()J

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lio/realm/internal/Row;->setRealmAny(JJ)V

    :goto_0
    return-void
.end method

.method public setRealmSet(Ljava/lang/String;Lio/realm/RealmSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/realm/RealmSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/internal/Row;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 4
    sget-object v1, Lio/realm/DynamicRealmObject$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const-string p1, "Field \'%s\' is not a set but a %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lio/realm/DynamicRealmObject;->setModelSet(Ljava/lang/String;Lio/realm/RealmSet;)V

    goto :goto_0

    .line 7
    :pswitch_1
    invoke-direct {p0, p1, p2, v0}, Lio/realm/DynamicRealmObject;->setValueSet(Ljava/lang/String;Lio/realm/RealmSet;Lio/realm/RealmFieldType;)V

    :goto_0
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'set\' required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShort(Ljava/lang/String;S)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/DynamicRealmObject;->checkIsPrimaryKey(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    int-to-long v2, p2

    invoke-interface {p1, v0, v1, v2, v3}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/DynamicRealmObject;->checkIsPrimaryKey(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public setUUID(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 2
    .param p2    # Ljava/util/UUID;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1, v0, v1, p2}, Lio/realm/internal/Row;->setUUID(JLjava/util/UUID;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " = dynamic["

    .line 5
    invoke-static {v0, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lio/realm/DynamicRealmObject;->getFieldNames()[Ljava/lang/String;

    move-result-object v0

    .line 8
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_b

    aget-object v6, v0, v4

    .line 9
    iget-object v7, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7, v6}, Lio/realm/internal/Row;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v7

    .line 10
    iget-object v9, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Lio/realm/internal/Row;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v9

    const-string v10, "{"

    .line 11
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    sget-object v6, Lio/realm/DynamicRealmObject$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v6, v6, v10

    const/4 v10, 0x2

    const-string v11, "null"

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    const-string v5, "?"

    .line 14
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 15
    :pswitch_1
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<RealmAny>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 16
    :pswitch_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<UUID>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 17
    :pswitch_3
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<ObjectId>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 18
    :pswitch_4
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<Decimal128>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 19
    :pswitch_5
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<Double>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 20
    :pswitch_6
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<Float>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 21
    :pswitch_7
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<Date>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 22
    :pswitch_8
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<byte[]>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 23
    :pswitch_9
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<String>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 24
    :pswitch_a
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<Boolean>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 25
    :pswitch_b
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmList<Long>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 26
    :pswitch_c
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmSet<RealmAny>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 27
    :pswitch_d
    iget-object v6, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 28
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v3

    iget-object v6, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6, v7, v8}, Lio/realm/internal/Row;->getModelSet(J)Lio/realm/internal/OsSet;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v5

    const-string v5, "RealmSet<%s>[%s]"

    invoke-static {v9, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 29
    :pswitch_e
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmSet<UUID>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 30
    :pswitch_f
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmSet<ObjectId>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 31
    :pswitch_10
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmSet<Decimal128>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 32
    :pswitch_11
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmSet<Double>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 33
    :pswitch_12
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmSet<Float>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 34
    :pswitch_13
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmSet<Date>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 35
    :pswitch_14
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmSet<byte[]>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 36
    :pswitch_15
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmSet<String>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 37
    :pswitch_16
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmSet<Boolean>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 38
    :pswitch_17
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueSet(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmSet<Long>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 39
    :pswitch_18
    iget-object v6, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 40
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v3

    iget-object v6, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6, v7, v8}, Lio/realm/internal/Row;->getModelMap(J)Lio/realm/internal/OsMap;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v5

    const-string v5, "RealmDictionary<%s>[%s]"

    invoke-static {v9, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 41
    :pswitch_19
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmDictionary<RealmAny>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 42
    :pswitch_1a
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmDictionary<UUID>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 43
    :pswitch_1b
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmDictionary<ObjectId>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 44
    :pswitch_1c
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmDictionary<Decimal128>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 45
    :pswitch_1d
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmDictionary<Double>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 46
    :pswitch_1e
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmDictionary<Float>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 47
    :pswitch_1f
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmDictionary<Date>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 48
    :pswitch_20
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmDictionary<byte[]>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 49
    :pswitch_21
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmDictionary<String>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 50
    :pswitch_22
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmDictionary<Boolean>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 51
    :pswitch_23
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v10}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Lio/realm/internal/Row;->getValueMap(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "RealmDictionary<Long>[%s]"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 52
    :pswitch_24
    iget-object v6, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 53
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v3

    iget-object v6, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6, v7, v8}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/OsList;->size()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v5

    const-string v5, "RealmList<%s>[%s]"

    invoke-static {v9, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 54
    :pswitch_25
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 56
    :goto_1
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 57
    :pswitch_26
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->getUUID(J)Ljava/util/UUID;

    move-result-object v11

    :goto_2
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 58
    :pswitch_27
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0, v7, v8}, Lio/realm/DynamicRealmObject;->getRealmAny(J)Lio/realm/RealmAny;

    move-result-object v11

    :goto_3
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 59
    :pswitch_28
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->getObjectId(J)Lorg/bson/types/ObjectId;

    move-result-object v11

    :goto_4
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 60
    :pswitch_29
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->getDecimal128(J)Lorg/bson/types/Decimal128;

    move-result-object v11

    :goto_5
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 61
    :pswitch_2a
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v11

    :goto_6
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 62
    :pswitch_2b
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->getBinaryByteArray(J)[B

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 63
    :pswitch_2c
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 64
    :pswitch_2d
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_7

    :cond_7
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    :goto_7
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 65
    :pswitch_2e
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_8

    :cond_8
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    :goto_8
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 66
    :pswitch_2f
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_9

    :cond_9
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :goto_9
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 67
    :pswitch_30
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_a

    :cond_a
    iget-object v5, p0, Lio/realm/DynamicRealmObject;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    :goto_a
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_b
    const-string v5, "},"

    .line 68
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 69
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
