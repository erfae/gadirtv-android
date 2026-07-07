.class public final Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vibration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;


# instance fields
.field private bitField0_:I

.field private durationMs_:I

.field private frequencyHz_:I

.field private volumePercentage_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->clear()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    .line 4
    sput-object v1, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

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
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    .line 35
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->frequencyHz_:I

    .line 36
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->volumePercentage_:I

    .line 37
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->durationMs_:I

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->cachedSize:I

    return-object p0
.end method

.method public final clearDurationMs()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->durationMs_:I

    .line 26
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    return-object p0
.end method

.method public final clearFrequencyHz()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->frequencyHz_:I

    .line 10
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    return-object p0
.end method

.method public final clearVolumePercentage()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->volumePercentage_:I

    .line 18
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->clone()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

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

    .line 82
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->clone()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
    .locals 2

    .line 41
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 44
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

    .line 84
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->clone()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 54
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 55
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 56
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->frequencyHz_:I

    .line 57
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_0
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 59
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->volumePercentage_:I

    .line 60
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_1
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 62
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->durationMs_:I

    .line 63
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final getDurationMs()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->durationMs_:I

    return v0
.end method

.method public final getFrequencyHz()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->frequencyHz_:I

    return v0
.end method

.method public final getVolumePercentage()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->volumePercentage_:I

    return v0
.end method

.method public final hasDurationMs()Z
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFrequencyHz()Z
    .locals 2

    .line 8
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVolumePercentage()Z
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

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

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 68
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->durationMs_:I

    .line 77
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->volumePercentage_:I

    .line 74
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->frequencyHz_:I

    .line 71
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final setDurationMs(I)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    .line 29
    iput p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->durationMs_:I

    return-object p0
.end method

.method public final setFrequencyHz(I)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    .line 13
    iput p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->frequencyHz_:I

    return-object p0
.end method

.method public final setVolumePercentage(I)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    .line 21
    iput p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->volumePercentage_:I

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 47
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->frequencyHz_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 48
    :cond_0
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 49
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->volumePercentage_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 50
    :cond_1
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 51
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->durationMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 52
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
