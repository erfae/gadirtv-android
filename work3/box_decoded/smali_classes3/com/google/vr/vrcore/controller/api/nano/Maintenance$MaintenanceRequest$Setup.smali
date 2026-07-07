.class public final Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup$Action;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;


# instance fields
.field private action_:I

.field private bitField0_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->clear()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    return-void
.end method

.method public static checkActionOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum Action"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkActionOrThrow([I)[I
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
    invoke-static {v2}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->checkActionOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static emptyArray()[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;
    .locals 2

    .line 9
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    .line 12
    sput-object v1, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

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
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;
    .locals 1

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->bitField0_:I

    .line 27
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->action_:I

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->cachedSize:I

    return-object p0
.end method

.method public final clearAction()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->bitField0_:I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->action_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

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

    .line 62
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;
    .locals 2

    .line 31
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 34
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

    .line 64
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->clone()Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 40
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 41
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 42
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->action_:I

    .line 43
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final getAction()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->action_:I

    return v0
.end method

.method public final hasAction()Z
    .locals 2

    .line 19
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->bitField0_:I

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

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 48
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 50
    :cond_1
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->bitField0_:I

    .line 51
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 52
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->checkActionOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->action_:I

    .line 53
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->bitField0_:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final setAction(I)Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;
    .locals 0

    .line 16
    iput p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->action_:I

    .line 17
    iget p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->bitField0_:I

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 37
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Maintenance$MaintenanceRequest$Setup;->action_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 38
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
