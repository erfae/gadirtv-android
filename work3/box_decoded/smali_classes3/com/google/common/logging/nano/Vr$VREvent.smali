.class public final Lcom/google/common/logging/nano/Vr$VREvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VREvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;,
        Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;,
        Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;,
        Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;,
        Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;,
        Lcom/google/common/logging/nano/Vr$VREvent$Vector2;,
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;,
        Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;,
        Lcom/google/common/logging/nano/Vr$VREvent$StreetView;,
        Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;,
        Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;,
        Lcom/google/common/logging/nano/Vr$VREvent$Launcher;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;,
        Lcom/google/common/logging/nano/Vr$VREvent$VrCore;,
        Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;,
        Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;,
        Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;,
        Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;,
        Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;,
        Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;,
        Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;,
        Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;,
        Lcom/google/common/logging/nano/Vr$VREvent$VrHome;,
        Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;,
        Lcom/google/common/logging/nano/Vr$VREvent$Eva;,
        Lcom/google/common/logging/nano/Vr$VREvent$Photos;,
        Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;,
        Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;,
        Lcom/google/common/logging/nano/Vr$VREvent$Transform;,
        Lcom/google/common/logging/nano/Vr$VREvent$Renderer;,
        Lcom/google/common/logging/nano/Vr$VREvent$Application;,
        Lcom/google/common/logging/nano/Vr$VREvent$LoggingOptInState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field public audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

.field public cohort:Ljava/lang/String;

.field public cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

.field public durationMs:Ljava/lang/Long;

.field public earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

.field public embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

.field public eva:Lcom/google/common/logging/nano/Vr$VREvent$Eva;

.field public eventSource:Ljava/lang/Integer;

.field public expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

.field public gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

.field public headMount:Lcom/google/common/logging/nano/VrBaseOuterClass$VrBase$HeadMount;

.field public headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

.field public installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field public jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

.field public keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

.field public launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

.field public lifetimeCountBucket:Ljava/lang/Integer;

.field public loggingOptInState:Lcom/google/common/logging/nano/Vr$VREvent$LoggingOptInState;

.field public lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

.field public performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

.field public phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

.field public photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

.field public qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

.field public renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

.field public sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

.field public sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

.field public standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

.field public streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

.field public vr180Creator:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

.field public vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

.field public vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

.field public vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent;->clear()Lcom/google/common/logging/nano/Vr$VREvent;

    return-void
.end method

