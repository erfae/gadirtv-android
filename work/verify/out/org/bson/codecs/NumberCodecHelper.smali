.class final Lorg/bson/codecs/NumberCodecHelper;
.super Ljava/lang/Object;
.source "NumberCodecHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeDouble(Lorg/bson/BsonReader;)D
    .registers 8

    .line 1
    const-class v0, Ljava/lang/Double;

    invoke-interface {p0}, Lorg/bson/BsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v1

    .line 2
    sget-object v2, Lorg/bson/codecs/NumberCodecHelper$1;->$SwitchMap$org$bson$BsonType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_68

    const/4 v4, 0x2

    if-eq v2, v4, :cond_53

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4e

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3d

    .line 3
    invoke-interface {p0}, Lorg/bson/BsonReader;->readDecimal128()Lorg/bson/types/Decimal128;

    move-result-object p0

    .line 4
    :try_start_1e
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->doubleValue()D

    move-result-wide v1

    .line 5
    new-instance v3, Lorg/bson/types/Decimal128;

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-direct {v3, v4}, Lorg/bson/types/Decimal128;-><init>(Ljava/math/BigDecimal;)V

    invoke-virtual {p0, v3}, Lorg/bson/types/Decimal128;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_6d

    .line 6
    :cond_33
    invoke-static {v0, p0}, Lorg/bson/codecs/NumberCodecHelper;->invalidConversion(Ljava/lang/Class;Ljava/lang/Number;)Lorg/bson/BsonInvalidOperationException;

    move-result-object v1

    throw v1
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_38} :catch_38

    .line 7
    :catch_38
    invoke-static {v0, p0}, Lorg/bson/codecs/NumberCodecHelper;->invalidConversion(Ljava/lang/Class;Ljava/lang/Number;)Lorg/bson/BsonInvalidOperationException;

    move-result-object p0

    throw p0

    .line 8
    :cond_3d
    new-instance p0, Lorg/bson/BsonInvalidOperationException;

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Invalid numeric type, found: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_4e
    invoke-interface {p0}, Lorg/bson/BsonReader;->readDouble()D

    move-result-wide v1

    goto :goto_6d

    .line 10
    :cond_53
    invoke-interface {p0}, Lorg/bson/BsonReader;->readInt64()J

    move-result-wide v1

    long-to-double v3, v1

    double-to-long v5, v3

    cmp-long p0, v1, v5

    if-nez p0, :cond_5f

    move-wide v1, v3

    goto :goto_6d

    .line 11
    :cond_5f
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/bson/codecs/NumberCodecHelper;->invalidConversion(Ljava/lang/Class;Ljava/lang/Number;)Lorg/bson/BsonInvalidOperationException;

    move-result-object p0

    throw p0

    .line 12
    :cond_68
    invoke-interface {p0}, Lorg/bson/BsonReader;->readInt32()I

    move-result p0

    int-to-double v1, p0

    :goto_6d
    return-wide v1
.end method

