.class public Lorg/bson/LazyBSONObject;
.super Ljava/lang/Object;
.source "LazyBSONObject.java"

# interfaces
.implements Lorg/bson/BSONObject;


# instance fields
.field private final bytes:[B

.field private final callback:Lorg/bson/LazyBSONCallback;

.field private final offset:I


# direct methods
.method public constructor <init>([BILorg/bson/LazyBSONCallback;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/bson/LazyBSONObject;->bytes:[B

    .line 4
    iput-object p3, p0, Lorg/bson/LazyBSONObject;->callback:Lorg/bson/LazyBSONCallback;

    .line 5
    iput p2, p0, Lorg/bson/LazyBSONObject;->offset:I

    return-void
.end method

.method public constructor <init>([BLorg/bson/LazyBSONCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lorg/bson/LazyBSONObject;-><init>([BILorg/bson/LazyBSONCallback;)V

    return-void
.end method

.method private getBufferForInternalBytes()Ljava/nio/ByteBuffer;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/LazyBSONObject;->bytes:[B

    iget v1, p0, Lorg/bson/LazyBSONObject;->offset:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 4
    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method private readArray(Lorg/bson/BsonBinaryReader;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lorg/bson/BsonBinaryReader;->getBsonInput()Lorg/bson/io/BsonInput;

    move-result-object v0

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->getPosition()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->skipValue()V

    .line 3
    iget-object p1, p0, Lorg/bson/LazyBSONObject;->callback:Lorg/bson/LazyBSONCallback;

    iget-object v1, p0, Lorg/bson/LazyBSONObject;->bytes:[B

    iget v2, p0, Lorg/bson/LazyBSONObject;->offset:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/bson/LazyBSONCallback;->createArray([BI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private readDocument(Lorg/bson/BsonBinaryReader;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lorg/bson/BsonBinaryReader;->getBsonInput()Lorg/bson/io/BsonInput;

    move-result-object v0

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->getPosition()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->skipValue()V

    .line 3
    iget-object p1, p0, Lorg/bson/LazyBSONObject;->callback:Lorg/bson/LazyBSONCallback;

    iget-object v1, p0, Lorg/bson/LazyBSONObject;->bytes:[B

    iget v2, p0, Lorg/bson/LazyBSONObject;->offset:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/bson/LazyBSONCallback;->createObject([BI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private readJavaScriptWithScopeDocument(Lorg/bson/BsonBinaryReader;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lorg/bson/BsonBinaryReader;->getBsonInput()Lorg/bson/io/BsonInput;

    move-result-object v0

    invoke-interface {v0}, Lorg/bson/io/BsonInput;->getPosition()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    .line 3
    :goto_b
    invoke-virtual {p1}, Lorg/bson/BsonBinaryReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v1, v2, :cond_1a

    .line 4
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->skipName()V

    .line 5
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->skipValue()V

    goto :goto_b

    .line 6
    :cond_1a
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readEndDocument()V

    .line 7
    iget-object p1, p0, Lorg/bson/LazyBSONObject;->callback:Lorg/bson/LazyBSONCallback;

    iget-object v1, p0, Lorg/bson/LazyBSONObject;->bytes:[B

    iget v2, p0, Lorg/bson/LazyBSONObject;->offset:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/bson/LazyBSONCallback;->createObject([BI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public containsField(Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/bson/LazyBSONObject;->getBsonReader()Lorg/bson/BsonBinaryReader;

    move-result-object v0

    .line 2
    :try_start_4
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    .line 3
    :goto_7
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v1, v2, :cond_22

    .line 4
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_27

    if-eqz v1, :cond_1e

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    return p1

    .line 6
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->skipValue()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_27

    goto :goto_7

    .line 7
    :cond_22
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    const/4 p1, 0x0

    return p1

    :catchall_27
    move-exception p1

    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    .line 8
    throw p1
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bson/LazyBSONObject;->containsField(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/bson/LazyBSONObject;->getBsonReader()Lorg/bson/BsonBinaryReader;

    move-result-object v1

    .line 3
    :try_start_9
    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    .line 4
    :goto_c
    invoke-virtual {v1}, Lorg/bson/BsonBinaryReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v2

    sget-object v3, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v2, v3, :cond_25

    .line 5
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->readName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lorg/bson/LazyBSONObject;->readValue(Lorg/bson/BsonBinaryReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 6
    :cond_25
    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->readEndDocument()V
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_31

    .line 7
    invoke-virtual {v1}, Lorg/bson/BsonBinaryReader;->close()V

    .line 8
    new-instance v1, Lorg/bson/LazyBSONObject$1;

    invoke-direct {v1, v0}, Lorg/bson/LazyBSONObject$1;-><init>(Ljava/util/List;)V

    return-object v1

    :catchall_31
    move-exception v0

    .line 9
    invoke-virtual {v1}, Lorg/bson/BsonBinaryReader;->close()V

    .line 10
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_50

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_50

    .line 2
    :cond_12
    check-cast p1, Lorg/bson/LazyBSONObject;

    .line 3
    iget-object v2, p0, Lorg/bson/LazyBSONObject;->bytes:[B

    iget-object v3, p1, Lorg/bson/LazyBSONObject;->bytes:[B

    if-ne v2, v3, :cond_21

    iget v4, p0, Lorg/bson/LazyBSONObject;->offset:I

    iget v5, p1, Lorg/bson/LazyBSONObject;->offset:I

    if-ne v4, v5, :cond_21

    return v0

    :cond_21
    if-eqz v2, :cond_50

    if-nez v3, :cond_26

    goto :goto_50

    .line 4
    :cond_26
    array-length v4, v2

    if-eqz v4, :cond_50

    array-length v4, v3

    if-nez v4, :cond_2d

    goto :goto_50

    .line 5
    :cond_2d
    iget v4, p0, Lorg/bson/LazyBSONObject;->offset:I

    aget-byte v2, v2, v4

    .line 6
    iget v4, p1, Lorg/bson/LazyBSONObject;->offset:I

    aget-byte v3, v3, v4

    if-eq v3, v2, :cond_38

    return v1

    :cond_38
    const/4 v3, 0x0

    :goto_39
    if-ge v3, v2, :cond_4f

    .line 7
    iget-object v4, p0, Lorg/bson/LazyBSONObject;->bytes:[B

    iget v5, p0, Lorg/bson/LazyBSONObject;->offset:I

    add-int/2addr v5, v3

    aget-byte v4, v4, v5

    iget-object v5, p1, Lorg/bson/LazyBSONObject;->bytes:[B

    iget v6, p1, Lorg/bson/LazyBSONObject;->offset:I

    add-int/2addr v6, v3

    aget-byte v5, v5, v6

    if-eq v4, v5, :cond_4c

    return v1

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_4f
    return v0

    :cond_50
    :goto_50
    return v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/bson/LazyBSONObject;->getBsonReader()Lorg/bson/BsonBinaryReader;

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

    if-eq v2, v3, :cond_23

    .line 4
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5
    invoke-virtual {p0, v0}, Lorg/bson/LazyBSONObject;->readValue(Lorg/bson/BsonBinaryReader;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_23

    .line 6
    :cond_1f
    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->skipValue()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_27

    goto :goto_8

    .line 7
    :cond_23
    :goto_23
    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    return-object v1

    :catchall_27
    move-exception p1

    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    .line 8
    throw p1
.end method

.method public getBSONSize()I
    .registers 2

    invoke-direct {p0}, Lorg/bson/LazyBSONObject;->getBufferForInternalBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public final getBsonReader()Lorg/bson/BsonBinaryReader;
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/bson/LazyBSONObject;->getBufferForInternalBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/bson/BsonBinaryReader;

    new-instance v2, Lorg/bson/io/ByteBufferBsonInput;

    new-instance v3, Lorg/bson/ByteBufNIO;

    invoke-direct {v3, v0}, Lorg/bson/ByteBufNIO;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {v2, v3}, Lorg/bson/io/ByteBufferBsonInput;-><init>(Lorg/bson/ByteBuf;)V

    invoke-direct {v1, v2}, Lorg/bson/BsonBinaryReader;-><init>(Lorg/bson/io/BsonInput;)V

    return-object v1
.end method

.method public hashCode()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/bson/LazyBSONObject;->getBSONSize()I

    move-result v0

    .line 2
    iget v1, p0, Lorg/bson/LazyBSONObject;->offset:I

    const/4 v2, 0x1

    :goto_7
    iget v3, p0, Lorg/bson/LazyBSONObject;->offset:I

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_16

    mul-int/lit8 v2, v2, 0x1f

    .line 3
    iget-object v3, p0, Lorg/bson/LazyBSONObject;->bytes:[B

    aget-byte v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    return v2
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lorg/bson/LazyBSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/bson/LazyBSONObject;->getBsonReader()Lorg/bson/BsonBinaryReader;

    move-result-object v1

    .line 3
    :try_start_9
    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    .line 4
    :goto_c
    invoke-virtual {v1}, Lorg/bson/BsonBinaryReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v2

    sget-object v3, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v2, v3, :cond_1f

    .line 5
    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->readName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->skipValue()V

    goto :goto_c

    .line 7
    :cond_1f
    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->readEndDocument()V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_2a

    .line 8
    invoke-virtual {v1}, Lorg/bson/BsonBinaryReader;->close()V

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :catchall_2a
    move-exception v0

    .line 10
    invoke-virtual {v1}, Lorg/bson/BsonBinaryReader;->close()V

    .line 11
    throw v0
.end method

.method public pipe(Ljava/io/OutputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lorg/bson/LazyBSONObject;->getBufferForInternalBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Object is read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Object is read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Lorg/bson/BSONObject;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Object is read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final readValue(Lorg/bson/BsonBinaryReader;)Ljava/lang/Object;
    .registers 5

    .line 1
    sget-object v0, Lorg/bson/LazyBSONObject$2;->$SwitchMap$org$bson$BsonType:[I

    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_134

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unhandled BSON type: "

    .line 3
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :pswitch_27
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readMaxKey()V

    .line 6
    new-instance p1, Lorg/bson/types/MaxKey;

    invoke-direct {p1}, Lorg/bson/types/MaxKey;-><init>()V

    return-object p1

    .line 7
    :pswitch_30
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readMinKey()V

    .line 8
    new-instance p1, Lorg/bson/types/MinKey;

    invoke-direct {p1}, Lorg/bson/types/MinKey;-><init>()V

    return-object p1

    .line 9
    :pswitch_39
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readDecimal128()Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_3e
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_47
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readTimestamp()Lorg/bson/BsonTimestamp;

    move-result-object p1

    .line 12
    new-instance v0, Lorg/bson/types/BSONTimestamp;

    invoke-virtual {p1}, Lorg/bson/BsonTimestamp;->getTime()I

    move-result v1

    invoke-virtual {p1}, Lorg/bson/BsonTimestamp;->getInc()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/bson/types/BSONTimestamp;-><init>(II)V

    return-object v0

    .line 13
    :pswitch_59
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_62
    new-instance v0, Lorg/bson/types/CodeWScope;

    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readJavaScriptWithScope()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/bson/LazyBSONObject;->readJavaScriptWithScopeDocument(Lorg/bson/BsonBinaryReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bson/BSONObject;

    invoke-direct {v0, v1, p1}, Lorg/bson/types/CodeWScope;-><init>(Ljava/lang/String;Lorg/bson/BSONObject;)V

    return-object v0

    .line 15
    :pswitch_72
    new-instance v0, Lorg/bson/types/Symbol;

    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readSymbol()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/types/Symbol;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 16
    :pswitch_7c
    new-instance v0, Lorg/bson/types/Code;

    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readJavaScript()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/types/Code;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 17
    :pswitch_86
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readDBPointer()Lorg/bson/BsonDbPointer;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lorg/bson/LazyBSONObject;->callback:Lorg/bson/LazyBSONCallback;

    invoke-virtual {p1}, Lorg/bson/BsonDbPointer;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bson/BsonDbPointer;->getId()Lorg/bson/types/ObjectId;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/bson/LazyBSONCallback;->createDBRef(Ljava/lang/String;Lorg/bson/types/ObjectId;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_99
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readRegularExpression()Lorg/bson/BsonRegularExpression;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lorg/bson/BsonRegularExpression;->getPattern()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lorg/bson/BsonRegularExpression;->getOptions()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bson/BSON;->regexFlags(Ljava/lang/String;)I

    move-result p1

    .line 22
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_ae
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readDateTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 24
    :pswitch_b8
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_c1
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readObjectId()Lorg/bson/types/ObjectId;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_c6
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readUndefined()V

    return-object v1

    .line 27
    :pswitch_ca
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readNull()V

    return-object v1

    .line 28
    :pswitch_ce
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->peekBinarySubType()B

    move-result v0

    .line 29
    invoke-static {v0}, Lorg/bson/BsonBinarySubType;->isUuid(B)Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->peekBinarySize()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_f4

    .line 30
    new-instance v0, Lorg/bson/codecs/UuidCodec;

    sget-object v1, Lorg/bson/UuidRepresentation;->JAVA_LEGACY:Lorg/bson/UuidRepresentation;

    invoke-direct {v0, v1}, Lorg/bson/codecs/UuidCodec;-><init>(Lorg/bson/UuidRepresentation;)V

    invoke-static {}, Lorg/bson/codecs/DecoderContext;->builder()Lorg/bson/codecs/DecoderContext$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/codecs/DecoderContext$Builder;->build()Lorg/bson/codecs/DecoderContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/bson/codecs/UuidCodec;->decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Ljava/util/UUID;

    move-result-object p1

    return-object p1

    .line 31
    :cond_f4
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readBinaryData()Lorg/bson/BsonBinary;

    move-result-object p1

    .line 32
    sget-object v1, Lorg/bson/BsonBinarySubType;->BINARY:Lorg/bson/BsonBinarySubType;

    invoke-virtual {v1}, Lorg/bson/BsonBinarySubType;->getValue()B

    move-result v1

    if-eq v0, v1, :cond_117

    sget-object v1, Lorg/bson/BsonBinarySubType;->OLD_BINARY:Lorg/bson/BsonBinarySubType;

    invoke-virtual {v1}, Lorg/bson/BsonBinarySubType;->getValue()B

    move-result v1

    if-ne v0, v1, :cond_109

    goto :goto_117

    .line 33
    :cond_109
    new-instance v0, Lorg/bson/types/Binary;

    invoke-virtual {p1}, Lorg/bson/BsonBinary;->getType()B

    move-result v1

    invoke-virtual {p1}, Lorg/bson/BsonBinary;->getData()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bson/types/Binary;-><init>(B[B)V

    return-object v0

    .line 34
    :cond_117
    :goto_117
    invoke-virtual {p1}, Lorg/bson/BsonBinary;->getData()[B

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_11c
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_121
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_12a
    invoke-direct {p0, p1}, Lorg/bson/LazyBSONObject;->readArray(Lorg/bson/BsonBinaryReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 38
    :pswitch_12f
    invoke-direct {p0, p1}, Lorg/bson/LazyBSONObject;->readDocument(Lorg/bson/BsonBinaryReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_12f
        :pswitch_12a
        :pswitch_121
        :pswitch_11c
        :pswitch_ce
        :pswitch_ca
        :pswitch_c6
        :pswitch_c1
        :pswitch_b8
        :pswitch_ae
        :pswitch_99
        :pswitch_86
        :pswitch_7c
        :pswitch_72
        :pswitch_62
        :pswitch_59
        :pswitch_47
        :pswitch_3e
        :pswitch_39
        :pswitch_30
        :pswitch_27
    .end packed-switch
.end method

.method public removeField(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Object is read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toMap()Ljava/util/Map;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/bson/LazyBSONObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 4
    :cond_25
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