.method public static checkBucketOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0xb

    if-lt p0, v0, :cond_1

    if-gt p0, v0, :cond_1

    return p0

    :cond_1
    const/16 v0, 0x15

    if-lt p0, v0, :cond_2

    if-gt p0, v0, :cond_2

    return p0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum Bucket"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkEventSourceOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum EventSource"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 444
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/common/logging/nano/Vr$VREvent;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 2

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eventSource:Ljava/lang/Integer;

    .line 15
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->loggingOptInState:Lcom/google/common/logging/nano/Vr$VREvent$LoggingOptInState;

    .line 16
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/VrBaseOuterClass$VrBase$HeadMount;

    .line 17
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 18
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    .line 19
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 20
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    .line 21
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 22
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    .line 24
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 25
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 26
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 27
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 28
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 29
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 30
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    .line 31
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 32
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    .line 33
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 34
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    .line 35
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    .line 36
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    .line 37
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 38
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 39
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 40
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    .line 41
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    .line 42
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    .line 43
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    .line 44
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    .line 45
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eva:Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    .line 46
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vr180Creator:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

    .line 47
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 4

    .line 50
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->loggingOptInState:Lcom/google/common/logging/nano/Vr$VREvent$LoggingOptInState;

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$LoggingOptInState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$LoggingOptInState;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->loggingOptInState:Lcom/google/common/logging/nano/Vr$VREvent$LoggingOptInState;

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/VrBaseOuterClass$VrBase$HeadMount;

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v1}, Lcom/google/common/logging/nano/VrBaseOuterClass$VrBase$HeadMount;->clone()Lcom/google/common/logging/nano/VrBaseOuterClass$VrBase$HeadMount;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/VrBaseOuterClass$VrBase$HeadMount;

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    .line 61
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$Application;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    const/4 v1, 0x0

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 63
    aget-object v3, v2, v1

    if-eqz v3, :cond_3

    .line 64
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-eqz v1, :cond_5

    .line 67
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    .line 68
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-eqz v1, :cond_6

    .line 69
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->clone()Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 70
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-eqz v1, :cond_7

    .line 71
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 72
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-eqz v1, :cond_8

    .line 73
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 74
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-eqz v1, :cond_9

    .line 75
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 76
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-eqz v1, :cond_a

    .line 77
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 78
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-eqz v1, :cond_b

    .line 79
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 80
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-eqz v1, :cond_c

    .line 81
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 82
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-eqz v1, :cond_d

    .line 83
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Launcher;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    .line 84
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-eqz v1, :cond_e

    .line 85
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 86
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-eqz v1, :cond_f

    .line 87
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    .line 88
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-eqz v1, :cond_10

    .line 89
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 90
    :cond_10
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-eqz v1, :cond_11

    .line 91
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    .line 92
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-eqz v1, :cond_12

    .line 93
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    .line 94
    :cond_12
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-eqz v1, :cond_13

    .line 95
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    .line 96
    :cond_13
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v1, :cond_14

    .line 97
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 98
    :cond_14
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v1, :cond_15

    .line 99
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 100
    :cond_15
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-eqz v1, :cond_16

    .line 101
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 102
    :cond_16
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    if-eqz v1, :cond_17

    .line 103
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    .line 104
    :cond_17
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    if-eqz v1, :cond_18

    .line 105
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    .line 106
    :cond_18
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    if-eqz v1, :cond_19

    .line 107
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    .line 108
    :cond_19
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    if-eqz v1, :cond_1a

    .line 109
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    .line 110
    :cond_1a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    if-eqz v1, :cond_1b

    .line 111
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    .line 112
    :cond_1b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eva:Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    if-eqz v1, :cond_1c

    .line 113
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->eva:Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    .line 114
    :cond_1c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vr180Creator:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

    if-eqz v1, :cond_1d

    .line 115
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->vr180Creator:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

    :cond_1d
    return-object v0

    :catch_0
    move-exception v0

    .line 53
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

    .line 445
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent;

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

    .line 446
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent;

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

    .line 448
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 189
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 190
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/VrBaseOuterClass$VrBase$HeadMount;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 192
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 195
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 198
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    .line 200
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 201
    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    .line 204
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 208
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 209
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 211
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 214
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 217
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 220
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 223
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-eqz v1, :cond_b

    const/16 v2, 0xb

    .line 226
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 229
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 230
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 232
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-eqz v1, :cond_e

    const/16 v2, 0xe

    .line 235
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    .line 238
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 239
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-eqz v1, :cond_10

    const/16 v2, 0x10

    .line 241
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    :cond_10
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-eqz v1, :cond_11

    const/16 v2, 0x11

    .line 244
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-eqz v1, :cond_12

    const/16 v2, 0x12

    .line 247
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_12
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-eqz v1, :cond_13

    const/16 v2, 0x13

    .line 250
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 251
    :cond_13
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-eqz v1, :cond_14

    const/16 v2, 0x14

    .line 253
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    :cond_14
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-eqz v1, :cond_15

    const/16 v2, 0x15

    .line 256
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    :cond_15
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v1, :cond_16

    const/16 v2, 0x16

    .line 259
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 260
    :cond_16
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v1, :cond_17

    const/16 v2, 0x17

    .line 262
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 263
    :cond_17
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-eqz v1, :cond_18

    const/16 v2, 0x18

    .line 265
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_18
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    if-eqz v1, :cond_19

    const/16 v2, 0x19

    .line 268
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_19
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    if-eqz v1, :cond_1a

    const/16 v2, 0x1a

    .line 271
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_1a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    if-eqz v1, :cond_1b

    const/16 v2, 0x1b

    .line 274
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 275
    :cond_1b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    if-eqz v1, :cond_1c

    const/16 v2, 0x1c

    .line 277
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 278
    :cond_1c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    if-eqz v1, :cond_1d

    const/16 v2, 0x1d

    .line 280
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 281
    :cond_1d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eventSource:Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    const/16 v2, 0x1e

    .line 283
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    :cond_1e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eva:Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    if-eqz v1, :cond_1f

    const/16 v2, 0x1f

    .line 286
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 287
    :cond_1f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->loggingOptInState:Lcom/google/common/logging/nano/Vr$VREvent$LoggingOptInState;

    if-eqz v1, :cond_20

    const/16 v2, 0x20

    .line 289
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    :cond_20
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vr180Creator:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

    if-eqz v1, :cond_21

    const/16 v2, 0x21

    .line 292
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 297
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 440
    :sswitch_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vr180Creator:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

    if-nez v0, :cond_1

    .line 441
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vr180Creator:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vr180Creator:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 436
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->loggingOptInState:Lcom/google/common/logging/nano/Vr$VREvent$LoggingOptInState;

    if-nez v0, :cond_2

    .line 437
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$LoggingOptInState;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$LoggingOptInState;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->loggingOptInState:Lcom/google/common/logging/nano/Vr$VREvent$LoggingOptInState;

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->loggingOptInState:Lcom/google/common/logging/nano/Vr$VREvent$LoggingOptInState;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 432
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eva:Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    if-nez v0, :cond_3

    .line 433
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eva:Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    .line 434
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eva:Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 425
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 426
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent;->checkEventSourceOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eventSource:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 430
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 421
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    if-nez v0, :cond_4

    .line 422
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    .line 423
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 417
    :sswitch_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    if-nez v0, :cond_5

    .line 418
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    .line 419
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 413
    :sswitch_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    if-nez v0, :cond_6

    .line 414
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    .line 415
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 409
    :sswitch_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    if-nez v0, :cond_7

    .line 410
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    .line 411
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 405
    :sswitch_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    if-nez v0, :cond_8

    .line 406
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    .line 407
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 401
    :sswitch_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-nez v0, :cond_9

    .line 402
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 403
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 397
    :sswitch_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-nez v0, :cond_a

    .line 398
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 399
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 393
    :sswitch_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-nez v0, :cond_b

    .line 394
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 395
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 389
    :sswitch_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-nez v0, :cond_c

    .line 390
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    .line 391
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 385
    :sswitch_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-nez v0, :cond_d

    .line 386
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    .line 387
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 381
    :sswitch_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-nez v0, :cond_e

    .line 382
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    .line 383
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 377
    :sswitch_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-nez v0, :cond_f

    .line 378
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 379
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 373
    :sswitch_10
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-nez v0, :cond_10

    .line 374
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    .line 375
    :cond_10
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 369
    :sswitch_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-nez v0, :cond_11

    .line 370
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 371
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 365
    :sswitch_12
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-nez v0, :cond_12

    .line 366
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Launcher;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    .line 367
    :cond_12
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 361
    :sswitch_13
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-nez v0, :cond_13

    .line 362
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 363
    :cond_13
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 357
    :sswitch_14
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-nez v0, :cond_14

    .line 358
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 359
    :cond_14
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 353
    :sswitch_15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-nez v0, :cond_15

    .line 354
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 355
    :cond_15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 349
    :sswitch_16
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-nez v0, :cond_16

    .line 350
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 351
    :cond_16
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 345
    :sswitch_17
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-nez v0, :cond_17

    .line 346
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 347
    :cond_17
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 341
    :sswitch_18
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-nez v0, :cond_18

    .line 342
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 343
    :cond_18
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 334
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 335
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent;->checkBucketOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 338
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 339
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 332
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    goto/16 :goto_0

    .line 328
    :sswitch_1b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-nez v0, :cond_19

    .line 329
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 330
    :cond_19
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 324
    :sswitch_1c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-nez v0, :cond_1a

    .line 325
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    .line 326
    :cond_1a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_1d
    const/16 v0, 0x22

    .line 310
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    const/4 v3, 0x0

    goto :goto_1

    :cond_1b
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 312
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v3, :cond_1c

    .line 314
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_1d

    .line 316
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    aput-object v1, v4, v3

    .line 317
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 318
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 320
    :cond_1d
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    aput-object v0, v4, v3

    .line 321
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 322
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    goto/16 :goto_0

    .line 307
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    goto/16 :goto_0

    .line 303
    :sswitch_1f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v0, :cond_1e

    .line 304
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 305
    :cond_1e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 299
    :sswitch_20
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/VrBaseOuterClass$VrBase$HeadMount;

    if-nez v0, :cond_1f

    .line 300
    new-instance v0, Lcom/google/common/logging/nano/VrBaseOuterClass$VrBase$HeadMount;

    invoke-direct {v0}, Lcom/google/common/logging/nano/VrBaseOuterClass$VrBase$HeadMount;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/VrBaseOuterClass$VrBase$HeadMount;

    .line 301
    :cond_1f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/VrBaseOuterClass$VrBase$HeadMount;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_21
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_21
        0xa -> :sswitch_20
        0x12 -> :sswitch_1f
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_1d
        0x2a -> :sswitch_1c
        0x32 -> :sswitch_1b
        0x3a -> :sswitch_1a
        0x40 -> :sswitch_19
        0x4a -> :sswitch_18
        0x52 -> :sswitch_17
        0x5a -> :sswitch_16
        0x62 -> :sswitch_15
        0x6a -> :sswitch_14
        0x72 -> :sswitch_13
        0x7a -> :sswitch_12
        0x82 -> :sswitch_11
        0x8a -> :sswitch_10
        0x92 -> :sswitch_f
        0x9a -> :sswitch_e
        0xa2 -> :sswitch_d
        0xaa -> :sswitch_c
        0xb2 -> :sswitch_b
        0xba -> :sswitch_a
        0xc2 -> :sswitch_9
        0xca -> :sswitch_8
        0xd2 -> :sswitch_7
        0xda -> :sswitch_6
        0xe2 -> :sswitch_5
        0xea -> :sswitch_4
        0xf0 -> :sswitch_3
        0xfa -> :sswitch_2
        0x102 -> :sswitch_1
        0x10a -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent;

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

    .line 117
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/VrBaseOuterClass$VrBase$HeadMount;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 118
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 120
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 122
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 125
    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 127
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    .line 130
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-eqz v0, :cond_6

    const/4 v1, 0x6

    .line 132
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 133
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/4 v1, 0x7

    .line 134
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 137
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-eqz v0, :cond_9

    const/16 v1, 0x9

    .line 138
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 139
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    .line 140
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 141
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-eqz v0, :cond_b

    const/16 v1, 0xb

    .line 142
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 143
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-eqz v0, :cond_c

    const/16 v1, 0xc

    .line 144
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 145
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-eqz v0, :cond_d

    const/16 v1, 0xd

    .line 146
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 147
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-eqz v0, :cond_e

    const/16 v1, 0xe

    .line 148
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 149
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-eqz v0, :cond_f

    const/16 v1, 0xf

    .line 150
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 151
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-eqz v0, :cond_10

    const/16 v1, 0x10

    .line 152
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 153
    :cond_10
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-eqz v0, :cond_11

    const/16 v1, 0x11

    .line 154
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 155
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-eqz v0, :cond_12

    const/16 v1, 0x12

    .line 156
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 157
    :cond_12
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-eqz v0, :cond_13

    const/16 v1, 0x13

    .line 158
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 159
    :cond_13
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-eqz v0, :cond_14

    const/16 v1, 0x14

    .line 160
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 161
    :cond_14
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-eqz v0, :cond_15

    const/16 v1, 0x15

    .line 162
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 163
    :cond_15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v0, :cond_16

    const/16 v1, 0x16

    .line 164
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 165
    :cond_16
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v0, :cond_17

    const/16 v1, 0x17

    .line 166
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 167
    :cond_17
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-eqz v0, :cond_18

    const/16 v1, 0x18

    .line 168
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 169
    :cond_18
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    if-eqz v0, :cond_19

    const/16 v1, 0x19

    .line 170
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 171
    :cond_19
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    if-eqz v0, :cond_1a

    const/16 v1, 0x1a

    .line 172
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 173
    :cond_1a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    if-eqz v0, :cond_1b

    const/16 v1, 0x1b

    .line 174
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 175
    :cond_1b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    if-eqz v0, :cond_1c

    const/16 v1, 0x1c

    .line 176
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 177
    :cond_1c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    if-eqz v0, :cond_1d

    const/16 v1, 0x1d

    .line 178
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 179
    :cond_1d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eventSource:Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    const/16 v1, 0x1e

    .line 180
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 181
    :cond_1e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eva:Lcom/google/common/logging/nano/Vr$VREvent$Eva;

    if-eqz v0, :cond_1f

    const/16 v1, 0x1f

    .line 182
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 183
    :cond_1f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->loggingOptInState:Lcom/google/common/logging/nano/Vr$VREvent$LoggingOptInState;

    if-eqz v0, :cond_20

    const/16 v1, 0x20

    .line 184
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 185
    :cond_20
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vr180Creator:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

    if-eqz v0, :cond_21

    const/16 v1, 0x21

    .line 186
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 187
    :cond_21
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
