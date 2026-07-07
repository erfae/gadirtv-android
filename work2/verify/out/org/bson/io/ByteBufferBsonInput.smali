.class public Lorg/bson/io/ByteBufferBsonInput;
.super Ljava/lang/Object;
.source "ByteBufferBsonInput.java"

# interfaces
.implements Lorg/bson/io/BsonInput;


# static fields
.field private static final ONE_BYTE_ASCII_STRINGS:[Ljava/lang/String;

.field private static final UTF8_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private buffer:Lorg/bson/ByteBuf;

.field private mark:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/bson/io/ByteBufferBsonInput;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    sput-object v0, Lorg/bson/io/ByteBufferBsonInput;->ONE_BYTE_ASCII_STRINGS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    :goto_f
    sget-object v1, Lorg/bson/io/ByteBufferBsonInput;->ONE_BYTE_ASCII_STRINGS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1e

    int-to-char v2, v0

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1e
    return-void
.end method

.method public constructor <init>(Lorg/bson/ByteBuf;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/bson/io/ByteBufferBsonInput;->mark:I

    if-eqz p1, :cond_10

    .line 3
    iput-object p1, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    .line 4
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p1, v0}, Lorg/bson/ByteBuf;->order(Ljava/nio/ByteOrder;)Lorg/bson/ByteBuf;

    return-void

    .line 5
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "buffer can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lorg/bson/io/ByteBufferBsonInput;)Lorg/bson/ByteBuf;
    .registers 1

    iget-object p0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/bson/io/ByteBufferBsonInput;)V
    .registers 1

    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    return-void
.end method

.method private ensureAvailable(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v0}, Lorg/bson/ByteBuf;->remaining()I

    move-result v0

    if-lt v0, p1, :cond_9

    return-void

    .line 2
    :cond_9
    new-instance v0, Lorg/bson/BsonSerializationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v2}, Lorg/bson/ByteBuf;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "While decoding a BSON document %d bytes were required, but only %d remain"

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/BsonSerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureOpen()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readString(I)Ljava/lang/String;
    .registers 4

    const-string v0, "Found a BSON string that is not null-terminated"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_27

    .line 7
    invoke-virtual {p0}, Lorg/bson/io/ByteBufferBsonInput;->readByte()B

    move-result p1

    .line 8
    invoke-virtual {p0}, Lorg/bson/io/ByteBufferBsonInput;->readByte()B

    move-result v1

    if-nez v1, :cond_21

    if-gez p1, :cond_1c

    .line 9
    sget-object p1, Lorg/bson/io/ByteBufferBsonInput;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->replacement()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1c
    sget-object v0, Lorg/bson/io/ByteBufferBsonInput;->ONE_BYTE_ASCII_STRINGS:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 11
    :cond_21
    new-instance p1, Lorg/bson/BsonSerializationException;

    invoke-direct {p1, v0}, Lorg/bson/BsonSerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    add-int/lit8 p1, p1, -0x1

    .line 12
    new-array p1, p1, [B

    .line 13
    invoke-virtual {p0, p1}, Lorg/bson/io/ByteBufferBsonInput;->readBytes([B)V

    .line 14
    invoke-virtual {p0}, Lorg/bson/io/ByteBufferBsonInput;->readByte()B

    move-result v1

    if-nez v1, :cond_3c

    .line 15
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/bson/io/ByteBufferBsonInput;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 16
    :cond_3c
    new-instance p1, Lorg/bson/BsonSerializationException;

    invoke-direct {p1, v0}, Lorg/bson/BsonSerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readUntilNullByte()V
    .registers 2

    :goto_0
    invoke-virtual {p0}, Lorg/bson/io/ByteBufferBsonInput;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v0}, Lorg/bson/ByteBuf;->release()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    return-void
.end method

.method public getMark(I)Lorg/bson/io/BsonInputMark;
    .registers 2

    new-instance p1, Lorg/bson/io/ByteBufferBsonInput$1;

    invoke-direct {p1, p0}, Lorg/bson/io/ByteBufferBsonInput$1;-><init>(Lorg/bson/io/ByteBufferBsonInput;)V

    return-object p1
.end method

.method public getPosition()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    .line 2
    iget-object v0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v0}, Lorg/bson/ByteBuf;->position()I

    move-result v0

    return v0
