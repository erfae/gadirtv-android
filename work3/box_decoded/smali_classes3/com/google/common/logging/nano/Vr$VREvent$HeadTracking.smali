.class public final Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeadTracking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;,
        Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public floorHeight:Ljava/lang/Float;

.field public headTrackingTimestamp:Ljava/lang/Long;

.field private oneof_safety_config_:I

.field public periodicReport:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

.field private safetyCylinderConfig:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

.field public sixDofFallbackReason:Ljava/lang/Integer;

.field public sixDofFallbackTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->oneof_safety_config_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->clear()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    return-void
.end method

.method public static checkFallBackReasonOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum FallBackReason"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;
    .locals 2

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->sixDofFallbackReason:Ljava/lang/Integer;

    .line 9
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->sixDofFallbackTimestamp:Ljava/lang/Long;

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->floorHeight:Ljava/lang/Float;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->headTrackingTimestamp:Ljava/lang/Long;

    .line 12
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->periodicReport:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->oneof_safety_config_:I

    .line 14
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->safetyCylinderConfig:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

    .line 15
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 16
    iput v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;
    .locals 2

    .line 18
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->periodicReport:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->periodicReport:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->safetyCylinderConfig:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->safetyCylinderConfig:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

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
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 41
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->sixDofFallbackReason:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->sixDofFallbackTimestamp:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 47
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->floorHeight:Ljava/lang/Float;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 50
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->headTrackingTimestamp:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 53
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->periodicReport:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 56
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_4
    iget v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->oneof_safety_config_:I

    if-nez v1, :cond_5

    const/4 v1, 0x6

    .line 58
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->safetyCylinderConfig:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

    .line 59
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/16 v1, 0x10

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    .line 64
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->safetyCylinderConfig:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

    if-nez v0, :cond_2

    .line 84
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->safetyCylinderConfig:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->safetyCylinderConfig:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->oneof_safety_config_:I

    goto :goto_0

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->periodicReport:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

    if-nez v0, :cond_4

    .line 80
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->periodicReport:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->periodicReport:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 77
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->headTrackingTimestamp:Ljava/lang/Long;

    goto :goto_0

    .line 75
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->floorHeight:Ljava/lang/Float;

    goto :goto_0

    .line 73
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->sixDofFallbackTimestamp:Ljava/lang/Long;

    goto :goto_0

    .line 66
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 67
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->checkFallBackReasonOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->sixDofFallbackReason:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->sixDofFallbackReason:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->sixDofFallbackTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 30
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->floorHeight:Ljava/lang/Float;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 32
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->headTrackingTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 34
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->periodicReport:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 37
    :cond_4
    iget v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->oneof_safety_config_:I

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 38
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->safetyCylinderConfig:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 39
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
