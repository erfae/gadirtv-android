.class public final Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SafetyCylinderConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public anchorWarningDistance:Ljava/lang/Float;

.field public collisionSphereRadius:Ljava/lang/Float;

.field public enterEventRadius:Ljava/lang/Float;

.field public exitEventRadius:Ljava/lang/Float;

.field public innerFogColor:[F

.field public innerRadius:Ljava/lang/Float;

.field public outerFogColor:[F

.field public outerRadius:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->clear()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;
    .locals 2

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->innerRadius:Ljava/lang/Float;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->outerRadius:Ljava/lang/Float;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->collisionSphereRadius:Ljava/lang/Float;

    .line 7
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->innerFogColor:[F

    .line 8
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->outerFogColor:[F

    .line 9
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->enterEventRadius:Ljava/lang/Float;

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->exitEventRadius:Ljava/lang/Float;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->anchorWarningDistance:Ljava/lang/Float;

    .line 12
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;
    .locals 3

    .line 15
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->innerFogColor:[F

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 20
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->innerFogColor:[F

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->outerFogColor:[F

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 22
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->outerFogColor:[F

    :cond_1
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

    .line 143
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

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

    .line 144
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

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

    .line 146
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 46
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->innerRadius:Ljava/lang/Float;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->outerRadius:Ljava/lang/Float;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 52
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->collisionSphereRadius:Ljava/lang/Float;

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    .line 55
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->innerFogColor:[F

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 57
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 59
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->outerFogColor:[F

    if-eqz v1, :cond_4

    array-length v3, v1

    if-lez v3, :cond_4

    .line 61
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 63
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 64
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->enterEventRadius:Ljava/lang/Float;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 66
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->exitEventRadius:Ljava/lang/Float;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 69
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->anchorWarningDistance:Ljava/lang/Float;

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 72
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 77
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 141
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->anchorWarningDistance:Ljava/lang/Float;

    goto :goto_0

    .line 139
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->exitEventRadius:Ljava/lang/Float;

    goto :goto_0

    .line 137
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->enterEventRadius:Ljava/lang/Float;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x2d

    .line 112
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 113
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->outerFogColor:[F

    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    array-length v3, v2

    :goto_1
    add-int/2addr v0, v3

    .line 114
    new-array v4, v0, [F

    if-eqz v3, :cond_2

    .line 116
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3

    .line 118
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 119
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 121
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 122
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->outerFogColor:[F

    goto :goto_0

    .line 124
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 125
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 126
    div-int/lit8 v0, v0, 0x4

    .line 127
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->outerFogColor:[F

    if-nez v3, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    array-length v4, v3

    :goto_3
    add-int/2addr v0, v4

    .line 128
    new-array v5, v0, [F

    if-eqz v4, :cond_5

    .line 130
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    if-ge v4, v0, :cond_6

    .line 132
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 134
    :cond_6
    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->outerFogColor:[F

    .line 135
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x25

    .line 86
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 87
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->innerFogColor:[F

    if-nez v2, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    array-length v3, v2

    :goto_5
    add-int/2addr v0, v3

    .line 88
    new-array v4, v0, [F

    if-eqz v3, :cond_8

    .line 90
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_9

    .line 92
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 93
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 95
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 96
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->innerFogColor:[F

    goto/16 :goto_0

    .line 98
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 99
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 100
    div-int/lit8 v0, v0, 0x4

    .line 101
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->innerFogColor:[F

    if-nez v3, :cond_a

    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    array-length v4, v3

    :goto_7
    add-int/2addr v0, v4

    .line 102
    new-array v5, v0, [F

    if-eqz v4, :cond_b

    .line 104
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_8
    if-ge v4, v0, :cond_c

    .line 106
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 108
    :cond_c
    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->innerFogColor:[F

    .line 109
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 83
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->collisionSphereRadius:Ljava/lang/Float;

    goto/16 :goto_0

    .line 81
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->outerRadius:Ljava/lang/Float;

    goto/16 :goto_0

    .line 79
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->innerRadius:Ljava/lang/Float;

    goto/16 :goto_0

    :sswitch_a
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xd -> :sswitch_9
        0x15 -> :sswitch_8
        0x1d -> :sswitch_7
        0x22 -> :sswitch_6
        0x25 -> :sswitch_5
        0x2a -> :sswitch_4
        0x2d -> :sswitch_3
        0x35 -> :sswitch_2
        0x3d -> :sswitch_1
        0x45 -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;

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

    .line 24
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->innerRadius:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->outerRadius:Ljava/lang/Float;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 27
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->collisionSphereRadius:Ljava/lang/Float;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 29
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->innerFogColor:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 31
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->innerFogColor:[F

    array-length v3, v2

    if-ge v0, v3, :cond_3

    const/4 v3, 0x4

    .line 32
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->outerFogColor:[F

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    .line 35
    :goto_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->outerFogColor:[F

    array-length v2, v0

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 36
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->enterEventRadius:Ljava/lang/Float;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 39
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 40
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->exitEventRadius:Ljava/lang/Float;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 41
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 42
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$SafetyCylinderConfig;->anchorWarningDistance:Ljava/lang/Float;

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 43
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 44
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
