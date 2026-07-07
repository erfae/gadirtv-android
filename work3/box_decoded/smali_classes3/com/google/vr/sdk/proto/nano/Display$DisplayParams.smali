.class public final Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;


# instance fields
.field private bitField0_:I

.field private bottomBezelHeight_:F

.field public dEPRECATEDGyroBias:[F

.field private xPpi_:F

.field private yPpi_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->clear()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    .line 4
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->xPpi_:F

    .line 36
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->yPpi_:F

    .line 37
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bottomBezelHeight_:F

    .line 38
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->dEPRECATEDGyroBias:[F

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->cachedSize:I

    return-object p0
.end method

.method public final clearBottomBezelHeight()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bottomBezelHeight_:F

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    return-object p0
.end method

.method public final clearXPpi()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->xPpi_:F

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    return-object p0
.end method

.method public final clearYPpi()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->yPpi_:F

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->clone()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->clone()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 3

    .line 42
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->dEPRECATEDGyroBias:[F

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 47
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->dEPRECATEDGyroBias:[F

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->clone()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 64
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 65
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 66
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->xPpi_:F

    .line 67
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 69
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->yPpi_:F

    .line 70
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 72
    iget v3, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bottomBezelHeight_:F

    .line 73
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->dEPRECATEDGyroBias:[F

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 75
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 79
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final getBottomBezelHeight()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bottomBezelHeight_:F

    return v0
.end method

.method public final getXPpi()F
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->xPpi_:F

    return v0
.end method

.method public final getYPpi()F
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->yPpi_:F

    return v0
.end method

.method public final hasBottomBezelHeight()Z
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasXPpi()Z
    .locals 2

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasYPpi()Z
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    if-eq v0, v1, :cond_b

    const/16 v1, 0x15

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_9

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    .line 84
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 96
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->dEPRECATEDGyroBias:[F

    if-nez v1, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 98
    new-array v4, v0, [F

    if-eqz v3, :cond_3

    .line 100
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    .line 102
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 103
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 106
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->dEPRECATEDGyroBias:[F

    goto :goto_0

    .line 108
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 109
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 110
    div-int/lit8 v0, v0, 0x4

    .line 111
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->dEPRECATEDGyroBias:[F

    if-nez v3, :cond_6

    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    array-length v4, v3

    :goto_3
    add-int/2addr v0, v4

    .line 112
    new-array v5, v0, [F

    if-eqz v4, :cond_7

    .line 114
    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    if-ge v4, v0, :cond_8

    .line 116
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 118
    :cond_8
    iput-object v5, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->dEPRECATEDGyroBias:[F

    .line 119
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    .line 92
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bottomBezelHeight_:F

    .line 93
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    goto/16 :goto_0

    .line 89
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->yPpi_:F

    .line 90
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    goto/16 :goto_0

    .line 86
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->xPpi_:F

    .line 87
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    goto/16 :goto_0

    :cond_c
    return-object p0
.end method

.method public final setBottomBezelHeight(F)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    .line 29
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bottomBezelHeight_:F

    return-object p0
.end method

.method public final setXPpi(F)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    .line 13
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->xPpi_:F

    return-object p0
.end method

.method public final setYPpi(F)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    .line 21
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->yPpi_:F

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 50
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->xPpi_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 51
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 52
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->yPpi_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 53
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 54
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->bottomBezelHeight_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->dEPRECATEDGyroBias:[F

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 56
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0x22

    .line 57
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 58
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    const/4 v0, 0x0

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->dEPRECATEDGyroBias:[F

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 60
    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
