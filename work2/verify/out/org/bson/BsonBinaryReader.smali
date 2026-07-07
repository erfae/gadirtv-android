.class public Lorg/bson/BsonBinaryReader;
.super Lorg/bson/AbstractBsonReader;
.source "BsonBinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/BsonBinaryReader$Context;,
        Lorg/bson/BsonBinaryReader$Mark;
    }
.end annotation


# instance fields
.field private final bsonInput:Lorg/bson/io/BsonInput;

.field private mark:Lorg/bson/BsonBinaryReader$Mark;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 1
    new-instance v0, Lorg/bson/io/ByteBufferBsonInput;

    new-instance v1, Lorg/bson/ByteBufNIO;

    const-string v2, "byteBuffer"

    invoke-static {v2, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {v1, p1}, Lorg/bson/ByteBufNIO;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {v0, v1}, Lorg/bson/io/ByteBufferBsonInput;-><init>(Lorg/bson/ByteBuf;)V

    invoke-direct {p0, v0}, Lorg/bson/BsonBinaryReader;-><init>(Lorg/bson/io/BsonInput;)V

    return-void
.end method

.method public constructor <init>(Lorg/bson/io/BsonInput;)V
    .registers 8

    .line 2
    invoke-direct {p0}, Lorg/bson/AbstractBsonReader;-><init>()V

    if-eqz p1, :cond_17

    .line 3
    iput-object p1, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    .line 4
    new-instance p1, Lorg/bson/BsonBinaryReader$Context;

    const/4 v2, 0x0

    sget-object v3, Lorg/bson/BsonContextType;->TOP_LEVEL:Lorg/bson/BsonContextType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/bson/BsonBinaryReader$Context;-><init>(Lorg/bson/BsonBinaryReader;Lorg/bson/BsonBinaryReader$Context;Lorg/bson/BsonContextType;II)V

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    return-void

    .line 5
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bsonInput is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$200(Lorg/bson/BsonBinaryReader;)Lorg/bson/io/BsonInput;
    .registers 1

    iget-object p0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    return-object p0
.end method

.method private readSize()I
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readInt32()I

    move-result v0

    if-ltz v0, :cond_9

    return v0

    :cond_9
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Size %s is not valid because it is negative."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/bson/BsonSerializationException;

    invoke-direct {v1, v0}, Lorg/bson/BsonSerializationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 1

    invoke-super {p0}, Lorg/bson/AbstractBsonReader;->close()V

    return-void
.end method

.method public final doPeekBinarySize()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->mark()V

    .line 2
    invoke-direct {p0}, Lorg/bson/BsonBinaryReader;->readSize()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->reset()V

    return v0
.end method

.method public final doPeekBinarySubType()B
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->mark()V

    .line 2
    invoke-direct {p0}, Lorg/bson/BsonBinaryReader;->readSize()I

    .line 3
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readByte()B

    move-result v0

    .line 4
    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->reset()V

    return v0
.end method

.method public final doReadBinaryData()Lorg/bson/BsonBinary;
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/bson/BsonBinaryReader;->readSize()I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v1}, Lorg/bson/io/BsonInput;->readByte()B

    move-result v1

    .line 3
    sget-object v2, Lorg/bson/BsonBinarySubType;->OLD_BINARY:Lorg/bson/BsonBinarySubType;

    invoke-virtual {v2}, Lorg/bson/BsonBinarySubType;->getValue()B

    move-result v2

    if-ne v1, v2, :cond_27

    .line 4
    iget-object v2, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v2}, Lorg/bson/io/BsonInput;->readInt32()I

    move-result v2

    add-int/lit8 v3, v0, -0x4

    if-ne v2, v3, :cond_1f

    add-int/lit8 v0, v0, -0x4

    goto :goto_27

    .line 5
    :cond_1f
    new-instance v0, Lorg/bson/BsonSerializationException;

    const-string v1, "Binary sub type OldBinary has inconsistent sizes"

    invoke-direct {v0, v1}, Lorg/bson/BsonSerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_27
    :goto_27
    new-array v0, v0, [B

    .line 7
    iget-object v2, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v2, v0}, Lorg/bson/io/BsonInput;->readBytes([B)V

    .line 8
    new-instance v2, Lorg/bson/BsonBinary;

    invoke-direct {v2, v1, v0}, Lorg/bson/BsonBinary;-><init>(B[B)V

    return-object v2
.end method

.method public final doReadBoolean()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    if-ne v0, v2, :cond_d

    goto :goto_21

    .line 2
    :cond_d
    new-instance v3, Lorg/bson/BsonSerializationException;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Expected a boolean value but found %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bson/BsonSerializationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_21
    :goto_21
    if-ne v0, v2, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method public final doReadDBPointer()Lorg/bson/BsonDbPointer;
    .registers 4

    new-instance v0, Lorg/bson/BsonDbPointer;

    iget-object v1, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v1}, Lorg/bson/io/BsonInput;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v2}, Lorg/bson/io/BsonInput;->readObjectId()Lorg/bson/types/ObjectId;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bson/BsonDbPointer;-><init>(Ljava/lang/String;Lorg/bson/types/ObjectId;)V

    return-object v0
