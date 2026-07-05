.class public Landroidx/emoji2/text/flatbuffer/Table;
.super Ljava/lang/Object;
.source "Table.java"


# instance fields
.field public bb:Ljava/nio/ByteBuffer;

.field public bb_pos:I

.field public utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

.field private vtable_size:I

.field private vtable_start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Utf8;->getDefault()Landroidx/emoji2/text/flatbuffer/Utf8;

    move-result-object v0

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

    return-void
.end method


# virtual methods
.method public final __offset(I)I
    .locals 2

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_start:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public __reset()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/Table;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public final __reset(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_0

    .line 2
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb_pos:I

    .line 3
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_start:I

    .line 4
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_size:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb_pos:I

    .line 6
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_start:I

    .line 7
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_size:I

    :goto_0
    return-void
.end method

.method public final __vector(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb_pos:I

    add-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public final __vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/Table;->__offset(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/Table;->__vector(I)I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/Table;->__vector_len(I)I

    move-result p1

    mul-int p1, p1, p2

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public final __vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/Table;->__offset(I)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/Table;->__vector(I)I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/Table;->__vector_len(I)I

    move-result p2

    mul-int p2, p2, p3

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method public final __vector_len(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb_pos:I

    add-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 3
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    return-object v0
.end method
