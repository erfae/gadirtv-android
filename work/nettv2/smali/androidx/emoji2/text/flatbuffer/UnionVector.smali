.class public final Landroidx/emoji2/text/flatbuffer/UnionVector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "UnionVector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(IILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/UnionVector;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/BaseVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(Landroidx/emoji2/text/flatbuffer/Table;I)Landroidx/emoji2/text/flatbuffer/Table;
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/BaseVector;->__element(I)I

    move-result p2

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->bb:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 3
    invoke-virtual {p1, v1, v0}, Landroidx/emoji2/text/flatbuffer/Table;->__reset(ILjava/nio/ByteBuffer;)V

    return-object p1
.end method
