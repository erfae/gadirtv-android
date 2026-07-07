.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
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
    name = "VrCore"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$VrCore$LockScreenEvent;,
        Lcom/google/common/logging/nano/Vr$VREvent$VrCore$CaptureEvent;,
        Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;,
        Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrCore;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public captureEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$CaptureEvent;

.field public clientApiVersion:Ljava/lang/Integer;

.field public compositionType:Ljava/lang/Integer;

.field public controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

.field public controllerHandedness:Ljava/lang/Integer;

.field public dashboardEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

.field public errorCode:Ljava/lang/Integer;

.field public foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field public isInDemoMode:Ljava/lang/Boolean;

.field public lockScreenEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$LockScreenEvent;

.field public permission:Ljava/lang/Integer;

.field public previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field public vrSessionId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clear()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    return-void
.end method

.method public static checkCompositionTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    return p0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum CompositionType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkErrorCodeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x65

    if-lt p0, v0, :cond_1

    const/16 v0, 0x81

    if-gt p0, v0, :cond_1

    return p0

    :cond_1
    const/16 v0, 0x97

    if-lt p0, v0, :cond_2

    const/16 v0, 0x99

    if-gt p0, v0, :cond_2

    return p0

    :cond_2
    const/16 v0, 0xb0

    if-lt p0, v0, :cond_3

    const/16 v0, 0xc0

    if-gt p0, v0, :cond_3

    return p0

    :cond_3
    const/16 v0, 0xc9

    if-lt p0, v0, :cond_4

    const/16 v0, 0xcb

    if-gt p0, v0, :cond_4

    return p0

    :cond_4
    const/16 v0, 0x12d

    if-lt p0, v0, :cond_5

    if-gt p0, v0, :cond_5

    return p0

    :cond_5
    const/16 v0, 0x191

    if-lt p0, v0, :cond_6

    const/16 v0, 0x192

    if-gt p0, v0, :cond_6

    return p0

    :cond_6
    const/16 v0, 0x1f5

    if-lt p0, v0, :cond_7

    const/16 v0, 0x1f7

    if-gt p0, v0, :cond_7

    return p0

    :cond_7
    const/16 v0, 0x1fe

    if-lt p0, v0, :cond_8

    const/16 v0, 0x203

    if-gt p0, v0, :cond_8

    return p0

    :cond_8
    const/16 v0, 0x208

    if-lt p0, v0, :cond_9

    const/16 v0, 0x20d

    if-gt p0, v0, :cond_9

    return p0

    .line 21
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum ErrorCode"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkPermissionOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-gt p0, v0, :cond_0

    return p0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum Permission"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->vrSessionId:Ljava/lang/Long;

    .line 32
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->errorCode:Ljava/lang/Integer;

    .line 33
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->permission:Ljava/lang/Integer;

    .line 34
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 35
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    .line 36
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 37
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    .line 38
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->dashboardEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

    .line 39
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->isInDemoMode:Ljava/lang/Boolean;

    .line 40
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->captureEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$CaptureEvent;

    .line 41
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controllerHandedness:Ljava/lang/Integer;

    .line 42
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->lockScreenEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$LockScreenEvent;

    .line 43
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->compositionType:Ljava/lang/Integer;

    .line 44
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    .locals 2

    .line 47
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->dashboardEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

    if-eqz v1, :cond_3

    .line 58
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->dashboardEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->captureEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$CaptureEvent;

    if-eqz v1, :cond_4

    .line 60
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$CaptureEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$CaptureEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->captureEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$CaptureEvent;

    .line 61
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->lockScreenEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$LockScreenEvent;

    if-eqz v1, :cond_5

    .line 62
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$LockScreenEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$LockScreenEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->lockScreenEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$LockScreenEvent;

    :cond_5
    return-object v0

    :catch_0
    move-exception v0

    .line 50
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

    .line 191
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

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

    .line 192
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

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

    .line 194
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 92
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->errorCode:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->permission:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 98
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 101
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 104
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 107
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 110
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->dashboardEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 113
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->isInDemoMode:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 116
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->captureEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$CaptureEvent;

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 119
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controllerHandedness:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 122
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->vrSessionId:Ljava/lang/Long;

    if-eqz v1, :cond_a

    const/16 v2, 0xb

    .line 125
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->lockScreenEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$LockScreenEvent;

    if-eqz v1, :cond_b

    const/16 v2, 0xc

    .line 128
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->compositionType:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    .line 131
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 136
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 184
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 185
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->checkCompositionTypeOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->compositionType:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 189
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 180
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->lockScreenEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$LockScreenEvent;

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$LockScreenEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$LockScreenEvent;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->lockScreenEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$LockScreenEvent;

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->lockScreenEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$LockScreenEvent;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 178
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->vrSessionId:Ljava/lang/Long;

    goto :goto_0

    .line 176
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controllerHandedness:Ljava/lang/Integer;

    goto :goto_0

    .line 172
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->captureEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$CaptureEvent;

    if-nez v0, :cond_2

    .line 173
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$CaptureEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$CaptureEvent;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->captureEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$CaptureEvent;

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->captureEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$CaptureEvent;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 170
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->isInDemoMode:Ljava/lang/Boolean;

    goto :goto_0

    .line 166
    :sswitch_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->dashboardEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

    if-nez v0, :cond_3

    .line 167
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->dashboardEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->dashboardEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 162
    :sswitch_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    if-nez v0, :cond_4

    .line 163
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 158
    :sswitch_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v0, :cond_5

    .line 159
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 156
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 152
    :sswitch_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v0, :cond_6

    .line 153
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 145
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 146
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->checkPermissionOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->permission:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 149
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 138
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 139
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->checkErrorCodeOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->errorCode:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 142
    :catch_2
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :sswitch_d
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x1a -> :sswitch_a
        0x20 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x3a -> :sswitch_6
        0x40 -> :sswitch_5
        0x4a -> :sswitch_4
        0x50 -> :sswitch_3
        0x58 -> :sswitch_2
        0x62 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

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

    .line 64
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->errorCode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->permission:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 69
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 73
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 75
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 76
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->dashboardEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$DashboardEvent;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 77
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 78
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->isInDemoMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 79
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 80
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->captureEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$CaptureEvent;

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 81
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 82
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controllerHandedness:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 83
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 84
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->vrSessionId:Ljava/lang/Long;

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 85
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 86
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->lockScreenEvent:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$LockScreenEvent;

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 87
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 88
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->compositionType:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 90
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