.end method

.method public final doReadDateTime()J
    .registers 3

    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public doReadDecimal128()Lorg/bson/types/Decimal128;
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readInt64()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v2}, Lorg/bson/io/BsonInput;->readInt64()J

    move-result-wide v2

    .line 3
    invoke-static {v2, v3, v0, v1}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object v0

    return-object v0
.end method

.method public final doReadDouble()D
    .registers 3

    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final doReadEndArray()V
    .registers 3

    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->getContext()Lorg/bson/BsonBinaryReader$Context;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v1}, Lorg/bson/io/BsonInput;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bson/BsonBinaryReader$Context;->popContext(I)Lorg/bson/BsonBinaryReader$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    return-void
.end method

.method public final doReadEndDocument()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->getContext()Lorg/bson/BsonBinaryReader$Context;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v1}, Lorg/bson/io/BsonInput;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bson/BsonBinaryReader$Context;->popContext(I)Lorg/bson/BsonBinaryReader$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->getContext()Lorg/bson/BsonBinaryReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonContextType;->JAVASCRIPT_WITH_SCOPE:Lorg/bson/BsonContextType;

    if-ne v0, v1, :cond_2e

    .line 3
    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->getContext()Lorg/bson/BsonBinaryReader$Context;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v1}, Lorg/bson/io/BsonInput;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bson/BsonBinaryReader$Context;->popContext(I)Lorg/bson/BsonBinaryReader$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    :cond_2e
    return-void
.end method

.method public final doReadInt32()I
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readInt32()I

    move-result v0

    return v0
.end method

.method public final doReadInt64()J
    .registers 3

    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final doReadJavaScript()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final doReadJavaScriptWithScope()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->getPosition()I

    move-result v5

    .line 2
    invoke-direct {p0}, Lorg/bson/BsonBinaryReader;->readSize()I

    move-result v6

    .line 3
    new-instance v0, Lorg/bson/BsonBinaryReader$Context;

    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->getContext()Lorg/bson/BsonBinaryReader$Context;

    move-result-object v3

    sget-object v4, Lorg/bson/BsonContextType;->JAVASCRIPT_WITH_SCOPE:Lorg/bson/BsonContextType;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/bson/BsonBinaryReader$Context;-><init>(Lorg/bson/BsonBinaryReader;Lorg/bson/BsonBinaryReader$Context;Lorg/bson/BsonContextType;II)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    .line 4
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final doReadMaxKey()V
    .registers 1

    return-void
.end method

.method public final doReadMinKey()V
    .registers 1

    return-void
.end method

.method public final doReadNull()V
    .registers 1

    return-void
.end method

.method public final doReadObjectId()Lorg/bson/types/ObjectId;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readObjectId()Lorg/bson/types/ObjectId;

    move-result-object v0

    return-object v0
