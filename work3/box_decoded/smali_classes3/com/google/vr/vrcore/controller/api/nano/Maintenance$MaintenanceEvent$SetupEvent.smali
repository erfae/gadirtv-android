.class public final Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;
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
    name = "SetupEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;,
        Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$EventType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;


# instance fields
.field private bitField0_:I

.field private debugMessage_:Ljava/lang/String;

.field public scanResults:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->clear()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    return-void
.end method

.method public static checkEventTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x3

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
    invoke-static {v2}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->checkEventTypeOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static emptyArray()[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;
    .locals 2

    .line 9
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    .line 12
    sput-object v1, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

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
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    .line 37
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->type_:I

    .line 38
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->emptyArray()[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->scanResults:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->debugMessage_:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->cachedSize:I

    return-object p0
.end method

.method public final clearDebugMessage()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;
    .locals 1

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->debugMessage_:Ljava/lang/String;

    .line 26
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    return-object p0
.end method

.method public final clearType()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->type_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

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

    .line 116
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;
    .locals 4

    .line 43
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->scanResults:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 48
    array-length v1, v1

    new-array v1, v1, [Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    iput-object v1, v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->scanResults:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    const/4 v1, 0x0

    .line 49
    :goto_0
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->scanResults:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 50
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 51
    iget-object v3, v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->scanResults:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 46
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

    .line 118
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 66
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 67
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 68
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->type_:I

    .line 69
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->scanResults:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 71
    :goto_0
    iget-object v3, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->scanResults:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 72
    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 75
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_2
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 78
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->debugMessage_:Ljava/lang/String;

    .line 79
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final getDebugMessage()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->debugMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->type_:I

    return v0
.end method

.method public final hasDebugMessage()Z
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

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
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

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

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;
    .locals 5
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

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 84
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->debugMessage_:Ljava/lang/String;

    .line 111
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->scanResults:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 98
    new-array v4, v0, [Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    if-eqz v3, :cond_4

    .line 100
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_5

    .line 102
    new-instance v1, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    invoke-direct {v1}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;-><init>()V

    aput-object v1, v4, v3

    .line 103
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 104
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 106
    :cond_5
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;-><init>()V

    aput-object v0, v4, v3

    .line 107
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 108
    iput-object v4, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->scanResults:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    goto :goto_0

    .line 86
    :cond_6
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    .line 87
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 88
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->checkEventTypeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->type_:I

    .line 89
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :cond_7
    return-object p0
.end method

.method public final setDebugMessage(Ljava/lang/String;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;
    .locals 1

    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    .line 31
    iput-object p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->debugMessage_:Ljava/lang/String;

    return-object p0
.end method

.method public final setType(I)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;
    .locals 0

    .line 16
    iput p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->type_:I

    .line 17
    iget p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 55
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->type_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->scanResults:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->scanResults:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent$ScanResult;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 58
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_2
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 63
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceEvent$SetupEvent;->debugMessage_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 64
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
