.class public Lorg/bson/BasicBSONEncoder;
.super Ljava/lang/Object;
.source "BasicBSONEncoder.java"

# interfaces
.implements Lorg/bson/BSONEncoder;


# instance fields
.field private bsonWriter:Lorg/bson/BsonBinaryWriter;

.field private outputBuffer:Lorg/bson/io/OutputBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isTopLevelDocument()Z
    .locals 1

    iget-object v0, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {v0}, Lorg/bson/BsonBinaryWriter;->getContext()Lorg/bson/BsonBinaryWriter$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonBinaryWriter$Context;->getParentContext()Lorg/bson/BsonBinaryWriter$Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static writeLongToArrayLittleEndian([BIJ)V
    .locals 5

    const-wide/16 v0, 0xff

    and-long v2, p2, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 1
    aput-byte v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    const/16 v3, 0x8

    shr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 2
    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x2

    const/16 v3, 0x10

    shr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 3
    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x3

    const/16 v3, 0x18

    shr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 4
    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x4

    const/16 v3, 0x20

    shr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 5
    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x5

    const/16 v3, 0x28

    shr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 6
    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x6

    const/16 v3, 0x30

    shr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 7
    aput-byte v3, p0, v2

    add-int/lit8 p1, p1, 0x7

    const/16 v2, 0x38

    shr-long/2addr p2, v2

    and-long/2addr p2, v0

    long-to-int p3, p2

    int-to-byte p2, p3

    .line 8
    aput-byte p2, p0, p1

    return-void
.end method


# virtual methods
.method public final _putObjectField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    const-string v0, "_transientFields"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\u0000"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "$where"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lorg/bson/types/Code;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/bson/types/Code;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {v0}, Lorg/bson/types/Code;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bson/AbstractBsonWriter;->writeJavaScript(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-static {p2}, Lorg/bson/BSON;->applyEncodingHooks(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p1}, Lorg/bson/AbstractBsonWriter;->writeNull()V

    goto/16 :goto_e

    .line 10
    :cond_2
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 11
    check-cast p2, Ljava/util/Date;

    .line 12
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/bson/AbstractBsonWriter;->writeDateTime(J)V

    goto/16 :goto_e

    .line 14
    :cond_3
    instance-of v0, p2, Lorg/bson/types/Decimal128;

    if-eqz v0, :cond_4

    .line 15
    check-cast p2, Lorg/bson/types/Decimal128;

    .line 16
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p1, p2}, Lorg/bson/AbstractBsonWriter;->writeDecimal128(Lorg/bson/types/Decimal128;)V

    goto/16 :goto_e

    .line 18
    :cond_4
    instance-of v0, p2, Ljava/lang/Number;

    const-string v1, "Can\'t serialize "

    if-eqz v0, :cond_b

    .line 19
    check-cast p2, Ljava/lang/Number;

    .line 20
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 21
    instance-of p1, p2, Ljava/lang/Integer;

    if-nez p1, :cond_a

    instance-of p1, p2, Ljava/lang/Short;

    if-nez p1, :cond_a

    instance-of p1, p2, Ljava/lang/Byte;

    if-nez p1, :cond_a

    instance-of p1, p2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_5

    goto :goto_2

    .line 22
    :cond_5
    instance-of p1, p2, Ljava/lang/Long;

    if-nez p1, :cond_9

    instance-of p1, p2, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz p1, :cond_6

    goto :goto_1

    .line 23
    :cond_6
    instance-of p1, p2, Ljava/lang/Float;

    if-nez p1, :cond_8

    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_7

    goto :goto_0

    .line 24
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_8
    :goto_0
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/bson/AbstractBsonWriter;->writeDouble(D)V

    goto/16 :goto_e

    .line 28
    :cond_9
    :goto_1
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/bson/AbstractBsonWriter;->writeInt64(J)V

    goto/16 :goto_e

    .line 29
    :cond_a
    :goto_2
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/bson/AbstractBsonWriter;->writeInt32(I)V

    goto/16 :goto_e

    .line 30
    :cond_b
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_c

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 32
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p1, p2}, Lorg/bson/AbstractBsonWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 34
    :cond_c
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p1, p2}, Lorg/bson/AbstractBsonWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 38
    :cond_d
    instance-of v0, p2, Lorg/bson/types/ObjectId;

    if-eqz v0, :cond_e

    .line 39
    check-cast p2, Lorg/bson/types/ObjectId;

    .line 40
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p1, p2}, Lorg/bson/AbstractBsonWriter;->writeObjectId(Lorg/bson/types/ObjectId;)V

    goto/16 :goto_e

    .line 42
    :cond_e
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 43
    check-cast p2, Ljava/lang/Boolean;

    .line 44
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/bson/AbstractBsonWriter;->writeBoolean(Z)V

    goto/16 :goto_e

    .line 46
    :cond_f
    instance-of v0, p2, Ljava/util/regex/Pattern;

    if-eqz v0, :cond_10

    .line 47
    check-cast p2, Ljava/util/regex/Pattern;

    .line 48
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    new-instance v0, Lorg/bson/BsonRegularExpression;

    invoke-virtual {p2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/regex/Pattern;->flags()I

    move-result p2

    invoke-static {p2}, Lorg/bson/BSON;->regexFlags(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lorg/bson/BsonRegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/bson/AbstractBsonWriter;->writeRegularExpression(Lorg/bson/BsonRegularExpression;)V

    goto/16 :goto_e

    .line 50
    :cond_10
    instance-of v0, p2, Ljava/lang/Iterable;

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 51
    check-cast p2, Ljava/lang/Iterable;

    .line 52
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p1}, Lorg/bson/AbstractBsonWriter;->writeStartArray()V

    .line 54
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 55
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/bson/BasicBSONEncoder;->_putObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 56
    :cond_11
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p1}, Lorg/bson/AbstractBsonWriter;->writeEndArray()V

    goto/16 :goto_e

    .line 57
    :cond_12
    instance-of v0, p2, Lorg/bson/BSONObject;

    if-eqz v0, :cond_13

    .line 58
    check-cast p2, Lorg/bson/BSONObject;

    .line 59
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p2}, Lorg/bson/BasicBSONEncoder;->putObject(Lorg/bson/BSONObject;)I

    goto/16 :goto_e

    .line 61
    :cond_13
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_15

    .line 62
    check-cast p2, Ljava/util/Map;

    .line 63
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p1}, Lorg/bson/AbstractBsonWriter;->writeStartDocument()V

    .line 65
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lorg/bson/BasicBSONEncoder;->_putObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 67
    :cond_14
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p1}, Lorg/bson/AbstractBsonWriter;->writeEndDocument()V

    goto/16 :goto_e

    .line 68
    :cond_15
    instance-of v0, p2, [B

    if-eqz v0, :cond_16

    .line 69
    check-cast p2, [B

    .line 70
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    new-instance v0, Lorg/bson/BsonBinary;

    invoke-direct {v0, p2}, Lorg/bson/BsonBinary;-><init>([B)V

    invoke-virtual {p1, v0}, Lorg/bson/AbstractBsonWriter;->writeBinaryData(Lorg/bson/BsonBinary;)V

    goto/16 :goto_e

    .line 72
    :cond_16
    instance-of v3, p2, Lorg/bson/types/Binary;

    if-eqz v3, :cond_17

    .line 73
    check-cast p2, Lorg/bson/types/Binary;

    .line 74
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    new-instance v0, Lorg/bson/BsonBinary;

    invoke-virtual {p2}, Lorg/bson/types/Binary;->getType()B

    move-result v1

    invoke-virtual {p2}, Lorg/bson/types/Binary;->getData()[B

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lorg/bson/BsonBinary;-><init>(B[B)V

    invoke-virtual {p1, v0}, Lorg/bson/AbstractBsonWriter;->writeBinaryData(Lorg/bson/BsonBinary;)V

    goto/16 :goto_e

    .line 76
    :cond_17
    instance-of v3, p2, Ljava/util/UUID;

    if-eqz v3, :cond_18

    .line 77
    check-cast p2, Ljava/util/UUID;

    .line 78
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 79
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {p1, v2, v0, v1}, Lorg/bson/BasicBSONEncoder;->writeLongToArrayLittleEndian([BIJ)V

    .line 80
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    const/16 p2, 0x8

    invoke-static {p1, p2, v0, v1}, Lorg/bson/BasicBSONEncoder;->writeLongToArrayLittleEndian([BIJ)V

    .line 81
    iget-object p2, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    new-instance v0, Lorg/bson/BsonBinary;

    sget-object v1, Lorg/bson/BsonBinarySubType;->UUID_LEGACY:Lorg/bson/BsonBinarySubType;

    invoke-direct {v0, v1, p1}, Lorg/bson/BsonBinary;-><init>(Lorg/bson/BsonBinarySubType;[B)V

    invoke-virtual {p2, v0}, Lorg/bson/AbstractBsonWriter;->writeBinaryData(Lorg/bson/BsonBinary;)V

    goto/16 :goto_e

    .line 82
    :cond_18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 83
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p1}, Lorg/bson/AbstractBsonWriter;->writeStartArray()V

    .line 85
    instance-of p1, p2, [I

    if-eqz p1, :cond_19

    .line 86
    check-cast p2, [I

    array-length p1, p2

    :goto_5
    if-ge v2, p1, :cond_21

    aget v0, p2, v2

    .line 87
    iget-object v1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {v1, v0}, Lorg/bson/AbstractBsonWriter;->writeInt32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 88
    :cond_19
    instance-of p1, p2, [J

    if-eqz p1, :cond_1a

    .line 89
    check-cast p2, [J

    array-length p1, p2

    :goto_6
    if-ge v2, p1, :cond_21

    aget-wide v0, p2, v2

    .line 90
    iget-object v3, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {v3, v0, v1}, Lorg/bson/AbstractBsonWriter;->writeInt64(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 91
    :cond_1a
    instance-of p1, p2, [F

    if-eqz p1, :cond_1b

    .line 92
    check-cast p2, [F

    array-length p1, p2

    :goto_7
    if-ge v2, p1, :cond_21

    aget v0, p2, v2

    .line 93
    iget-object v1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    float-to-double v3, v0

    invoke-virtual {v1, v3, v4}, Lorg/bson/AbstractBsonWriter;->writeDouble(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 94
    :cond_1b
    instance-of p1, p2, [S

    if-eqz p1, :cond_1c

    .line 95
    check-cast p2, [S

    array-length p1, p2

    :goto_8
    if-ge v2, p1, :cond_21

    aget-short v0, p2, v2

    .line 96
    iget-object v1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {v1, v0}, Lorg/bson/AbstractBsonWriter;->writeInt32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1c
    if-eqz v0, :cond_1d

    .line 97
    check-cast p2, [B

    array-length p1, p2

    :goto_9
    if-ge v2, p1, :cond_21

    aget-byte v0, p2, v2

    .line 98
    iget-object v1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {v1, v0}, Lorg/bson/AbstractBsonWriter;->writeInt32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 99
    :cond_1d
    instance-of p1, p2, [D

    if-eqz p1, :cond_1e

    .line 100
    check-cast p2, [D

    array-length p1, p2

    :goto_a
    if-ge v2, p1, :cond_21

    aget-wide v0, p2, v2

    .line 101
    iget-object v3, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {v3, v0, v1}, Lorg/bson/AbstractBsonWriter;->writeDouble(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 102
    :cond_1e
    instance-of p1, p2, [Z

    if-eqz p1, :cond_1f

    .line 103
    check-cast p2, [Z

    array-length p1, p2

    :goto_b
    if-ge v2, p1, :cond_21

    aget-boolean v0, p2, v2

    .line 104
    iget-object v1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {v1, v0}, Lorg/bson/AbstractBsonWriter;->writeBoolean(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 105
    :cond_1f
    instance-of p1, p2, [Ljava/lang/String;

    if-eqz p1, :cond_20

    .line 106
    check-cast p2, [Ljava/lang/String;

    array-length p1, p2

    :goto_c
    if-ge v2, p1, :cond_21

    aget-object v0, p2, v2

    .line 107
    iget-object v1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {v1, v0}, Lorg/bson/AbstractBsonWriter;->writeString(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 108
    :cond_20
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    :goto_d
    if-ge v2, p1, :cond_21

    .line 109
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/bson/BasicBSONEncoder;->_putObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 110
    :cond_21
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p1}, Lorg/bson/AbstractBsonWriter;->writeEndArray()V

    goto/16 :goto_e

    .line 111
    :cond_22
    instance-of v0, p2, Lorg/bson/types/Symbol;

    if-eqz v0, :cond_23

    .line 112
    check-cast p2, Lorg/bson/types/Symbol;

    .line 113
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p2}, Lorg/bson/types/Symbol;->getSymbol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bson/AbstractBsonWriter;->writeSymbol(Ljava/lang/String;)V

    goto :goto_e

    .line 115
    :cond_23
    instance-of v0, p2, Lorg/bson/types/BSONTimestamp;

    if-eqz v0, :cond_24

    .line 116
    check-cast p2, Lorg/bson/types/BSONTimestamp;

    .line 117
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    new-instance v0, Lorg/bson/BsonTimestamp;

    invoke-virtual {p2}, Lorg/bson/types/BSONTimestamp;->getTime()I

    move-result v1

    invoke-virtual {p2}, Lorg/bson/types/BSONTimestamp;->getInc()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lorg/bson/BsonTimestamp;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/bson/AbstractBsonWriter;->writeTimestamp(Lorg/bson/BsonTimestamp;)V

    goto :goto_e

    .line 119
    :cond_24
    instance-of v0, p2, Lorg/bson/types/CodeWScope;

    if-eqz v0, :cond_25

    .line 120
    check-cast p2, Lorg/bson/types/CodeWScope;

    .line 121
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p2}, Lorg/bson/types/Code;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bson/AbstractBsonWriter;->writeJavaScriptWithScope(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Lorg/bson/types/CodeWScope;->getScope()Lorg/bson/BSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putObject(Lorg/bson/BSONObject;)I

    goto :goto_e

    .line 124
    :cond_25
    instance-of v0, p2, Lorg/bson/types/Code;

    if-eqz v0, :cond_26

    .line 125
    check-cast p2, Lorg/bson/types/Code;

    .line 126
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p2}, Lorg/bson/types/Code;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bson/AbstractBsonWriter;->writeJavaScript(Ljava/lang/String;)V

    goto :goto_e

    .line 128
    :cond_26
    instance-of v0, p2, Lorg/bson/types/MinKey;

    if-eqz v0, :cond_27

    .line 129
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p1}, Lorg/bson/AbstractBsonWriter;->writeMinKey()V

    goto :goto_e

    .line 131
    :cond_27
    instance-of v0, p2, Lorg/bson/types/MaxKey;

    if-eqz v0, :cond_28

    .line 132
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putName(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p1}, Lorg/bson/AbstractBsonWriter;->writeMaxKey()V

    :goto_e
    return-void

    .line 134
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 135
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_29
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Document field names can\'t have a NULL character. (Bad Key: \'"

    const-string v1, "\')"

    .line 138
    invoke-static {v0, p1, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public done()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {v0}, Lorg/bson/BsonBinaryWriter;->close()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    return-void
.end method

.method public encode(Lorg/bson/BSONObject;)[B
    .locals 1

    .line 1
    new-instance v0, Lorg/bson/io/BasicOutputBuffer;

    invoke-direct {v0}, Lorg/bson/io/BasicOutputBuffer;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lorg/bson/BasicBSONEncoder;->set(Lorg/bson/io/OutputBuffer;)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/BasicBSONEncoder;->putObject(Lorg/bson/BSONObject;)I

    .line 4
    invoke-virtual {p0}, Lorg/bson/BasicBSONEncoder;->done()V

    .line 5
    invoke-virtual {v0}, Lorg/bson/io/OutputBuffer;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public final putName(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {v0}, Lorg/bson/AbstractBsonWriter;->getState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->NAME:Lorg/bson/AbstractBsonWriter$State;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {v0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public putObject(Lorg/bson/BSONObject;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/bson/BasicBSONEncoder;->outputBuffer:Lorg/bson/io/OutputBuffer;

    .line 2
    invoke-interface {v0}, Lorg/bson/io/BsonOutput;->getPosition()I

    move-result v0

    .line 3
    iget-object v1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {v1}, Lorg/bson/AbstractBsonWriter;->writeStartDocument()V

    .line 4
    invoke-direct {p0}, Lorg/bson/BasicBSONEncoder;->isTopLevelDocument()Z

    move-result v1

    const-string v2, "_id"

    if-eqz v1, :cond_0

    invoke-interface {p1, v2}, Lorg/bson/BSONObject;->containsField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1, v2}, Lorg/bson/BSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/bson/BasicBSONEncoder;->_putObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-interface {p1}, Lorg/bson/BSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lorg/bson/BasicBSONEncoder;->isTopLevelDocument()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1, v3}, Lorg/bson/BSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/bson/BasicBSONEncoder;->_putObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    invoke-virtual {p1}, Lorg/bson/AbstractBsonWriter;->writeEndDocument()V

    .line 10
    iget-object p1, p0, Lorg/bson/BasicBSONEncoder;->outputBuffer:Lorg/bson/io/OutputBuffer;

    .line 11
    invoke-interface {p1}, Lorg/bson/io/BsonOutput;->getPosition()I

    move-result p1

    sub-int/2addr p1, v0

    return p1
.end method

.method public set(Lorg/bson/io/OutputBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lorg/bson/BasicBSONEncoder;->outputBuffer:Lorg/bson/io/OutputBuffer;

    .line 3
    new-instance v0, Lorg/bson/BsonBinaryWriter;

    invoke-direct {v0, p1}, Lorg/bson/BsonBinaryWriter;-><init>(Lorg/bson/io/BsonOutput;)V

    iput-object v0, p0, Lorg/bson/BasicBSONEncoder;->bsonWriter:Lorg/bson/BsonBinaryWriter;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Performing another operation at this moment"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
