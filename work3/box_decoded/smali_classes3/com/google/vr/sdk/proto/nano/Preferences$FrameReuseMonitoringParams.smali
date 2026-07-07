.class public final Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameReuseMonitoringParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;


# instance fields
.field private bitField0_:I

.field private fadeInDurationMs_:J

.field private fadeOutDurationMs_:J

.field private failureProportion_:F

.field private frameWindowMs_:J

.field private promptUserToKillDelayMs_:J

.field private recoveryProportion_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->clear()Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;

    .line 4
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;

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
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 3

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->frameWindowMs_:J

    const/4 v2, 0x0

    .line 60
    iput v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->failureProportion_:F

    .line 61
    iput v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->recoveryProportion_:F

    .line 62
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->fadeInDurationMs_:J

    .line 63
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->fadeOutDurationMs_:J

    .line 64
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->promptUserToKillDelayMs_:J

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->cachedSize:I

    return-object p0
.end method

.method public final clearFadeInDurationMs()Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 2

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->fadeInDurationMs_:J

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    return-object p0
.end method

.method public final clearFadeOutDurationMs()Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 2

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->fadeOutDurationMs_:J

    .line 42
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    return-object p0
.end method

.method public final clearFailureProportion()Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->failureProportion_:F

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    return-object p0
.end method

.method public final clearFrameWindowMs()Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 2

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->frameWindowMs_:J

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    return-object p0
.end method

.method public final clearPromptUserToKillDelayMs()Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 2

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->promptUserToKillDelayMs_:J

    .line 50
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    return-object p0
.end method

.method public final clearRecoveryProportion()Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->recoveryProportion_:F

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;

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

    .line 133
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 2

    .line 68
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 71
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

    .line 135
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 87
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 88
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 89
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->frameWindowMs_:J

    .line 90
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 92
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->failureProportion_:F

    .line 93
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 95
    iget v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->recoveryProportion_:F

    .line 96
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 98
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->fadeInDurationMs_:J

    .line 99
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_3
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 101
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->fadeOutDurationMs_:J

    .line 102
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_4
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 104
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->promptUserToKillDelayMs_:J

    .line 105
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public final getFadeInDurationMs()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->fadeInDurationMs_:J

    return-wide v0
.end method

.method public final getFadeOutDurationMs()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->fadeOutDurationMs_:J

    return-wide v0
.end method

.method public final getFailureProportion()F
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->failureProportion_:F

    return v0
.end method

.method public final getFrameWindowMs()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->frameWindowMs_:J

    return-wide v0
.end method

.method public final getPromptUserToKillDelayMs()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->promptUserToKillDelayMs_:J

    return-wide v0
.end method

.method public final getRecoveryProportion()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->recoveryProportion_:F

    return v0
.end method

.method public final hasFadeInDurationMs()Z
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFadeOutDurationMs()Z
    .locals 1

    .line 40
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFailureProportion()Z
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFrameWindowMs()Z
    .locals 2

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPromptUserToKillDelayMs()Z
    .locals 1

    .line 48
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasRecoveryProportion()Z
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v2, 0x15

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_4

    const/16 v2, 0x20

    if-eq v0, v2, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 110
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 127
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->promptUserToKillDelayMs_:J

    .line 128
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->fadeOutDurationMs_:J

    .line 125
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->fadeInDurationMs_:J

    .line 122
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->recoveryProportion_:F

    .line 119
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->failureProportion_:F

    .line 116
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    goto :goto_0

    .line 112
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->frameWindowMs_:J

    .line 113
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final setFadeInDurationMs(J)Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    .line 37
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->fadeInDurationMs_:J

    return-object p0
.end method

.method public final setFadeOutDurationMs(J)Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 1

    .line 44
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    .line 45
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->fadeOutDurationMs_:J

    return-object p0
.end method

.method public final setFailureProportion(F)Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    .line 21
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->failureProportion_:F

    return-object p0
.end method

.method public final setFrameWindowMs(J)Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    .line 13
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->frameWindowMs_:J

    return-object p0
.end method

.method public final setPromptUserToKillDelayMs(J)Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    .line 53
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->promptUserToKillDelayMs_:J

    return-object p0
.end method

.method public final setRecoveryProportion(F)Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    .line 29
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->recoveryProportion_:F

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 74
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->frameWindowMs_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 75
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 76
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->failureProportion_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 77
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 78
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->recoveryProportion_:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 79
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 80
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->fadeInDurationMs_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 81
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 82
    iget-wide v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->fadeOutDurationMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 83
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 84
    iget-wide v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;->promptUserToKillDelayMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 85
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
