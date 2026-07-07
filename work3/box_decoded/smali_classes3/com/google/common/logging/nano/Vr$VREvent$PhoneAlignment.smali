.class public final Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public angleDegrees:Ljava/lang/Float;

.field public lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

.field public touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->clear()Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->angleDegrees:Ljava/lang/Float;

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;
    .locals 4

    .line 10
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 15
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 17
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 18
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

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

    .line 77
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 35
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 37
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 38
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 41
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 45
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->angleDegrees:Ljava/lang/Float;

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 48
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    .line 53
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->angleDegrees:Ljava/lang/Float;

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-nez v0, :cond_3

    .line 71
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 56
    :cond_4
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 58
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-eqz v3, :cond_6

    .line 60
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_7

    .line 62
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;-><init>()V

    aput-object v1, v4, v3

    .line 63
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 64
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 66
    :cond_7
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vector2;-><init>()V

    aput-object v0, v4, v3

    .line 67
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 68
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->touchLocations:[Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 25
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 27
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->lensOffset:Lcom/google/common/logging/nano/Vr$VREvent$Vector2;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->angleDegrees:Ljava/lang/Float;

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    .line 32
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 33
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
