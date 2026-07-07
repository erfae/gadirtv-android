.class public final Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecenterEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;


# instance fields
.field public timestampMs:Ljava/lang/Long;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->clear()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    .line 4
    sput-object v1, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

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
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->timestampMs:Ljava/lang/Long;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->type:Ljava/lang/Integer;

    .line 12
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;
    .locals 2

    .line 15
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 18
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

    .line 43
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

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

    .line 44
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

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

    .line 46
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 26
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 27
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->timestampMs:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 37
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->type:Ljava/lang/Integer;

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->timestampMs:Ljava/lang/Long;

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

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

    .line 20
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->timestampMs:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 24
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
