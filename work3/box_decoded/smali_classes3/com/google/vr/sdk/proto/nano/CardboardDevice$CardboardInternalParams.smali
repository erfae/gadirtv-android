.class public final Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/CardboardDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardboardInternalParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams$OrientationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;


# instance fields
.field private accelerometer_:Ljava/lang/String;

.field private bitField0_:I

.field public eyeOrientations:[I

.field private gyroscope_:Ljava/lang/String;

.field private screenCenterToLensDistance_:F

.field private xPpiOverride_:F

.field private yPpiOverride_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->clear()Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    return-void
.end method

.method public static checkOrientationTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum OrientationType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkOrientationTypeOrThrow([I)[I
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
    invoke-static {v2}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->checkOrientationTypeOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 2

    .line 9
    sget-object v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 12
    sput-object v1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

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
    sget-object v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 63
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    .line 65
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    .line 66
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    const-string v0, ""

    .line 67
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->cachedSize:I

    return-object p0
.end method

.method public final clearAccelerometer()Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    .line 42
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    return-object p0
.end method

.method public final clearGyroscope()Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    .line 52
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    return-object p0
.end method

.method public final clearScreenCenterToLensDistance()Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    return-object p0
.end method

.method public final clearXPpiOverride()Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    return-object p0
.end method

.method public final clearYPpiOverride()Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

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

    .line 207
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 3

    .line 72
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 77
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 75
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

    .line 209
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 103
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 106
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 107
    aget v3, v3, v1

    .line 109
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 114
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 116
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    .line 117
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 119
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    .line 120
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_3
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 122
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    .line 123
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_4
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 125
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    .line 126
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_5
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 128
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    .line 129
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public final getAccelerometer()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    return-object v0
.end method

.method public final getGyroscope()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreenCenterToLensDistance()F
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    return v0
.end method

.method public final getXPpiOverride()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    return v0
.end method

.method public final getYPpiOverride()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    return v0
.end method

.method public final hasAccelerometer()Z
    .locals 1

    .line 40
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasGyroscope()Z
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasScreenCenterToLensDistance()Z
    .locals 2

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasXPpiOverride()Z
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasYPpiOverride()Z
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

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

    .line 208
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    const/16 v3, 0xa

    if-eq v0, v3, :cond_6

    const/16 v2, 0x15

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_4

    const/16 v2, 0x25

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_2

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    .line 134
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    .line 202
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    .line 199
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    .line 196
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto :goto_0

    .line 192
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    .line 193
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto :goto_0

    .line 189
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    .line 190
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto :goto_0

    .line 161
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 162
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 164
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    const/4 v4, 0x0

    .line 165
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_7

    .line 166
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->checkOrientationTypeOrThrow(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_b

    .line 172
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 173
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-nez v3, :cond_8

    const/4 v5, 0x0

    goto :goto_2

    :cond_8
    array-length v5, v3

    :goto_2
    add-int/2addr v4, v5

    .line 174
    new-array v4, v4, [I

    if-eqz v5, :cond_9

    .line 176
    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v2

    if-lez v2, :cond_a

    .line 178
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 179
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    invoke-static {v3}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->checkOrientationTypeOrThrow(I)I

    move-result v3

    aput v3, v4, v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 183
    :catch_1
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 184
    invoke-virtual {p0, p1, v1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_3

    .line 186
    :cond_a
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    .line 187
    :cond_b
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 137
    :cond_c
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 138
    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    if-ge v4, v1, :cond_e

    if-eqz v4, :cond_d

    .line 142
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 143
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v6

    .line 144
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->checkOrientationTypeOrThrow(I)I

    move-result v7

    aput v7, v3, v5
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 148
    :catch_2
    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_e
    if-eqz v5, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-nez v0, :cond_f

    const/4 v4, 0x0

    goto :goto_6

    :cond_f
    array-length v4, v0

    :goto_6
    if-nez v4, :cond_10

    if-ne v5, v1, :cond_10

    .line 154
    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    goto/16 :goto_0

    :cond_10
    add-int v1, v4, v5

    .line 155
    new-array v1, v1, [I

    if-eqz v4, :cond_11

    .line 157
    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    :cond_11
    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    goto/16 :goto_0

    :cond_12
    return-object p0
.end method

.method public final setAccelerometer(Ljava/lang/String;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 47
    iput-object p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    return-object p0
.end method

.method public final setGyroscope(Ljava/lang/String;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 57
    iput-object p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    return-object p0
.end method

.method public final setScreenCenterToLensDistance(F)Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 21
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    return-object p0
.end method

.method public final setXPpiOverride(F)Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 29
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    return-object p0
.end method

.method public final setYPpiOverride(F)Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 37
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 81
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 82
    aget v3, v3, v1

    .line 84
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 86
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 87
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 88
    :goto_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 89
    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 92
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 93
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 94
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 95
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 96
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 97
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    .line 98
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 99
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    .line 100
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 101
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