.end method

.method public hasRemaining()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    .line 2
    iget-object v0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v0}, Lorg/bson/ByteBuf;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public mark(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    .line 2
    iget-object p1, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {p1}, Lorg/bson/ByteBuf;->position()I

    move-result p1

    iput p1, p0, Lorg/bson/io/ByteBufferBsonInput;->mark:I

    return-void
.end method

.method public readByte()B
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lorg/bson/io/ByteBufferBsonInput;->ensureAvailable(I)V

    .line 3
    iget-object v0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v0}, Lorg/bson/ByteBuf;->get()B

    move-result v0

    return v0
.end method

.method public readBytes([B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    .line 2
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/bson/io/ByteBufferBsonInput;->ensureAvailable(I)V

    .line 3
    iget-object v0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v0, p1}, Lorg/bson/ByteBuf;->get([B)Lorg/bson/ByteBuf;

    return-void
.end method

.method public readBytes([BII)V
    .registers 5

    .line 4
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    .line 5
    invoke-direct {p0, p3}, Lorg/bson/io/ByteBufferBsonInput;->ensureAvailable(I)V

    .line 6
    iget-object v0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v0, p1, p2, p3}, Lorg/bson/ByteBuf;->get([BII)Lorg/bson/ByteBuf;

    return-void
.end method

.method public readCString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    .line 2
    iget-object v0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v0}, Lorg/bson/ByteBuf;->position()I

    move-result v0

    .line 3
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->readUntilNullByte()V

    .line 4
    iget-object v1, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v1}, Lorg/bson/ByteBuf;->position()I

    move-result v1

    sub-int/2addr v1, v0

    .line 5
    iget-object v2, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v2, v0}, Lorg/bson/ByteBuf;->position(I)Lorg/bson/ByteBuf;

    .line 6
    invoke-direct {p0, v1}, Lorg/bson/io/ByteBufferBsonInput;->readString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readDouble()D
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    const/16 v0, 0x8

    .line 2
    invoke-direct {p0, v0}, Lorg/bson/io/ByteBufferBsonInput;->ensureAvailable(I)V

    .line 3
    iget-object v0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v0}, Lorg/bson/ByteBuf;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readInt32()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lorg/bson/io/ByteBufferBsonInput;->ensureAvailable(I)V

    .line 3
    iget-object v0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v0}, Lorg/bson/ByteBuf;->getInt()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    const/16 v0, 0x8

    .line 2
    invoke-direct {p0, v0}, Lorg/bson/io/ByteBufferBsonInput;->ensureAvailable(I)V

    .line 3
    iget-object v0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v0}, Lorg/bson/ByteBuf;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readObjectId()Lorg/bson/types/ObjectId;
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0, v0}, Lorg/bson/io/ByteBufferBsonInput;->readBytes([B)V

    .line 3
    new-instance v1, Lorg/bson/types/ObjectId;

    invoke-direct {v1, v0}, Lorg/bson/types/ObjectId;-><init>([B)V

    return-object v1
.end method

.method public readString()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    .line 2
    invoke-virtual {p0}, Lorg/bson/io/ByteBufferBsonInput;->readInt32()I

    move-result v0

    if-lez v0, :cond_e

    .line 3
    invoke-direct {p0, v0}, Lorg/bson/io/ByteBufferBsonInput;->readString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_e
    new-instance v1, Lorg/bson/BsonSerializationException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "While decoding a BSON string found a size that is not a positive number: %d"

    .line 6
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bson/BsonSerializationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    .line 2
    iget v0, p0, Lorg/bson/io/ByteBufferBsonInput;->mark:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 3
    iget-object v1, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v1, v0}, Lorg/bson/ByteBuf;->position(I)Lorg/bson/ByteBuf;

    return-void

    .line 4
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    .line 2
    iget-object v0, p0, Lorg/bson/io/ByteBufferBsonInput;->buffer:Lorg/bson/ByteBuf;

    invoke-interface {v0}, Lorg/bson/ByteBuf;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/bson/ByteBuf;->position(I)Lorg/bson/ByteBuf;

    return-void
.end method

.method public skipCString()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->ensureOpen()V

    .line 2
    invoke-direct {p0}, Lorg/bson/io/ByteBufferBsonInput;->readUntilNullByte()V

    return-void
.end method
