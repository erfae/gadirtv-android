.class public final Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SafeRegionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;


# instance fields
.field private bitField0_:I

.field private counter_:J

.field private inside_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->clear()Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    .line 4
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

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
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;
    .locals 2

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->counter_:J

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->inside_:Z

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->cachedSize:I

    return-object p0
.end method

.method public final clearCounter()Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;
    .locals 2

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->counter_:J

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    return-object p0
.end method

.method public final clearInside()Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;
    .locals 1

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->inside_:Z

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->clone()Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

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

    .line 65
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->clone()Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;
    .locals 2

    .line 32
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 35
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

    .line 67
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->clone()Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 43
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 44
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 45
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->counter_:J

    .line 46
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 48
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->inside_:Z

    .line 49
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final getCounter()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->counter_:J

    return-wide v0
.end method

.method public final getInside()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->inside_:Z

    return v0
.end method

.method public final hasCounter()Z
    .locals 2

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasInside()Z
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

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

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 54
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->inside_:Z

    .line 60
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->counter_:J

    .line 57
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final setCounter(J)Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    .line 13
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->counter_:J

    return-object p0
.end method

.method public final setInside(Z)Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    .line 21
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->inside_:Z

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 38
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->counter_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 39
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 40
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->inside_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 41
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
