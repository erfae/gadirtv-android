.class public final Lorg/bson/RawBsonDocument;
.super Lorg/bson/BsonDocument;
.source "RawBsonDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/RawBsonDocument$SerializationProxy;
    }
.end annotation


# static fields
.field private static final MIN_BSON_DOCUMENT_SIZE:I = 0x5

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bytes:[B

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/bson/codecs/Codec;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/bson/codecs/Codec<",
            "TT;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lorg/bson/BsonDocument;-><init>()V

    const-string v0, "document"

    .line 12
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "codec"

    .line 13
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Lorg/bson/io/BasicOutputBuffer;

    invoke-direct {v0}, Lorg/bson/io/BasicOutputBuffer;-><init>()V

    .line 15
    new-instance v1, Lorg/bson/BsonBinaryWriter;

    invoke-direct {v1, v0}, Lorg/bson/BsonBinaryWriter;-><init>(Lorg/bson/io/BsonOutput;)V

    .line 16
    :try_start_17
    invoke-static {}, Lorg/bson/codecs/EncoderContext;->builder()Lorg/bson/codecs/EncoderContext$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bson/codecs/EncoderContext$Builder;->build()Lorg/bson/codecs/EncoderContext;

    move-result-object v2

    invoke-interface {p2, v1, p1, v2}, Lorg/bson/codecs/Encoder;->encode(Lorg/bson/BsonWriter;Ljava/lang/Object;Lorg/bson/codecs/EncoderContext;)V

    .line 17
    invoke-virtual {v0}, Lorg/bson/io/BasicOutputBuffer;->getInternalBuffer()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bson/RawBsonDocument;->bytes:[B

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lorg/bson/RawBsonDocument;->offset:I

    .line 19
    invoke-virtual {v0}, Lorg/bson/io/BasicOutputBuffer;->getPosition()I

    move-result p1

    iput p1, p0, Lorg/bson/RawBsonDocument;->length:I
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_35

    .line 20
    invoke-virtual {v1}, Lorg/bson/BsonBinaryWriter;->close()V

    return-void

    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Lorg/bson/BsonBinaryWriter;->close()V

    .line 21
    throw p1
.end method

.method public constructor <init>([B)V
    .registers 4

    const-string v0, "bytes"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length p1, p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/bson/RawBsonDocument;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 8

    .line 2
    invoke-direct {p0}, Lorg/bson/BsonDocument;-><init>()V

    const-string v0, "bytes"

    .line 3
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    const-string v3, "offset >= 0"

    .line 4
    invoke-static {v3, v2}, Lorg/bson/assertions/Assertions;->isTrueArgument(Ljava/lang/String;Z)V

    .line 5
    array-length v2, p1

    if-ge p2, v2, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    const-string v3, "offset < bytes.length"

    invoke-static {v3, v2}, Lorg/bson/assertions/Assertions;->isTrueArgument(Ljava/lang/String;Z)V

    .line 6
    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt p3, v2, :cond_25

    const/4 v2, 0x1

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    const-string v3, "length <= bytes.length - offset"

    invoke-static {v3, v2}, Lorg/bson/assertions/Assertions;->isTrueArgument(Ljava/lang/String;Z)V

    const/4 v2, 0x5

    if-lt p3, v2, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    const-string v1, "length >= 5"

    .line 7
    invoke-static {v1, v0}, Lorg/bson/assertions/Assertions;->isTrueArgument(Ljava/lang/String;Z)V

    .line 8
    iput-object p1, p0, Lorg/bson/RawBsonDocument;->bytes:[B

    .line 9
    iput p2, p0, Lorg/bson/RawBsonDocument;->offset:I

    .line 10
    iput p3, p0, Lorg/bson/RawBsonDocument;->length:I

    return-void
.end method

.method private createReader()Lorg/bson/BsonBinaryReader;
    .registers 4

    new-instance v0, Lorg/bson/BsonBinaryReader;

    new-instance v1, Lorg/bson/io/ByteBufferBsonInput;

    invoke-virtual {p0}, Lorg/bson/RawBsonDocument;->getByteBuffer()Lorg/bson/ByteBuf;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bson/io/ByteBufferBsonInput;-><init>(Lorg/bson/ByteBuf;)V

    invoke-direct {v0, v1}, Lorg/bson/BsonBinaryReader;-><init>(Lorg/bson/io/BsonInput;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/bson/RawBsonDocument;
    .registers 3

    const-string v0, "json"

    .line 1
    invoke-static {v0, p0}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lorg/bson/codecs/RawBsonDocumentCodec;

    invoke-direct {v0}, Lorg/bson/codecs/RawBsonDocumentCodec;-><init>()V

    new-instance v1, Lorg/bson/json/JsonReader;

    invoke-direct {v1, p0}, Lorg/bson/json/JsonReader;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/bson/codecs/DecoderContext;->builder()Lorg/bson/codecs/DecoderContext$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bson/codecs/DecoderContext$Builder;->build()Lorg/bson/codecs/DecoderContext;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/bson/codecs/RawBsonDocumentCodec;->decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Lorg/bson/RawBsonDocument;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Proxy required"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private toBsonDocument()Lorg/bson/BsonDocument;
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/bson/RawBsonDocument;->createReader()Lorg/bson/BsonBinaryReader;

    move-result-object v0

    .line 2
    :try_start_4
    new-instance v1, Lorg/bson/codecs/BsonDocumentCodec;

    invoke-direct {v1}, Lorg/bson/codecs/BsonDocumentCodec;-><init>()V

    invoke-static {}, Lorg/bson/codecs/DecoderContext;->builder()Lorg/bson/codecs/DecoderContext$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bson/codecs/DecoderContext$Builder;->build()Lorg/bson/codecs/DecoderContext;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/bson/codecs/BsonDocumentCodec;->decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Lorg/bson/BsonDocument;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 3
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    return-object v1

    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    .line 4
    throw v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lorg/bson/RawBsonDocument$SerializationProxy;

    iget-object v1, p0, Lorg/bson/RawBsonDocument;->bytes:[B

    iget v2, p0, Lorg/bson/RawBsonDocument;->offset:I

    iget v3, p0, Lorg/bson/RawBsonDocument;->length:I

    invoke-direct {v0, v1, v2, v3}, Lorg/bson/RawBsonDocument$SerializationProxy;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/String;Lorg/bson/BsonValue;)Lorg/bson/BsonDocument;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "RawBsonDocument instances are immutable"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RawBsonDocument instances are immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/bson/RawBsonDocument;->clone()Lorg/bson/BsonDocument;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bson/BsonDocument;
    .registers 5

    .line 2
    new-instance v0, Lorg/bson/RawBsonDocument;

    iget-object v1, p0, Lorg/bson/RawBsonDocument;->bytes:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget v2, p0, Lorg/bson/RawBsonDocument;->offset:I

    iget v3, p0, Lorg/bson/RawBsonDocument;->length:I

    invoke-direct {v0, v1, v2, v3}, Lorg/bson/RawBsonDocument;-><init>([BII)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 5

    if-eqz p1, :cond_31

    .line 1
    invoke-direct {p0}, Lorg/bson/RawBsonDocument;->createReader()Lorg/bson/BsonBinaryReader;

    move-result-object v0

    .line 2
    :try_start_6
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    .line 3
    :goto_9
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v1, v2, :cond_24

    .line 4
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_2c

    if-eqz v1, :cond_20

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    return p1

    .line 6
    :cond_20
    :try_start_20
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->skipValue()V

    goto :goto_9

    .line 7
    :cond_24
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readEndDocument()V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 8
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    const/4 p1, 0x0

    return p1

    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    .line 9
    throw p1

    .line 10
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/bson/RawBsonDocument;->createReader()Lorg/bson/BsonBinaryReader;

    move-result-object v0

    .line 2
    :try_start_4
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    .line 3
    :cond_7
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v1, v2, :cond_23

    .line 4
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->skipName()V

    .line 5
    iget-object v1, p0, Lorg/bson/RawBsonDocument;->bytes:[B

    invoke-static {v1, v0}, Lorg/bson/RawBsonValueHelper;->decode([BLorg/bson/BsonBinaryReader;)Lorg/bson/BsonValue;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_2b

    if-eqz v1, :cond_7

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    return p1

    .line 7
    :cond_23
    :try_start_23
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readEndDocument()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    .line 8
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    const/4 p1, 0x0

    return p1

    :catchall_2b
    move-exception p1

    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    .line 9
    throw p1
.end method

.method public decode(Lorg/bson/codecs/Codec;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bson/codecs/Codec<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/RawBsonDocument;->decode(Lorg/bson/codecs/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/bson/codecs/Decoder;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bson/codecs/Decoder<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/bson/RawBsonDocument;->createReader()Lorg/bson/BsonBinaryReader;

    move-result-object v0

    .line 3
    :try_start_4
    invoke-static {}, Lorg/bson/codecs/DecoderContext;->builder()Lorg/bson/codecs/DecoderContext$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/codecs/DecoderContext$Builder;->build()Lorg/bson/codecs/DecoderContext;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/bson/codecs/Decoder;->decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 4
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    return-object p1

    :catchall_14
    move-exception p1

    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    .line 5
    throw p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lorg/bson/BsonValue;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/bson/RawBsonDocument;->toBsonDocument()Lorg/bson/BsonDocument;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonDocument;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0}, Lorg/bson/RawBsonDocument;->toBsonDocument()Lorg/bson/BsonDocument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bson/BsonDocument;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/RawBsonDocument;->get(Ljava/lang/Object;)Lorg/bson/BsonValue;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lorg/bson/BsonValue;
    .registers 5

    const-string v0, "key"

    .line 2
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lorg/bson/RawBsonDocument;->createReader()Lorg/bson/BsonBinaryReader;

    move-result-object v0

    .line 4
    :try_start_9
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    .line 5
    :goto_c
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v1, v2, :cond_2c

    .line 6
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 7
    iget-object p1, p0, Lorg/bson/RawBsonDocument;->bytes:[B

    invoke-static {p1, v0}, Lorg/bson/RawBsonValueHelper;->decode([BLorg/bson/BsonBinaryReader;)Lorg/bson/BsonValue;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_34

    .line 8
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    return-object p1

    .line 9
    :cond_28
    :try_start_28
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->skipValue()V

    goto :goto_c

    .line 10
    :cond_2c
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readEndDocument()V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_34

    .line 11
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    const/4 p1, 0x0

    return-object p1

    :catchall_34
    move-exception p1

    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    .line 12
    throw p1
.end method

.method public getByteBuffer()Lorg/bson/ByteBuf;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/RawBsonDocument;->bytes:[B

    iget v1, p0, Lorg/bson/RawBsonDocument;->offset:I

    iget v2, p0, Lorg/bson/RawBsonDocument;->length:I

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    new-instance v1, Lorg/bson/ByteBufNIO;

    invoke-direct {v1, v0}, Lorg/bson/ByteBufNIO;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method

.method public getFirstKey()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/bson/RawBsonDocument;->createReader()Lorg/bson/BsonBinaryReader;

    move-result-object v0

    .line 2
    :try_start_4
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readStartDocument()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_15

    .line 3
    :try_start_7
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readName()Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Lorg/bson/BsonInvalidOperationException; {:try_start_7 .. :try_end_b} :catch_f
    .catchall {:try_start_7 .. :try_end_b} :catchall_15

    .line 4
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    return-object v1

    .line 5
    :catch_f
    :try_start_f
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v1

    .line 6
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    .line 7
    throw v1
.end method

.method public hashCode()I
    .registers 2

    invoke-direct {p0}, Lorg/bson/RawBsonDocument;->toBsonDocument()Lorg/bson/BsonDocument;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonDocument;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/bson/RawBsonDocument;->createReader()Lorg/bson/BsonBinaryReader;

    move-result-object v0

    .line 2
    :try_start_4
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    .line 3
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_1c

    if-eq v1, v2, :cond_14

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    return v1

    .line 5
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readEndDocument()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1c

    .line 6
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    const/4 v0, 0x1

    return v0

    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    .line 7
    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/bson/RawBsonDocument;->toBsonDocument()Lorg/bson/BsonDocument;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonDocument;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lorg/bson/BsonValue;

    invoke-virtual {p0, p1, p2}, Lorg/bson/RawBsonDocument;->put(Ljava/lang/String;Lorg/bson/BsonValue;)Lorg/bson/BsonValue;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Lorg/bson/BsonValue;)Lorg/bson/BsonValue;
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "RawBsonDocument instances are immutable"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Lorg/bson/BsonValue;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "RawBsonDocument instances are immutable"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/RawBsonDocument;->remove(Ljava/lang/Object;)Lorg/bson/BsonValue;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lorg/bson/BsonValue;
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "RawBsonDocument instances are immutable"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/bson/RawBsonDocument;->createReader()Lorg/bson/BsonBinaryReader;

    move-result-object v0

    .line 2
    :try_start_4
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    const/4 v1, 0x0

    .line 3
    :goto_8
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v2

    sget-object v3, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v2, v3, :cond_19

    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readName()Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->skipValue()V

    goto :goto_8

    .line 6
    :cond_19
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readEndDocument()V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_20

    .line 7
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    return v1

    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    .line 8
    throw v1
.end method

.method public toJson()Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Lorg/bson/json/JsonWriterSettings;

    invoke-direct {v0}, Lorg/bson/json/JsonWriterSettings;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bson/RawBsonDocument;->toJson(Lorg/bson/json/JsonWriterSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Lorg/bson/json/JsonWriterSettings;)Ljava/lang/String;
    .registers 5

    .line 2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    new-instance v1, Lorg/bson/codecs/RawBsonDocumentCodec;

    invoke-direct {v1}, Lorg/bson/codecs/RawBsonDocumentCodec;-><init>()V

    new-instance v2, Lorg/bson/json/JsonWriter;

    invoke-direct {v2, v0, p1}, Lorg/bson/json/JsonWriter;-><init>(Ljava/io/Writer;Lorg/bson/json/JsonWriterSettings;)V

    invoke-static {}, Lorg/bson/codecs/EncoderContext;->builder()Lorg/bson/codecs/EncoderContext$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/codecs/EncoderContext$Builder;->build()Lorg/bson/codecs/EncoderContext;

    move-result-object p1

    invoke-virtual {v1, v2, p0, p1}, Lorg/bson/codecs/RawBsonDocumentCodec;->encode(Lorg/bson/BsonWriter;Lorg/bson/RawBsonDocument;Lorg/bson/codecs/EncoderContext;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/bson/BsonValue;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/bson/RawBsonDocument;->toBsonDocument()Lorg/bson/BsonDocument;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonDocument;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