.end method

.method public final doReadRegularExpression()Lorg/bson/BsonRegularExpression;
    .registers 4

    new-instance v0, Lorg/bson/BsonRegularExpression;

    iget-object v1, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v1}, Lorg/bson/io/BsonInput;->readCString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v2}, Lorg/bson/io/BsonInput;->readCString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bson/BsonRegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public doReadStartArray()V
    .registers 8

    .line 1
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->getPosition()I

    move-result v5

    .line 2
    invoke-direct {p0}, Lorg/bson/BsonBinaryReader;->readSize()I

    move-result v6

    .line 3
    new-instance v0, Lorg/bson/BsonBinaryReader$Context;

    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->getContext()Lorg/bson/BsonBinaryReader$Context;

    move-result-object v3

    sget-object v4, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/bson/BsonBinaryReader$Context;-><init>(Lorg/bson/BsonBinaryReader;Lorg/bson/BsonBinaryReader$Context;Lorg/bson/BsonContextType;II)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    return-void
.end method

.method public final doReadStartDocument()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->SCOPE_DOCUMENT:Lorg/bson/AbstractBsonReader$State;

    if-ne v0, v1, :cond_b

    .line 2
    sget-object v0, Lorg/bson/BsonContextType;->SCOPE_DOCUMENT:Lorg/bson/BsonContextType;

    goto :goto_d

    :cond_b
    sget-object v0, Lorg/bson/BsonContextType;->DOCUMENT:Lorg/bson/BsonContextType;

    :goto_d
    move-object v4, v0

    .line 3
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->getPosition()I

    move-result v5

    .line 4
    invoke-direct {p0}, Lorg/bson/BsonBinaryReader;->readSize()I

    move-result v6

    .line 5
    new-instance v0, Lorg/bson/BsonBinaryReader$Context;

    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->getContext()Lorg/bson/BsonBinaryReader$Context;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/bson/BsonBinaryReader$Context;-><init>(Lorg/bson/BsonBinaryReader;Lorg/bson/BsonBinaryReader$Context;Lorg/bson/BsonContextType;II)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    return-void
.end method

.method public final doReadString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final doReadSymbol()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final doReadTimestamp()Lorg/bson/BsonTimestamp;
    .registers 4

    new-instance v0, Lorg/bson/BsonTimestamp;

    iget-object v1, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v1}, Lorg/bson/io/BsonInput;->readInt64()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/bson/BsonTimestamp;-><init>(J)V

    return-object v0
.end method

.method public final doReadUndefined()V
    .registers 1

    return-void
.end method

.method public final doSkipName()V
    .registers 1

    return-void
.end method

