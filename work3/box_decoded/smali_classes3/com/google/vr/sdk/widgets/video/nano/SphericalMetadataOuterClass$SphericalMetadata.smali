.class public final Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SphericalMetadataOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SphericalMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata$FrameLayoutMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;


# instance fields
.field public frameLayoutMode:I

.field public initialViewHeadingDegrees:I

.field public initialViewPitchDegrees:I

.field public initialViewRollDegrees:I

.field public mesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->clear()Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    return-void
.end method

.method public static checkFrameLayoutModeOrThrow(I)I
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum FrameLayoutMode"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkFrameLayoutModeOrThrow([I)[I
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
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->checkFrameLayoutModeOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;
    .locals 2

    .line 9
    sget-object v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    .line 12
    sput-object v1, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

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
    sget-object v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewHeadingDegrees:I

    .line 19
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewPitchDegrees:I

    .line 20
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewRollDegrees:I

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->frameLayoutMode:I

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->mesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    .line 23
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 38
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 39
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewHeadingDegrees:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewPitchDegrees:I

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 44
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewRollDegrees:I

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    .line 47
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->frameLayoutMode:I

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    .line 50
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->mesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 53
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    .line 58
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->mesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->mesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->mesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 67
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->checkFrameLayoutModeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->frameLayoutMode:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewRollDegrees:I

    goto :goto_0

    .line 62
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewPitchDegrees:I

    goto :goto_0

    .line 60
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewHeadingDegrees:I

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewHeadingDegrees:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 28
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewPitchDegrees:I

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    .line 29
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 30
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->initialViewRollDegrees:I

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 32
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->frameLayoutMode:I

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    .line 33
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->mesh:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 35
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 36
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
