.class public final Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
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
    name = "SafetyCylinderParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;


# instance fields
.field private anchorWarningDistance_:F

.field private bitField0_:I

.field private collisionSphereRadius_:F

.field private enterEventRadius_:F

.field private exitEventRadius_:F

.field private graphicsEnabled_:Z

.field public innerFogColor:[F

.field private innerRadius_:F

.field public outerFogColor:[F

.field private outerRadius_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->clear()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    .line 4
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

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
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 2

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->collisionSphereRadius_:F

    .line 68
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerRadius_:F

    .line 69
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerRadius_:F

    .line 70
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    .line 71
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    .line 72
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->enterEventRadius_:F

    .line 73
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->exitEventRadius_:F

    .line 74
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->anchorWarningDistance_:F

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->graphicsEnabled_:Z

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->cachedSize:I

    return-object p0
.end method

.method public final clearAnchorWarningDistance()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->anchorWarningDistance_:F

    .line 50
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    return-object p0
.end method

.method public final clearCollisionSphereRadius()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->collisionSphereRadius_:F

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    return-object p0
.end method

.method public final clearEnterEventRadius()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->enterEventRadius_:F

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    return-object p0
.end method

.method public final clearExitEventRadius()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->exitEventRadius_:F

    .line 42
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    return-object p0
.end method

.method public final clearGraphicsEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->graphicsEnabled_:Z

    .line 58
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    return-object p0
.end method

.method public final clearInnerRadius()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerRadius_:F

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    return-object p0
.end method

.method public final clearOuterRadius()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerRadius_:F

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

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

    .line 224
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 3

    .line 79
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 84
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 86
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 82
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

    .line 226
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 112
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 113
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 114
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->collisionSphereRadius_:F

    .line 115
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 117
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerRadius_:F

    .line 118
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 120
    iget v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerRadius_:F

    .line 121
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 123
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 125
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    if-eqz v1, :cond_4

    array-length v3, v1

    if-lez v3, :cond_4

    .line 127
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 129
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 130
    :cond_4
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 131
    iget v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->enterEventRadius_:F

    .line 132
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_5
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 134
    iget v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->exitEventRadius_:F

    .line 135
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_6
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_7

    .line 137
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->anchorWarningDistance_:F

    .line 138
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_7
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 140
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->graphicsEnabled_:Z

    .line 141
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    return v0
.end method

.method public final getAnchorWarningDistance()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->anchorWarningDistance_:F

    return v0
.end method

.method public final getCollisionSphereRadius()F
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->collisionSphereRadius_:F

    return v0
.end method

.method public final getEnterEventRadius()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->enterEventRadius_:F

    return v0
.end method

.method public final getExitEventRadius()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->exitEventRadius_:F

    return v0
.end method

.method public final getGraphicsEnabled()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->graphicsEnabled_:Z

    return v0
.end method

.method public final getInnerRadius()F
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerRadius_:F

    return v0
.end method

.method public final getOuterRadius()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerRadius_:F

    return v0
.end method

.method public final hasAnchorWarningDistance()Z
    .locals 1

    .line 48
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasCollisionSphereRadius()Z
    .locals 2

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEnterEventRadius()Z
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasExitEventRadius()Z
    .locals 1

    .line 40
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasGraphicsEnabled()Z
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasInnerRadius()Z
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOuterRadius()Z
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

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

    .line 225
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 146
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 218
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->graphicsEnabled_:Z

    .line 219
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    goto :goto_0

    .line 215
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->anchorWarningDistance_:F

    .line 216
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    goto :goto_0

    .line 212
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->exitEventRadius_:F

    .line 213
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    goto :goto_0

    .line 209
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->enterEventRadius_:F

    .line 210
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x2d

    .line 184
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 185
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    array-length v3, v2

    :goto_1
    add-int/2addr v0, v3

    .line 186
    new-array v4, v0, [F

    if-eqz v3, :cond_2

    .line 188
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3

    .line 190
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 191
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 193
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 194
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    goto :goto_0

    .line 196
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 197
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 198
    div-int/lit8 v0, v0, 0x4

    .line 199
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    if-nez v3, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    array-length v4, v3

    :goto_3
    add-int/2addr v0, v4

    .line 200
    new-array v5, v0, [F

    if-eqz v4, :cond_5

    .line 202
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    if-ge v4, v0, :cond_6

    .line 204
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 206
    :cond_6
    iput-object v5, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    .line 207
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x25

    .line 158
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 159
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    if-nez v2, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    array-length v3, v2

    :goto_5
    add-int/2addr v0, v3

    .line 160
    new-array v4, v0, [F

    if-eqz v3, :cond_8

    .line 162
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_9

    .line 164
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 165
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 167
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 168
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    goto/16 :goto_0

    .line 170
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 171
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 172
    div-int/lit8 v0, v0, 0x4

    .line 173
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    if-nez v3, :cond_a

    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    array-length v4, v3

    :goto_7
    add-int/2addr v0, v4

    .line 174
    new-array v5, v0, [F

    if-eqz v4, :cond_b

    .line 176
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_8
    if-ge v4, v0, :cond_c

    .line 178
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 180
    :cond_c
    iput-object v5, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    .line 181
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 154
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerRadius_:F

    .line 155
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    goto/16 :goto_0

    .line 151
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerRadius_:F

    .line 152
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    goto/16 :goto_0

    .line 148
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->collisionSphereRadius_:F

    .line 149
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    goto/16 :goto_0

    :sswitch_b
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xd -> :sswitch_a
        0x15 -> :sswitch_9
        0x1d -> :sswitch_8
        0x22 -> :sswitch_7
        0x25 -> :sswitch_6
        0x2a -> :sswitch_5
        0x2d -> :sswitch_4
        0x35 -> :sswitch_3
        0x3d -> :sswitch_2
        0x45 -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setAnchorWarningDistance(F)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    .line 53
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->anchorWarningDistance_:F

    return-object p0
.end method

.method public final setCollisionSphereRadius(F)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    .line 13
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->collisionSphereRadius_:F

    return-object p0
.end method

.method public final setEnterEventRadius(F)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    .line 37
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->enterEventRadius_:F

    return-object p0
.end method

.method public final setExitEventRadius(F)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    .line 44
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    .line 45
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->exitEventRadius_:F

    return-object p0
.end method

.method public final setGraphicsEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    .line 60
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    .line 61
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->graphicsEnabled_:Z

    return-object p0
.end method

.method public final setInnerRadius(F)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    .line 21
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerRadius_:F

    return-object p0
.end method

.method public final setOuterRadius(F)Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    .line 29
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerRadius_:F

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 89
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->collisionSphereRadius_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 90
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 91
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerRadius_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 92
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 93
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerRadius_:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 95
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->innerFogColor:[F

    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 96
    aget v3, v3, v0

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->outerFogColor:[F

    array-length v1, v0

    if-ge v2, v1, :cond_4

    const/4 v1, 0x5

    .line 100
    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 103
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->enterEventRadius_:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 104
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 105
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->exitEventRadius_:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 106
    :cond_6
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    .line 107
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->anchorWarningDistance_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 108
    :cond_7
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 109
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->graphicsEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 110
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
