.class public final Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScanResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;


# instance fields
.field private bitField0_:I

.field private controllerName_:Ljava/lang/String;

.field private deviceIdentifier_:Ljava/lang/String;

.field private quality_:I

.field private scannerId_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->clear()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    .line 4
    sput-object v1, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

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
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    .locals 2

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    .line 47
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->scannerId_:I

    const-string v1, ""

    .line 48
    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->controllerName_:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->deviceIdentifier_:Ljava/lang/String;

    .line 50
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->quality_:I

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->cachedSize:I

    return-object p0
.end method

.method public final clearControllerName()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    .locals 1

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->controllerName_:Ljava/lang/String;

    .line 18
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    return-object p0
.end method

.method public final clearDeviceIdentifier()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    .locals 1

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->deviceIdentifier_:Ljava/lang/String;

    .line 28
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    return-object p0
.end method

.method public final clearQuality()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    .locals 1

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->quality_:I

    .line 38
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    return-object p0
.end method

.method public final clearScannerId()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->scannerId_:I

    .line 10
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

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

    .line 103
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    .locals 2

    .line 54
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 57
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

    .line 105
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 69
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 70
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 71
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->scannerId_:I

    .line 72
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_0
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->controllerName_:Ljava/lang/String;

    .line 75
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_1
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 77
    iget-object v3, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->deviceIdentifier_:Ljava/lang/String;

    .line 78
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_2
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 80
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->quality_:I

    .line 81
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final getControllerName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->controllerName_:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceIdentifier()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->deviceIdentifier_:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuality()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->quality_:I

    return v0
.end method

.method public final getScannerId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->scannerId_:I

    return v0
.end method

.method public final hasControllerName()Z
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDeviceIdentifier()Z
    .locals 1

    .line 26
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasQuality()Z
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasScannerId()Z
    .locals 2

    .line 8
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

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

    .line 104
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v2, 0x12

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    .line 86
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->quality_:I

    .line 98
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->deviceIdentifier_:Ljava/lang/String;

    .line 95
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->controllerName_:Ljava/lang/String;

    .line 92
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->scannerId_:I

    .line 89
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final setControllerName(Ljava/lang/String;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    .locals 1

    .line 21
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    .line 23
    iput-object p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->controllerName_:Ljava/lang/String;

    return-object p0
.end method

.method public final setDeviceIdentifier(Ljava/lang/String;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    .locals 1

    .line 31
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    .line 33
    iput-object p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->deviceIdentifier_:Ljava/lang/String;

    return-object p0
.end method

.method public final setQuality(I)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    .locals 1

    .line 40
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    .line 41
    iput p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->quality_:I

    return-object p0
.end method

.method public final setScannerId(I)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    .line 13
    iput p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->scannerId_:I

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 60
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->scannerId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 61
    :cond_0
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->controllerName_:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 63
    :cond_1
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 64
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->deviceIdentifier_:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 65
    :cond_2
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 66
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->quality_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 67
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