.method public final doSkipValue()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->isClosed()Z

    move-result v0

    if-nez v0, :cond_90

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->VALUE:Lorg/bson/AbstractBsonReader$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_85

    .line 3
    sget-object v0, Lorg/bson/BsonBinaryReader$1;->$SwitchMap$org$bson$BsonType:[I

    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_98

    .line 4
    new-instance v0, Lorg/bson/BSONException;

    const-string v1, "Unexpected BSON type: "

    .line 5
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bson/BSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :pswitch_36
    invoke-direct {p0}, Lorg/bson/BsonBinaryReader;->readSize()I

    move-result v0

    add-int/lit8 v2, v0, 0xc

    goto :goto_7a

    .line 8
    :pswitch_3d
    invoke-direct {p0}, Lorg/bson/BsonBinaryReader;->readSize()I

    move-result v2

    goto :goto_7a

    .line 9
    :pswitch_42
    invoke-direct {p0}, Lorg/bson/BsonBinaryReader;->readSize()I

    move-result v2

    goto :goto_7a

    .line 10
    :pswitch_47
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->skipCString()V

    .line 11
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->skipCString()V

    goto :goto_55

    :pswitch_52
    const/16 v2, 0xc

    goto :goto_7a

    :goto_55
    :pswitch_55
    const/4 v2, 0x0

    goto :goto_7a

    .line 12
    :pswitch_57
    invoke-direct {p0}, Lorg/bson/BsonBinaryReader;->readSize()I

    move-result v0

    goto :goto_78

    .line 13
    :pswitch_5c
    invoke-direct {p0}, Lorg/bson/BsonBinaryReader;->readSize()I

    move-result v2

    goto :goto_7a

    :pswitch_61
    const/16 v2, 0x10

    goto :goto_7a

    :pswitch_64
    const/4 v2, 0x4

    goto :goto_7a

    .line 14
    :pswitch_66
    invoke-direct {p0}, Lorg/bson/BsonBinaryReader;->readSize()I

    move-result v0

    goto :goto_78

    :pswitch_6b
    const/16 v2, 0x8

    goto :goto_7a

    .line 15
    :pswitch_6e
    invoke-direct {p0}, Lorg/bson/BsonBinaryReader;->readSize()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_7a

    .line 16
    :pswitch_74
    invoke-direct {p0}, Lorg/bson/BsonBinaryReader;->readSize()I

    move-result v0

    :goto_78
    add-int/lit8 v2, v0, -0x4

    .line 17
    :goto_7a
    :pswitch_7a
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0, v2}, Lorg/bson/io/BsonInput;->skip(I)V

    .line 18
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    return-void

    :cond_85
    new-array v0, v2, [Lorg/bson/AbstractBsonReader$State;

    aput-object v1, v0, v3

    const-string v1, "skipValue"

    .line 19
    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonReader$State;)V

    const/4 v0, 0x0

    throw v0

    .line 20
    :cond_90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BSONBinaryWriter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_74
        :pswitch_6e
        :pswitch_7a
        :pswitch_6b
        :pswitch_66
        :pswitch_6b
        :pswitch_64
        :pswitch_6b
        :pswitch_61
        :pswitch_5c
        :pswitch_57
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_52
        :pswitch_47
        :pswitch_42
        :pswitch_3d
        :pswitch_6b
        :pswitch_55
        :pswitch_36
    .end packed-switch
.end method

.method public getBsonInput()Lorg/bson/io/BsonInput;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    return-object v0
.end method

.method public final bridge synthetic getContext()Lorg/bson/AbstractBsonReader$Context;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->getContext()Lorg/bson/BsonBinaryReader$Context;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Lorg/bson/BsonBinaryReader$Context;
    .registers 2

    .line 2
    invoke-super {p0}, Lorg/bson/AbstractBsonReader;->getContext()Lorg/bson/AbstractBsonReader$Context;

    move-result-object v0

    check-cast v0, Lorg/bson/BsonBinaryReader$Context;

    return-object v0
.end method

.method public getMark()Lorg/bson/BsonReaderMark;
    .registers 2

    new-instance v0, Lorg/bson/BsonBinaryReader$Mark;

    invoke-direct {v0, p0}, Lorg/bson/BsonBinaryReader$Mark;-><init>(Lorg/bson/BsonBinaryReader;)V

    return-object v0
.end method

