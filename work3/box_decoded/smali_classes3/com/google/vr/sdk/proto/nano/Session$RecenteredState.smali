.class public final Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
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
    name = "RecenteredState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/proto/nano/Session$RecenteredState$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;


# instance fields
.field private applyDisplayFromSensorRotation_:Z

.field private bitField0_:I

.field public headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

.field private timestampNs_:J

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->clear()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    return-void
.end method

.method public static checkTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum Type"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkTypeOrThrow([I)[I
    .locals 3

    .line 4
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 6
    invoke-static {v2}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->checkTypeOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 2

    .line 9
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    .line 12
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    .line 13
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 14
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 3

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 43
    iput-wide v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->timestampNs_:J

    .line 44
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->type_:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->applyDisplayFromSensorRotation_:Z

    .line 47
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->cachedSize:I

    return-object p0
.end method

.method public final clearApplyDisplayFromSensorRotation()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 1

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->applyDisplayFromSensorRotation_:Z

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    return-object p0
.end method

.method public final clearTimestampNs()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 2

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->timestampNs_:J

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    return-object p0
.end method

.method public final clearType()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->type_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->clone()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

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

    .line 108
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->clone()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 2

    .line 50
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Session$Pose;->clone()Lcom/google/vr/sdk/proto/nano/Session$Pose;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 53
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

    .line 110
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->clone()Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 67
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 68
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 69
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->timestampNs_:J

    .line 70
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 72
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->type_:I

    .line 73
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 76
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 78
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->applyDisplayFromSensorRotation_:Z

    .line 79
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final getApplyDisplayFromSensorRotation()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->applyDisplayFromSensorRotation_:Z

    return v0
.end method

.method public final getTimestampNs()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->timestampNs_:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->type_:I

    return v0
.end method

.method public final hasApplyDisplayFromSensorRotation()Z
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTimestampNs()Z
    .locals 2

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasType()Z
    .locals 1

    .line 27
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

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

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 3
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

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 84
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 102
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->applyDisplayFromSensorRotation_:Z

    .line 103
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    if-nez v0, :cond_3

    .line 99
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$Pose;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$Pose;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 89
    :cond_4
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    .line 90
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 91
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->checkTypeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->type_:I

    .line 92
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->timestampNs_:J

    .line 87
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final setApplyDisplayFromSensorRotation(Z)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    .line 37
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->applyDisplayFromSensorRotation_:Z

    return-object p0
.end method

.method public final setTimestampNs(J)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    .line 21
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->timestampNs_:J

    return-object p0
.end method

.method public final setType(I)Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;
    .locals 0

    .line 24
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->type_:I

    .line 25
    iget p1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 58
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->timestampNs_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 59
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 60
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->type_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->headRecenterPoseInTrackingSpace:Lcom/google/vr/sdk/proto/nano/Session$Pose;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 62
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 63
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 64
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$RecenteredState;->applyDisplayFromSensorRotation_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 65
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
