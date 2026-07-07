.class public final Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Actor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;


# instance fields
.field public controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

.field public startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

.field public vrSdk:Ljava/lang/Integer;

.field public vrSystemType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clear()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    return-void
.end method

.method public static checkVrSdkOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum VrSdk"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkVrSystemTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum VrSystemType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .locals 2

    .line 7
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    .line 10
    sput-object v1, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 12
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .locals 2

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 17
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    .line 18
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->vrSdk:Ljava/lang/Integer;

    .line 19
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->vrSystemType:Ljava/lang/Integer;

    .line 20
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .locals 4

    .line 23
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 30
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    const/4 v1, 0x0

    .line 31
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 32
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 33
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 26
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

    .line 106
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

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

    .line 107
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

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

    .line 109
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 50
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 53
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 56
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    .line 59
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->vrSdk:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 63
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->vrSystemType:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 66
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0x12

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    .line 71
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->checkVrSystemTypeOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->vrSystemType:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 93
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->checkVrSdkOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->vrSdk:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 96
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 78
    :cond_3
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 80
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    if-eqz v3, :cond_5

    .line 82
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_6

    .line 84
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;-><init>()V

    aput-object v1, v4, v3

    .line 85
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 86
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 88
    :cond_6
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;-><init>()V

    aput-object v0, v4, v3

    .line 89
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 90
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    goto/16 :goto_0

    .line 73
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-nez v0, :cond_8

    .line 74
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 75
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

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
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 37
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 40
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    .line 42
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->vrSdk:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->vrSystemType:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 48
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
