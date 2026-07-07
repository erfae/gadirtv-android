.class Lorg/bson/RawBsonArray$RawBsonArrayList;
.super Ljava/util/AbstractList;
.source "RawBsonArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/RawBsonArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawBsonArrayList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/RawBsonArray$RawBsonArrayList$ListItr;,
        Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/bson/BsonValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_BSON_ARRAY_SIZE:I = 0x5


# instance fields
.field private final bytes:[B

.field private cachedSize:Ljava/lang/Integer;

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>([BII)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const-string v0, "bytes"

    .line 2
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

    .line 3
    invoke-static {v3, v2}, Lorg/bson/assertions/Assertions;->isTrueArgument(Ljava/lang/String;Z)V

    .line 4
    array-length v2, p1

    if-ge p2, v2, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    const-string v3, "offset < bytes.length"

    invoke-static {v3, v2}, Lorg/bson/assertions/Assertions;->isTrueArgument(Ljava/lang/String;Z)V

    .line 5
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

    .line 6
    invoke-static {v1, v0}, Lorg/bson/assertions/Assertions;->isTrueArgument(Ljava/lang/String;Z)V

    .line 7
    iput-object p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList;->bytes:[B

    .line 8
    iput p2, p0, Lorg/bson/RawBsonArray$RawBsonArrayList;->offset:I

    .line 9
    iput p3, p0, Lorg/bson/RawBsonArray$RawBsonArrayList;->length:I

    return-void
.end method

.method public static synthetic access$000(Lorg/bson/RawBsonArray$RawBsonArrayList;)[B
    .registers 1

    iget-object p0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList;->bytes:[B

    return-object p0
.end method

.method public static synthetic access$100(Lorg/bson/RawBsonArray$RawBsonArrayList;)I
    .registers 1

    iget p0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList;->offset:I

    return p0
.end method

.method public static synthetic access$200(Lorg/bson/RawBsonArray$RawBsonArrayList;)I
    .registers 1

    iget p0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList;->length:I

    return p0
.end method

.method public static synthetic access$300(Lorg/bson/RawBsonArray$RawBsonArrayList;)Lorg/bson/BsonBinaryReader;
    .registers 1

    invoke-direct {p0}, Lorg/bson/RawBsonArray$RawBsonArrayList;->createReader()Lorg/bson/BsonBinaryReader;

    move-result-object p0

    return-object p0
.end method

.method private createReader()Lorg/bson/BsonBinaryReader;
    .registers 6

    .line 1
    new-instance v0, Lorg/bson/BsonBinaryReader;

    new-instance v1, Lorg/bson/io/ByteBufferBsonInput;

    .line 2
    iget-object v2, p0, Lorg/bson/RawBsonArray$RawBsonArrayList;->bytes:[B

    iget v3, p0, Lorg/bson/RawBsonArray$RawBsonArrayList;->offset:I

    iget v4, p0, Lorg/bson/RawBsonArray$RawBsonArrayList;->length:I

    invoke-static {v2, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    new-instance v3, Lorg/bson/ByteBufNIO;

    invoke-direct {v3, v2}, Lorg/bson/ByteBufNIO;-><init>(Ljava/nio/ByteBuffer;)V

    .line 5
    invoke-direct {v1, v3}, Lorg/bson/io/ByteBufferBsonInput;-><init>(Lorg/bson/ByteBuf;)V

    invoke-direct {v0, v1}, Lorg/bson/BsonBinaryReader;-><init>(Lorg/bson/io/BsonInput;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/RawBsonArray$RawBsonArrayList;->get(I)Lorg/bson/BsonValue;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/bson/BsonValue;
    .registers 6

    if-ltz p1, :cond_38

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0}, Lorg/bson/RawBsonArray$RawBsonArrayList;->createReader()Lorg/bson/BsonBinaryReader;

    move-result-object v1

    .line 3
    :try_start_7
    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    .line 4
    :goto_a
    invoke-virtual {v1}, Lorg/bson/BsonBinaryReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v2

    sget-object v3, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v2, v3, :cond_27

    .line 5
    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->skipName()V

    if-ne v0, p1, :cond_21

    .line 6
    iget-object p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList;->bytes:[B

    invoke-static {p1, v1}, Lorg/bson/RawBsonValueHelper;->decode([BLorg/bson/BsonBinaryReader;)Lorg/bson/BsonValue;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_33

    .line 7
    invoke-virtual {v1}, Lorg/bson/BsonBinaryReader;->close()V

    return-object p1

    .line 8
    :cond_21
    :try_start_21
    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->skipValue()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 9
    :cond_27
    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->readEndDocument()V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_33

    .line 10
    invoke-virtual {v1}, Lorg/bson/BsonBinaryReader;->close()V

    .line 11
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :catchall_33
    move-exception p1

    .line 12
    invoke-virtual {v1}, Lorg/bson/BsonBinaryReader;->close()V

    .line 13
    throw p1

    .line 14
    :cond_38
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bson/BsonValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;

    invoke-direct {v0, p0}, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;-><init>(Lorg/bson/RawBsonArray$RawBsonArrayList;)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Lorg/bson/BsonValue;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bson/RawBsonArray$RawBsonArrayList$ListItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bson/RawBsonArray$RawBsonArrayList$ListItr;-><init>(Lorg/bson/RawBsonArray$RawBsonArrayList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lorg/bson/BsonValue;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/bson/RawBsonArray$RawBsonArrayList$ListItr;

    invoke-direct {v0, p0, p1}, Lorg/bson/RawBsonArray$RawBsonArrayList$ListItr;-><init>(Lorg/bson/RawBsonArray$RawBsonArrayList;I)V

    return-object v0
.end method

.method public size()I
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList;->cachedSize:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Lorg/bson/RawBsonArray$RawBsonArrayList;->createReader()Lorg/bson/BsonBinaryReader;

    move-result-object v1

    .line 4
    :try_start_e
    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    .line 5
    :goto_11
    invoke-virtual {v1}, Lorg/bson/BsonBinaryReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v2

    sget-object v3, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v2, v3, :cond_22

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->readName()Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->skipValue()V

    goto :goto_11

    .line 8
    :cond_22
    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader;->readEndDocument()V
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_33

    .line 9
    invoke-virtual {v1}, Lorg/bson/BsonBinaryReader;->close()V

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList;->cachedSize:Ljava/lang/Integer;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :catchall_33
    move-exception v0

    .line 12
    invoke-virtual {v1}, Lorg/bson/BsonBinaryReader;->close()V

    .line 13
    throw v0
.end method
