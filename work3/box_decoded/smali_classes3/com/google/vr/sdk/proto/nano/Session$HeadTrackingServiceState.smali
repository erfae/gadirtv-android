.class public final Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;
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
    name = "HeadTrackingServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;


# instance fields
.field private applyDisplayFromSensorRotation_:Z

.field private bitField0_:I

.field private defaultFloorHeight_:F

.field public recenteredState:Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

.field public safeRegionState:Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->clear()Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;

    .line 4
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;

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
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;
    .locals 2

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->applyDisplayFromSensorRotation_:Z

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->recenteredState:Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    .line 29
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->safeRegionState:Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->defaultFloorHeight_:F

    .line 31
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->cachedSize:I

    return-object p0
.end method

.method public final clearApplyDisplayFromSensorRotation()Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;
    .locals 1

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->applyDisplayFromSensorRotation_:Z

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    return-object p0
.end method

.method public final clearDefaultFloorHeight()Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->defaultFloorHeight_:F

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->clone()Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;

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

    .line 89
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->clone()Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;
    .locals 2

    .line 34
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->recenteredState:Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->clone()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->recenteredState:Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->safeRegionState:Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;->clone()Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->safeRegionState:Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 37
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

    .line 91
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->clone()Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 53
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 54
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 55
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->applyDisplayFromSensorRotation_:Z

    .line 56
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->recenteredState:Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 59
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->safeRegionState:Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    .line 62
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 64
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->defaultFloorHeight_:F

    .line 65
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final getApplyDisplayFromSensorRotation()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->applyDisplayFromSensorRotation_:Z

    return v0
.end method

.method public final getDefaultFloorHeight()F
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->defaultFloorHeight_:F

    return v0
.end method

.method public final hasApplyDisplayFromSensorRotation()Z
    .locals 2

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDefaultFloorHeight()Z
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

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

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    .line 70
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->defaultFloorHeight_:F

    .line 84
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->safeRegionState:Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    if-nez v0, :cond_3

    .line 80
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->safeRegionState:Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->safeRegionState:Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->recenteredState:Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    if-nez v0, :cond_5

    .line 76
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->recenteredState:Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->recenteredState:Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 72
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->applyDisplayFromSensorRotation_:Z

    .line 73
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final setApplyDisplayFromSensorRotation(Z)Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    .line 13
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->applyDisplayFromSensorRotation_:Z

    return-object p0
.end method

.method public final setDefaultFloorHeight(F)Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    .line 21
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->defaultFloorHeight_:F

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 44
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->applyDisplayFromSensorRotation_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->recenteredState:Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->safeRegionState:Lcom/google/vr/sdk/proto/nano/Session$SafeRegionState;

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    .line 48
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 49
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 50
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$HeadTrackingServiceState;->defaultFloorHeight_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 51
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
