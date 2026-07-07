.class public final Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;
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
    name = "MaintenanceRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$FirmwareUpdate;,
        Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;


# instance fields
.field public firmwareUpdate:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$FirmwareUpdate;

.field public setup:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->clear()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;

    .line 4
    sput-object v1, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;

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
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->setup:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    .line 11
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->firmwareUpdate:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$FirmwareUpdate;

    .line 12
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->cachedSize:I

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
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;

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
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;
    .locals 2

    .line 15
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->setup:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {v1}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->setup:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->firmwareUpdate:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$FirmwareUpdate;

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {v1}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$FirmwareUpdate;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$FirmwareUpdate;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->firmwareUpdate:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$FirmwareUpdate;

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 18
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
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 30
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->setup:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 33
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->firmwareUpdate:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$FirmwareUpdate;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 36
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
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
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 41
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->firmwareUpdate:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$FirmwareUpdate;

    if-nez v0, :cond_2

    .line 48
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$FirmwareUpdate;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$FirmwareUpdate;-><init>()V

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->firmwareUpdate:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$FirmwareUpdate;

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->firmwareUpdate:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$FirmwareUpdate;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->setup:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    if-nez v0, :cond_4

    .line 44
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;-><init>()V

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->setup:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->setup:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->setup:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;->firmwareUpdate:Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$FirmwareUpdate;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 27
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 28
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
