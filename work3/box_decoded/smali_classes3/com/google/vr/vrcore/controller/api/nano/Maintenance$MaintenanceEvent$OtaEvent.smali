.class public final Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OtaEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent$EventType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;


# instance fields
.field private bitField0_:I

.field private debugMessage_:Ljava/lang/String;

.field private progress_:F

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->clear()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    return-void
.end method

.method public static checkEventTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum EventType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkEventTypeOrThrow([I)[I
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
    invoke-static {v2}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->checkEventTypeOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static emptyArray()[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;
    .locals 2

    .line 9
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    .line 12
    sput-object v1, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

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
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;
    .locals 1

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    .line 45
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->type_:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->progress_:F

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->debugMessage_:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->cachedSize:I

    return-object p0
.end method

.method public final clearDebugMessage()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;
    .locals 1

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->debugMessage_:Ljava/lang/String;

    .line 34
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    return-object p0
.end method

.method public final clearProgress()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->progress_:F

    .line 26
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    return-object p0
.end method

.method public final clearType()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->type_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

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

    .line 98
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;
    .locals 2

    .line 51
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 54
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

    .line 100
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 64
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 65
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 66
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->type_:I

    .line 67
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_0
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 69
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->progress_:F

    .line 70
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_1
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 72
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->debugMessage_:Ljava/lang/String;

    .line 73
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final getDebugMessage()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->debugMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgress()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->progress_:F

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->type_:I

    return v0
.end method

.method public final hasDebugMessage()Z
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasProgress()Z
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasType()Z
    .locals 2

    .line 19
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

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

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 78
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->debugMessage_:Ljava/lang/String;

    .line 93
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->progress_:F

    .line 90
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    goto :goto_0

    .line 80
    :cond_3
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    .line 81
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->checkEventTypeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->type_:I

    .line 83
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final setDebugMessage(Ljava/lang/String;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;
    .locals 1

    .line 37
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    .line 39
    iput-object p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->debugMessage_:Ljava/lang/String;

    return-object p0
.end method

.method public final setProgress(F)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    .line 29
    iput p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->progress_:F

    return-object p0
.end method

.method public final setType(I)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;
    .locals 0

    .line 16
    iput p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->type_:I

    .line 17
    iget p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 57
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->type_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 58
    :cond_0
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 59
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->progress_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 60
    :cond_1
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 61
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->debugMessage_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 62
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
