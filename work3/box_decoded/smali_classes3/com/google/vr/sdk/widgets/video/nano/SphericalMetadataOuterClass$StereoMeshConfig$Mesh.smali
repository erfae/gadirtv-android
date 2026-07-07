.class public final Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SphericalMetadataOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mesh"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;,
        Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$GeometryType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;


# instance fields
.field public geometryType:I

.field public vertices:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->clear()Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    return-void
.end method

.method public static checkGeometryTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum GeometryType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkGeometryTypeOrThrow([I)[I
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
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->checkGeometryTypeOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;
    .locals 2

    .line 9
    sget-object v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    .line 12
    sput-object v1, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

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
    sget-object v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->_emptyArray:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;
    .locals 1

    .line 18
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;->emptyArray()[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->vertices:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->geometryType:I

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 33
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->vertices:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 35
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->vertices:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 36
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 39
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->geometryType:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 43
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;
    .locals 5
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

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 48
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 66
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->checkGeometryTypeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->geometryType:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 51
    :cond_2
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->vertices:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 53
    new-array v4, v0, [Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    if-eqz v3, :cond_4

    .line 55
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_5

    .line 57
    new-instance v1, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;-><init>()V

    aput-object v1, v4, v3

    .line 58
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 59
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 61
    :cond_5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;-><init>()V

    aput-object v0, v4, v3

    .line 62
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 63
    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->vertices:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->vertices:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->vertices:[Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh$Vertex;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 25
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 27
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$StereoMeshConfig$Mesh;->geometryType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 31
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
