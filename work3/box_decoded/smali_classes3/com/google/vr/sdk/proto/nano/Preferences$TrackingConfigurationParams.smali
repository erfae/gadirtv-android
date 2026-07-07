.class public final Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackingConfigurationParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;


# instance fields
.field private bitField0_:I

.field private controllerConfigType_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->clear()Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    .line 4
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

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
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->bitField0_:I

    .line 19
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->controllerConfigType_:I

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->cachedSize:I

    return-object p0
.end method

.method public final clearControllerConfigType()Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->bitField0_:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->controllerConfigType_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

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

    .line 54
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;
    .locals 2

    .line 23
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 26
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

    .line 56
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 33
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 34
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->controllerConfigType_:I

    .line 35
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final getControllerConfigType()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->controllerConfigType_:I

    return v0
.end method

.method public final hasControllerConfigType()Z
    .locals 2

    .line 11
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

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

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 40
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 42
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->bitField0_:I

    .line 43
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 44
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/sdk/proto/nano/Preferences;->checkControllerConfigurationTypeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->controllerConfigType_:I

    .line 45
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->bitField0_:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final setControllerConfigType(I)Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;
    .locals 0

    .line 8
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->controllerConfigType_:I

    .line 9
    iget p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->bitField0_:I

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 29
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->controllerConfigType_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 30
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