.method public mark()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->mark:Lorg/bson/BsonBinaryReader$Mark;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Lorg/bson/BsonBinaryReader$Mark;

    invoke-direct {v0, p0}, Lorg/bson/BsonBinaryReader$Mark;-><init>(Lorg/bson/BsonBinaryReader;)V

    iput-object v0, p0, Lorg/bson/BsonBinaryReader;->mark:Lorg/bson/BsonBinaryReader$Mark;

    return-void

    .line 3
    :cond_c
    new-instance v0, Lorg/bson/BSONException;

    const-string v1, "A mark already exists; it needs to be reset before creating a new one"

    invoke-direct {v0, v1}, Lorg/bson/BSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBsonType()Lorg/bson/BsonType;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->isClosed()Z

    move-result v0

    if-nez v0, :cond_f1

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->INITIAL:Lorg/bson/AbstractBsonReader$State;

    if-eq v0, v1, :cond_e2

    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->DONE:Lorg/bson/AbstractBsonReader$State;

    if-eq v0, v1, :cond_e2

    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->SCOPE_DOCUMENT:Lorg/bson/AbstractBsonReader$State;

    if-ne v0, v1, :cond_20

    goto/16 :goto_e2

    .line 3
    :cond_20
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_d7

    .line 4
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readByte()B

    move-result v0

    .line 5
    invoke-static {v0}, Lorg/bson/BsonType;->findByValue(I)Lorg/bson/BsonType;

    move-result-object v1

    const/4 v4, 0x2

    if-eqz v1, :cond_bb

    .line 6
    invoke-virtual {p0, v1}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 7
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    const/4 v5, 0x3

    if-ne v0, v1, :cond_7e

    .line 8
    sget-object v0, Lorg/bson/BsonBinaryReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->getContext()Lorg/bson/BsonBinaryReader$Context;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v0, v0, v6

    if-eq v0, v3, :cond_78

    if-eq v0, v4, :cond_72

    if-ne v0, v5, :cond_5a

    goto :goto_72

    .line 9
    :cond_5a
    new-instance v0, Lorg/bson/BsonSerializationException;

    new-array v1, v3, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->getContext()Lorg/bson/BsonBinaryReader$Context;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "BSONType EndOfDocument is not valid when ContextType is %s."

    .line 11
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bson/BsonSerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_72
    :goto_72
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->END_OF_DOCUMENT:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    return-object v1

    .line 13
    :cond_78
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->END_OF_ARRAY:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    return-object v1

    .line 14
    :cond_7e
    sget-object v0, Lorg/bson/BsonBinaryReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    invoke-virtual {p0}, Lorg/bson/BsonBinaryReader;->getContext()Lorg/bson/BsonBinaryReader$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_ac

    if-eq v0, v4, :cond_9d

    if-ne v0, v5, :cond_95

    goto :goto_9d

    .line 15
    :cond_95
    new-instance v0, Lorg/bson/BSONException;

    const-string v1, "Unexpected ContextType."

    invoke-direct {v0, v1}, Lorg/bson/BSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_9d
    :goto_9d
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->readCString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentName(Ljava/lang/String;)V

    .line 17
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->NAME:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    goto :goto_b6

    .line 18
    :cond_ac
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->skipCString()V

    .line 19
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->VALUE:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    .line 20
    :goto_b6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v0

    return-object v0

    .line 21
    :cond_bb
    iget-object v1, p0, Lorg/bson/BsonBinaryReader;->bsonInput:Lorg/bson/io/BsonInput;

    invoke-interface {v1}, Lorg/bson/io/BsonInput;->readCString()Ljava/lang/String;

    move-result-object v1

    .line 22
    new-instance v5, Lorg/bson/BsonSerializationException;

    new-array v4, v4, [Ljava/lang/Object;

    .line 23
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    const-string v0, "Detected unknown BSON type \"\\x%x\" for fieldname \"%s\". Are you using the latest driver version?"

    .line 24
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/bson/BsonSerializationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d7
    new-array v0, v3, [Lorg/bson/AbstractBsonReader$State;

    aput-object v1, v0, v2

    const-string v1, "ReadBSONType"

    .line 25
    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonReader$State;)V

    const/4 v0, 0x0

    throw v0

    .line 26
    :cond_e2
    :goto_e2
    sget-object v0, Lorg/bson/BsonType;->DOCUMENT:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 27
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->VALUE:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    .line 28
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v0

    return-object v0

    .line 29
    :cond_f1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BSONBinaryWriter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/BsonBinaryReader;->mark:Lorg/bson/BsonBinaryReader$Mark;

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader$Mark;->reset()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/bson/BsonBinaryReader;->mark:Lorg/bson/BsonBinaryReader$Mark;

    return-void

    .line 4
    :cond_b
    new-instance v0, Lorg/bson/BSONException;

    const-string v1, "trying to reset a mark before creating it"

    invoke-direct {v0, v1}, Lorg/bson/BSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
