.class public final Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
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
    name = "DeveloperPrefs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs$MotophoPatchMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;


# instance fields
.field private bitField0_:I

.field private captureEnabled_:Z

.field private dEPRECATEDGvrPlatformLibraryEnabled_:Z

.field private dEPRECATEDHeadTrackingServiceEnabled_:Z

.field private dEPRECATEDMotophoPatchEnabled_:Z

.field private developerLoggingEnabled_:Z

.field private forceUndistortedRendering_:Z

.field private frameTrackerEnabled_:Z

.field private motophoPatchMode_:I

.field private openglKhrDebugEnabled_:Z

.field private performanceHudEnabled_:Z

.field private performanceLoggingActivated_:Z

.field private performanceMonitoringEnabled_:Z

.field public safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

.field private sensorLoggingEnabled_:Z

.field public trackingConfigurationParams:Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 120
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->clear()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    return-void
.end method

.method public static checkMotophoPatchModeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum MotophoPatchMode"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkMotophoPatchModeOrThrow([I)[I
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
    invoke-static {v2}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->checkMotophoPatchModeOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 2

    .line 9
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    .line 12
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

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
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 287
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 2

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 123
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    .line 124
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    .line 125
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDMotophoPatchEnabled_:Z

    .line 126
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    .line 127
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->forceUndistortedRendering_:Z

    .line 128
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceHudEnabled_:Z

    .line 129
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDGvrPlatformLibraryEnabled_:Z

    .line 130
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDHeadTrackingServiceEnabled_:Z

    .line 131
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->captureEnabled_:Z

    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    .line 133
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->frameTrackerEnabled_:Z

    .line 134
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->motophoPatchMode_:I

    .line 135
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceLoggingActivated_:Z

    .line 136
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->openglKhrDebugEnabled_:Z

    .line 137
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->trackingConfigurationParams:Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    .line 138
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->cachedSize:I

    return-object p0
.end method

.method public final clearCaptureEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->captureEnabled_:Z

    .line 82
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearDEPRECATEDGvrPlatformLibraryEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDGvrPlatformLibraryEnabled_:Z

    .line 66
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearDEPRECATEDHeadTrackingServiceEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDHeadTrackingServiceEnabled_:Z

    .line 74
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearDEPRECATEDMotophoPatchEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDMotophoPatchEnabled_:Z

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearDeveloperLoggingEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    .line 42
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearForceUndistortedRendering()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->forceUndistortedRendering_:Z

    .line 50
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearFrameTrackerEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->frameTrackerEnabled_:Z

    .line 90
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearMotophoPatchMode()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .line 100
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->motophoPatchMode_:I

    return-object p0
.end method

.method public final clearOpenglKhrDebugEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->openglKhrDebugEnabled_:Z

    .line 114
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearPerformanceHudEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceHudEnabled_:Z

    .line 58
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearPerformanceLoggingActivated()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceLoggingActivated_:Z

    .line 106
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearPerformanceMonitoringEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final clearSensorLoggingEnabled()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

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

    .line 290
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 2

    .line 141
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->trackingConfigurationParams:Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->trackingConfigurationParams:Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 144
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

    .line 292
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->clone()Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 182
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 183
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 184
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    .line 185
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 187
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    .line 188
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 190
    iget-boolean v3, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDMotophoPatchEnabled_:Z

    .line 191
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 193
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    .line 194
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    :cond_3
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 196
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->forceUndistortedRendering_:Z

    .line 197
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    :cond_4
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 199
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceHudEnabled_:Z

    .line 200
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 201
    :cond_5
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 202
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDGvrPlatformLibraryEnabled_:Z

    .line 203
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_6
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 205
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDHeadTrackingServiceEnabled_:Z

    .line 206
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    :cond_7
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 208
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->captureEnabled_:Z

    .line 209
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    :cond_8
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 212
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 213
    :cond_9
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    .line 214
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->frameTrackerEnabled_:Z

    .line 215
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_a
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    .line 217
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->motophoPatchMode_:I

    .line 218
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    :cond_b
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_c

    const/16 v1, 0xd

    .line 220
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceLoggingActivated_:Z

    .line 221
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 222
    :cond_c
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_d

    const/16 v1, 0xe

    .line 223
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->openglKhrDebugEnabled_:Z

    .line 224
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_d
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->trackingConfigurationParams:Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    if-eqz v1, :cond_e

    const/16 v2, 0xf

    .line 227
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    return v0
.end method

.method public final getCaptureEnabled()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->captureEnabled_:Z

    return v0
.end method

.method public final getDEPRECATEDGvrPlatformLibraryEnabled()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDGvrPlatformLibraryEnabled_:Z

    return v0
.end method

.method public final getDEPRECATEDHeadTrackingServiceEnabled()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDHeadTrackingServiceEnabled_:Z

    return v0
.end method

.method public final getDEPRECATEDMotophoPatchEnabled()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDMotophoPatchEnabled_:Z

    return v0
.end method

.method public final getDeveloperLoggingEnabled()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    return v0
.end method

.method public final getForceUndistortedRendering()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->forceUndistortedRendering_:Z

    return v0
.end method

.method public final getFrameTrackerEnabled()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->frameTrackerEnabled_:Z

    return v0
.end method

.method public final getMotophoPatchMode()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->motophoPatchMode_:I

    return v0
.end method

.method public final getOpenglKhrDebugEnabled()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->openglKhrDebugEnabled_:Z

    return v0
.end method

.method public final getPerformanceHudEnabled()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceHudEnabled_:Z

    return v0
.end method

