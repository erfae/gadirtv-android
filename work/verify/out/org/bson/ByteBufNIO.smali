.class public Lorg/bson/ByteBufNIO;
.super Ljava/lang/Object;
.source "ByteBufNIO.java"

# interfaces
.implements Lorg/bson/ByteBuf;


# instance fields
.field private buf:Ljava/nio/ByteBuffer;

.field private final referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bson/ByteBufNIO;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public array()[B
    .registers 2

    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public asNIO()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public asReadOnly()Lorg/bson/ByteBuf;
    .registers 3

    new-instance v0, Lorg/bson/ByteBufNIO;

    iget-object v1, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bson/ByteBufNIO;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public capacity()I
    .registers 2

    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()Lorg/bson/ByteBuf;
    .registers 2

    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    return-object p0
.end method

.method public duplicate()Lorg/bson/ByteBuf;
    .registers 3

    new-instance v0, Lorg/bson/ByteBufNIO;

    iget-object v1, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bson/ByteBufNIO;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public flip()Lorg/bson/ByteBuf;
    .registers 2

    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-object p0
.end method

.method public get()B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public get(I)B
    .registers 3

    .line 2
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public get(I[B)Lorg/bson/ByteBuf;
    .registers 5

    .line 4
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/bson/ByteBufNIO;->get(I[BII)Lorg/bson/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public get(I[BII)Lorg/bson/ByteBuf;
    .registers 9

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_12

    add-int v1, p3, v0

    .line 6
    iget-object v2, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    add-int v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-object p0
.end method

.method public get([B)Lorg/bson/ByteBuf;
    .registers 3

    .line 3
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public get([BII)Lorg/bson/ByteBuf;
    .registers 5

    .line 5
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getDouble()D
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(I)D
    .registers 4

    .line 2
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 3

    .line 2
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong()J
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(I)J
    .registers 4

    .line 2
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReferenceCount()I
    .registers 2

    iget-object v0, p0, Lorg/bson/ByteBufNIO;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public hasRemaining()Z
    .registers 2

    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public limit()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    return v0
.end method

.method public limit(I)Lorg/bson/ByteBuf;
    .registers 3

    .line 2
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public order(Ljava/nio/ByteOrder;)Lorg/bson/ByteBuf;
    .registers 3

    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public position()I
    .registers 2

    .line 2
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)Lorg/bson/ByteBuf;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public put(B)Lorg/bson/ByteBuf;
    .registers 3

    .line 3
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put(IB)Lorg/bson/ByteBuf;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put([BII)Lorg/bson/ByteBuf;
    .registers 5

    .line 2
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public release()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_14

    .line 2
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    :cond_13
    return-void

    .line 4
    :cond_14
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to decrement the reference count below 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remaining()I
    .registers 2

    iget-object v0, p0, Lorg/bson/ByteBufNIO;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method

.method public bridge synthetic retain()Lorg/bson/ByteBuf;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/ByteBufNIO;->retain()Lorg/bson/ByteBufNIO;

    move-result-object v0

    return-object v0
.end method

.method public retain()Lorg/bson/ByteBufNIO;
    .registers 3

    .line 2
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    return-object p0

    .line 3
    :cond_a
    iget-object v0, p0, Lorg/bson/ByteBufNIO;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to increment the reference count when it is already 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
