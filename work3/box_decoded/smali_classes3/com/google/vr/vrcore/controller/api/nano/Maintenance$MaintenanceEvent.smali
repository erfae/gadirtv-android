.class public final Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/nano/Maintenance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MaintenanceEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;,
        Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;


# instance fields
.field private bitField0_:I

.field private controllerId_:I

.field public otaEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

.field public setupEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->clear()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;

    .line 4
    sput-object v1, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;

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
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->bitField0_:I

    .line 19
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->controllerId_:I

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->setupEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    .line 21
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->otaEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    .line 22
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->cachedSize:I

    return-object p0
.end method

.method public final clearControllerId()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->controllerId_:I

    .line 10
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;

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

    .line 72
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;
    .locals 2

    .line 25
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->setupEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v1}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->setupEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->otaEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {v1}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->otaEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 28
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

    .line 74
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 42
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 43
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 44
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->controllerId_:I

    .line 45
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->setupEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 48
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->otaEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 51
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final getControllerId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->controllerId_:I

    return v0
.end method

.method public final hasControllerId()Z
    .locals 2

    .line 8
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->bitField0_:I

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

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;
    .locals 2
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

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 56
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->otaEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    if-nez v0, :cond_2

    .line 66
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;-><init>()V

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->otaEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->otaEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->setupEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    if-nez v0, :cond_4

    .line 62
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;-><init>()V

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->setupEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->setupEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 58
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->controllerId_:I

    .line 59
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->bitField0_:I

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final setControllerId(I)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->bitField0_:I

    .line 13
    iput p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->controllerId_:I

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 35
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->controllerId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->setupEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 37
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent;->otaEvent:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$OtaEvent;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 39
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 40
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
