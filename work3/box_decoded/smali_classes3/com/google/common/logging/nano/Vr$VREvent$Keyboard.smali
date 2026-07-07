.class public final Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
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
    name = "Keyboard"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;,
        Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 19
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    return-void
.end method

.method public static checkKeyboardEventTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_1

    const/16 v0, 0x3e9

    if-gt p0, v0, :cond_1

    return p0

    :cond_1
    const/16 v0, 0x7d0

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7d1

    if-gt p0, v0, :cond_2

    return p0

    :cond_2
    const/16 v0, 0xbb8

    if-lt p0, v0, :cond_3

    const/16 v0, 0xbba

    if-gt p0, v0, :cond_3

    return p0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum KeyboardEventType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkKeyboardInputTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum KeyboardInputType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkKeyboardTextTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    if-gtz p0, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    const/4 v0, 0x6

    if-gt p0, v0, :cond_1

    return p0

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum KeyboardTextType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    .locals 1

    .line 21
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    .locals 4

    .line 25
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 30
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    const/4 v1, 0x0

    .line 31
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 32
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 33
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 28
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

    .line 73
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

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

    .line 74
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

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

    .line 76
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 44
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 47
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    .line 50
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 56
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 59
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 61
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-eqz v3, :cond_3

    .line 63
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    .line 65
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;-><init>()V

    aput-object v1, v4, v3

    .line 66
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 67
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 69
    :cond_4
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;-><init>()V

    aput-object v0, v4, v3

    .line 70
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 71
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

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

    .line 36
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 38
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 40
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