.method public final getPerformanceLoggingActivated()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceLoggingActivated_:Z

    return v0
.end method

.method public final getPerformanceMonitoringEnabled()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    return v0
.end method

.method public final getSensorLoggingEnabled()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    return v0
.end method

.method public final hasCaptureEnabled()Z
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDEPRECATEDGvrPlatformLibraryEnabled()Z
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDEPRECATEDHeadTrackingServiceEnabled()Z
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDEPRECATEDMotophoPatchEnabled()Z
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDeveloperLoggingEnabled()Z
    .locals 1

    .line 40
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasForceUndistortedRendering()Z
    .locals 1

    .line 48
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFrameTrackerEnabled()Z
    .locals 1

    .line 88
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMotophoPatchMode()Z
    .locals 1

    .line 99
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOpenglKhrDebugEnabled()Z
    .locals 1

    .line 112
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPerformanceHudEnabled()Z
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPerformanceLoggingActivated()Z
    .locals 1

    .line 104
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPerformanceMonitoringEnabled()Z
    .locals 2

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSensorLoggingEnabled()Z
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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

    .line 291
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 232
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 283
    :sswitch_0
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->trackingConfigurationParams:Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->trackingConfigurationParams:Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->trackingConfigurationParams:Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 280
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->openglKhrDebugEnabled_:Z

    .line 281
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto :goto_0

    .line 277
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceLoggingActivated_:Z

    .line 278
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto :goto_0

    .line 268
    :sswitch_3
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 269
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 270
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->checkMotophoPatchModeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->motophoPatchMode_:I

    .line 271
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 275
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 265
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->frameTrackerEnabled_:Z

    .line 266
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto :goto_0

    .line 261
    :sswitch_5
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    if-nez v0, :cond_2

    .line 262
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 258
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->captureEnabled_:Z

    .line 259
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto/16 :goto_0

    .line 255
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDHeadTrackingServiceEnabled_:Z

    .line 256
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto/16 :goto_0

    .line 252
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDGvrPlatformLibraryEnabled_:Z

    .line 253
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto/16 :goto_0

    .line 249
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceHudEnabled_:Z

    .line 250
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto/16 :goto_0

    .line 246
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->forceUndistortedRendering_:Z

    .line 247
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto/16 :goto_0

    .line 243
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    .line 244
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto/16 :goto_0

    .line 240
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDMotophoPatchEnabled_:Z

    .line 241
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto/16 :goto_0

    .line 237
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    .line 238
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto/16 :goto_0

    .line 234
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    .line 235
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    goto/16 :goto_0

    :sswitch_f
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x8 -> :sswitch_e
        0x10 -> :sswitch_d
        0x18 -> :sswitch_c
        0x20 -> :sswitch_b
        0x28 -> :sswitch_a
        0x30 -> :sswitch_9
        0x38 -> :sswitch_8
        0x40 -> :sswitch_7
        0x48 -> :sswitch_6
        0x52 -> :sswitch_5
        0x58 -> :sswitch_4
        0x60 -> :sswitch_3
        0x68 -> :sswitch_2
        0x70 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public final setCaptureEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .line 84
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 85
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->captureEnabled_:Z

    return-object p0
.end method

.method public final setDEPRECATEDGvrPlatformLibraryEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .line 68
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 69
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDGvrPlatformLibraryEnabled_:Z

    return-object p0
.end method

.method public final setDEPRECATEDHeadTrackingServiceEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .line 76
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 77
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDHeadTrackingServiceEnabled_:Z

    return-object p0
.end method

.method public final setDEPRECATEDMotophoPatchEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 37
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDMotophoPatchEnabled_:Z

    return-object p0
.end method

.method public final setDeveloperLoggingEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .line 44
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 45
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    return-object p0
.end method

.method public final setForceUndistortedRendering(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 53
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->forceUndistortedRendering_:Z

    return-object p0
.end method

.method public final setFrameTrackerEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .line 92
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 93
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->frameTrackerEnabled_:Z

    return-object p0
.end method

.method public final setMotophoPatchMode(I)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 0

    .line 96
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->motophoPatchMode_:I

    .line 97
    iget p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    return-object p0
.end method

.method public final setOpenglKhrDebugEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .line 116
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 117
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->openglKhrDebugEnabled_:Z

    return-object p0
.end method

.method public final setPerformanceHudEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .line 60
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 61
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceHudEnabled_:Z

    return-object p0
.end method

.method public final setPerformanceLoggingActivated(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .line 108
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 109
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceLoggingActivated_:Z

    return-object p0
.end method

.method public final setPerformanceMonitoringEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 21
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    return-object p0
.end method

.method public final setSensorLoggingEnabled(Z)Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    .line 29
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 151
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceMonitoringEnabled_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 152
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 153
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->sensorLoggingEnabled_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 154
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 155
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDMotophoPatchEnabled_:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 156
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 157
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->developerLoggingEnabled_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 158
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 159
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->forceUndistortedRendering_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 160
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 161
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceHudEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 162
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 163
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDGvrPlatformLibraryEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 164
    :cond_6
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 165
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->dEPRECATEDHeadTrackingServiceEnabled_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 166
    :cond_7
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 167
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->captureEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 168
    :cond_8
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->safetyCylinderParams:Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 169
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 170
    :cond_9
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 171
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->frameTrackerEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 172
    :cond_a
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    .line 173
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->motophoPatchMode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 174
    :cond_b
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    .line 175
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->performanceLoggingActivated_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 176
    :cond_c
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    .line 177
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->openglKhrDebugEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 178
    :cond_d
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;->trackingConfigurationParams:Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 179
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 180
    :cond_e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