.method public static decodeInt(Lorg/bson/BsonReader;)I
    .registers 7

    .line 1
    const-class v0, Ljava/lang/Integer;

    invoke-interface {p0}, Lorg/bson/BsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v1

    .line 2
    sget-object v2, Lorg/bson/codecs/NumberCodecHelper$1;->$SwitchMap$org$bson$BsonType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6e

    const/4 v4, 0x2

    if-eq v2, v4, :cond_59

    const/4 v4, 0x3

    if-eq v2, v4, :cond_45

    const/4 v4, 0x4

    if-ne v2, v4, :cond_34

    .line 3
    invoke-interface {p0}, Lorg/bson/BsonReader;->readDecimal128()Lorg/bson/types/Decimal128;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->intValue()I

    move-result v1

    .line 5
    new-instance v2, Lorg/bson/types/Decimal128;

    int-to-long v3, v1

    invoke-direct {v2, v3, v4}, Lorg/bson/types/Decimal128;-><init>(J)V

    invoke-virtual {p0, v2}, Lorg/bson/types/Decimal128;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_72

    .line 6
    :cond_2f
    invoke-static {v0, p0}, Lorg/bson/codecs/NumberCodecHelper;->invalidConversion(Ljava/lang/Class;Ljava/lang/Number;)Lorg/bson/BsonInvalidOperationException;

    move-result-object p0

    throw p0

    .line 7
    :cond_34
    new-instance p0, Lorg/bson/BsonInvalidOperationException;

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Invalid numeric type, found: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_45
    invoke-interface {p0}, Lorg/bson/BsonReader;->readDouble()D

    move-result-wide v1

    double-to-int p0, v1

    int-to-double v3, p0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_50

    goto :goto_63

    .line 9
    :cond_50
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/bson/codecs/NumberCodecHelper;->invalidConversion(Ljava/lang/Class;Ljava/lang/Number;)Lorg/bson/BsonInvalidOperationException;

    move-result-object p0

    throw p0

    .line 10
    :cond_59
    invoke-interface {p0}, Lorg/bson/BsonReader;->readInt64()J

    move-result-wide v1

    long-to-int p0, v1

    int-to-long v3, p0

    cmp-long v5, v1, v3

    if-nez v5, :cond_65

    :goto_63
    move v1, p0

    goto :goto_72

    .line 11
    :cond_65
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/bson/codecs/NumberCodecHelper;->invalidConversion(Ljava/lang/Class;Ljava/lang/Number;)Lorg/bson/BsonInvalidOperationException;

    move-result-object p0

    throw p0

    .line 12
    :cond_6e
    invoke-interface {p0}, Lorg/bson/BsonReader;->readInt32()I

    move-result v1

    :goto_72
    return v1
.end method

.method public static decodeLong(Lorg/bson/BsonReader;)J
    .registers 8

    .line 1
    const-class v0, Ljava/lang/Long;

    invoke-interface {p0}, Lorg/bson/BsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v1

    .line 2
    sget-object v2, Lorg/bson/codecs/NumberCodecHelper$1;->$SwitchMap$org$bson$BsonType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5e

    const/4 v4, 0x2

    if-eq v2, v4, :cond_59

    const/4 v4, 0x3

    if-eq v2, v4, :cond_44

    const/4 v4, 0x4

    if-ne v2, v4, :cond_33

    .line 3
    invoke-interface {p0}, Lorg/bson/BsonReader;->readDecimal128()Lorg/bson/types/Decimal128;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->longValue()J

    move-result-wide v1

    .line 5
    new-instance v3, Lorg/bson/types/Decimal128;

    invoke-direct {v3, v1, v2}, Lorg/bson/types/Decimal128;-><init>(J)V

    invoke-virtual {p0, v3}, Lorg/bson/types/Decimal128;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_63

    .line 6
    :cond_2e
    invoke-static {v0, p0}, Lorg/bson/codecs/NumberCodecHelper;->invalidConversion(Ljava/lang/Class;Ljava/lang/Number;)Lorg/bson/BsonInvalidOperationException;

    move-result-object p0

    throw p0

    .line 7
    :cond_33
    new-instance p0, Lorg/bson/BsonInvalidOperationException;

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Invalid numeric type, found: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_44
    invoke-interface {p0}, Lorg/bson/BsonReader;->readDouble()D

    move-result-wide v1

    double-to-long v3, v1

    long-to-double v5, v3

    cmpl-double p0, v1, v5

    if-nez p0, :cond_50

    move-wide v1, v3

    goto :goto_63

    .line 9
    :cond_50
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/bson/codecs/NumberCodecHelper;->invalidConversion(Ljava/lang/Class;Ljava/lang/Number;)Lorg/bson/BsonInvalidOperationException;

    move-result-object p0

    throw p0

    .line 10
    :cond_59
    invoke-interface {p0}, Lorg/bson/BsonReader;->readInt64()J

    move-result-wide v1

    goto :goto_63

    .line 11
    :cond_5e
    invoke-interface {p0}, Lorg/bson/BsonReader;->readInt32()I

    move-result p0

    int-to-long v1, p0

    :goto_63
    return-wide v1
.end method

.method private static invalidConversion(Ljava/lang/Class;Ljava/lang/Number;)Lorg/bson/BsonInvalidOperationException;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Number;",
            ")",
            "Lorg/bson/BsonInvalidOperationException;"
        }
    .end annotation

    new-instance v0, Lorg/bson/BsonInvalidOperationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "Could not convert `%s` to a %s without losing precision"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
