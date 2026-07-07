.class public Lio/realm/RealmAny;
.super Ljava/lang/Object;
.source "RealmAny.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmAny$Type;
    }
.end annotation


# instance fields
.field private final operator:Lio/realm/RealmAnyOperator;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/RealmAnyOperator;)V
    .registers 2
    .param p1    # Lio/realm/RealmAnyOperator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    return-void
.end method

.method public static nullValue()Lio/realm/RealmAny;
    .registers 2

    new-instance v0, Lio/realm/RealmAny;

    new-instance v1, Lio/realm/NullRealmAnyOperator;

    invoke-direct {v1}, Lio/realm/NullRealmAnyOperator;-><init>()V

    invoke-direct {v0, v1}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;
    .registers 3
    .param p0    # Lio/realm/RealmModel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_a

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Lio/realm/RealmModelOperator;

    invoke-direct {v1, p0}, Lio/realm/RealmModelOperator;-><init>(Lio/realm/RealmModel;)V

    move-object p0, v1

    :goto_10
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Boolean;)Lio/realm/RealmAny;
    .registers 3
    .param p0    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_a

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Lio/realm/BooleanRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/BooleanRealmAnyOperator;-><init>(Ljava/lang/Boolean;)V

    move-object p0, v1

    :goto_10
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Byte;)Lio/realm/RealmAny;
    .registers 3
    .param p0    # Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_a

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Lio/realm/IntegerRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/IntegerRealmAnyOperator;-><init>(Ljava/lang/Byte;)V

    move-object p0, v1

    :goto_10
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;
    .registers 3
    .param p0    # Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_a

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Lio/realm/DoubleRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/DoubleRealmAnyOperator;-><init>(Ljava/lang/Double;)V

    move-object p0, v1

    :goto_10
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Float;)Lio/realm/RealmAny;
    .registers 3
    .param p0    # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_a

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Lio/realm/FloatRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/FloatRealmAnyOperator;-><init>(Ljava/lang/Float;)V

    move-object p0, v1

    :goto_10
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;
    .registers 3
    .param p0    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_a

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Lio/realm/IntegerRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/IntegerRealmAnyOperator;-><init>(Ljava/lang/Integer;)V

    move-object p0, v1

    :goto_10
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;
    .registers 3
    .param p0    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_a

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Lio/realm/IntegerRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/IntegerRealmAnyOperator;-><init>(Ljava/lang/Long;)V

    move-object p0, v1

    :goto_10
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Object;)Lio/realm/RealmAny;
    .registers 3
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_7

    .line 15
    invoke-static {}, Lio/realm/RealmAny;->nullValue()Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 16
    :cond_7
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    .line 17
    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Boolean;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 18
    :cond_12
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_1d

    .line 19
    check-cast p0, Ljava/lang/Byte;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Byte;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 20
    :cond_1d
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_28

    .line 21
    check-cast p0, Ljava/lang/Short;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Short;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 22
    :cond_28
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_33

    .line 23
    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 24
    :cond_33
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3e

    .line 25
    check-cast p0, Ljava/lang/Long;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 26
    :cond_3e
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_49

    .line 27
    check-cast p0, Ljava/lang/Float;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Float;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 28
    :cond_49
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_54

    .line 29
    check-cast p0, Ljava/lang/Double;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 30
    :cond_54
    instance-of v0, p0, Lorg/bson/types/Decimal128;

    if-eqz v0, :cond_5f

    .line 31
    check-cast p0, Lorg/bson/types/Decimal128;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/Decimal128;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 32
    :cond_5f
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6a

    .line 33
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 34
    :cond_6a
    instance-of v0, p0, [B

    if-eqz v0, :cond_75

    .line 35
    check-cast p0, [B

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf([B)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 36
    :cond_75
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_80

    .line 37
    check-cast p0, Ljava/util/Date;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/util/Date;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 38
    :cond_80
    instance-of v0, p0, Lorg/bson/types/ObjectId;

    if-eqz v0, :cond_8b

    .line 39
    check-cast p0, Lorg/bson/types/ObjectId;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/ObjectId;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 40
    :cond_8b
    instance-of v0, p0, Ljava/util/UUID;

    if-eqz v0, :cond_96

    .line 41
    check-cast p0, Ljava/util/UUID;

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/util/UUID;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 42
    :cond_96
    instance-of v0, p0, Lio/realm/RealmAny;

    if-eqz v0, :cond_9d

    .line 43
    check-cast p0, Lio/realm/RealmAny;

    return-object p0

    .line 44
    :cond_9d
    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 45
    check-cast p0, Lio/realm/RealmModel;

    .line 46
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 47
    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 48
    :cond_bc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "RealmObject is not a valid managed object."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_c4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type not supported on RealmAny: "

    .line 50
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/Short;)Lio/realm/RealmAny;
    .registers 3
    .param p0    # Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_a

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Lio/realm/IntegerRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/IntegerRealmAnyOperator;-><init>(Ljava/lang/Short;)V

    move-object p0, v1

    :goto_10
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/RealmAny;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_a

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Lio/realm/StringRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/StringRealmAnyOperator;-><init>(Ljava/lang/String;)V

    move-object p0, v1

    :goto_10
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/util/Date;)Lio/realm/RealmAny;
    .registers 3
    .param p0    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_a

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Lio/realm/DateRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/DateRealmAnyOperator;-><init>(Ljava/util/Date;)V

    move-object p0, v1

    :goto_10
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/util/UUID;)Lio/realm/RealmAny;
    .registers 3
    .param p0    # Ljava/util/UUID;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_a

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Lio/realm/UUIDRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/UUIDRealmAnyOperator;-><init>(Ljava/util/UUID;)V

    move-object p0, v1

    :goto_10
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Lorg/bson/types/Decimal128;)Lio/realm/RealmAny;
    .registers 3
    .param p0    # Lorg/bson/types/Decimal128;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_a

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Lio/realm/Decimal128RealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/Decimal128RealmAnyOperator;-><init>(Lorg/bson/types/Decimal128;)V

    move-object p0, v1

    :goto_10
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Lorg/bson/types/ObjectId;)Lio/realm/RealmAny;
    .registers 3
    .param p0    # Lorg/bson/types/ObjectId;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_a

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Lio/realm/ObjectIdRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/ObjectIdRealmAnyOperator;-><init>(Lorg/bson/types/ObjectId;)V

    move-object p0, v1

    :goto_10
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf([B)Lio/realm/RealmAny;
    .registers 3
    .param p0    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_a

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Lio/realm/BinaryRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/BinaryRealmAnyOperator;-><init>([B)V

    move-object p0, v1

    :goto_10
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method


# virtual methods
.method public asBinary()[B
    .registers 3

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public asBoolean()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public asByte()Ljava/lang/Byte;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_16

    .line 2
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_16
    return-object v0
.end method

.method public asDate()Ljava/util/Date;
    .registers 3

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public asDecimal128()Lorg/bson/types/Decimal128;
    .registers 3

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Lorg/bson/types/Decimal128;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bson/types/Decimal128;

    return-object v0
.end method

.method public asDouble()Ljava/lang/Double;
    .registers 3

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public asFloat()Ljava/lang/Float;
    .registers 3

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public asInteger()Ljava/lang/Integer;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_16

    .line 2
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_16
    return-object v0
.end method

.method public asLong()Ljava/lang/Long;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_16

    .line 2
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_16
    return-object v0
.end method

.method public asObjectId()Lorg/bson/types/ObjectId;
    .registers 3

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Lorg/bson/types/ObjectId;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bson/types/ObjectId;

    return-object v0
.end method

.method public asRealmModel(Ljava/lang/Class;)Lio/realm/RealmModel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0, p1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1
.end method

.method public asShort()Ljava/lang/Short;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_16

    .line 2
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    :goto_16
    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public asUUID()Ljava/util/UUID;
    .registers 3

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    const-class v1, Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    return-object v0
.end method

.method public final checkValidObject(Lio/realm/BaseRealm;)V
    .registers 3

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0, p1}, Lio/realm/RealmAnyOperator;->checkValidObject(Lio/realm/BaseRealm;)V

    return-void
.end method

.method public final coercedEquals(Lio/realm/RealmAny;)Z
    .registers 3
    .param p1    # Lio/realm/RealmAny;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    iget-object p1, p1, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0, p1}, Lio/realm/RealmAnyOperator;->coercedEquals(Lio/realm/RealmAnyOperator;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "NP_METHOD_PARAMETER_TIGHTENS_ANNOTATION"
        }
    .end annotation

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lio/realm/RealmAny;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Lio/realm/RealmAny;

    .line 3
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    iget-object p1, p1, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getNativePtr()J
    .registers 3

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Lio/realm/RealmAnyOperator;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lio/realm/RealmAny$Type;
    .registers 2

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Lio/realm/RealmAnyOperator;->getType()Lio/realm/RealmAny$Type;

    move-result-object v0

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Lio/realm/RealmAnyOperator;->getTypedClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNull()Z
    .registers 3

    invoke-virtual {p0}, Lio/realm/RealmAny;->getType()Lio/realm/RealmAny$Type;

    move-result-object v0

    sget-object v1, Lio/realm/RealmAny$Type;->NULL:Lio/realm/RealmAny$Type;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
