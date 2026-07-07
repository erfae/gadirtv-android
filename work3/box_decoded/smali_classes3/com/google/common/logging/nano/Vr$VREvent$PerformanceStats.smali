.class public final Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
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
    name = "PerformanceStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public averageAppFps:Ljava/lang/Float;

.field public averageFps:Ljava/lang/Integer;

.field public batteryShutdownTemperature:[F

.field public batteryThrottlingTemperature:[F

.field public consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public cpuShutdownTemperature:[F

.field public cpuThrottlingTemperature:[F

.field public edsFps:Ljava/lang/Float;

.field public frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public gpuShutdownTemperature:[F

.field public gpuThrottlingTemperature:[F

.field public layerSizeRoundingIncrement:Ljava/lang/Integer;

.field public maxNumLayers:Ljava/lang/Integer;

.field public memoryConsumptionKilobytes:Ljava/lang/Integer;

.field public postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public renderTargetSizes:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

.field public scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public shutdownSkinTemperatureCelsius:Ljava/lang/Float;

.field public thermalEventFlags:Ljava/lang/Integer;

.field public throttleSkinTemperatureCelsius:Ljava/lang/Float;

.field public timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

.field public totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public vrMaxSkinTemperatureCelsius:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clear()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    .locals 2

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    .line 5
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    .line 9
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 11
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 12
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 13
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 14
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 15
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 16
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 17
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    .line 18
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    .line 19
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    .line 20
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    .line 21
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    .line 22
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    .line 23
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    .line 24
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageAppFps:Ljava/lang/Float;

    .line 25
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->edsFps:Ljava/lang/Float;

    .line 26
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->layerSizeRoundingIncrement:Ljava/lang/Integer;

    .line 27
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->maxNumLayers:Ljava/lang/Integer;

    .line 28
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->renderTargetSizes:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    .line 29
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    .locals 5

    .line 32
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 37
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v1, 0x0

    .line 38
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 39
    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    .line 40
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_4

    array-length v3, v1

    if-lez v3, :cond_4

    .line 45
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v1, 0x0

    .line 46
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 47
    aget-object v4, v3, v1

    if-eqz v4, :cond_3

    .line 48
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_6

    array-length v3, v1

    if-lez v3, :cond_6

    .line 51
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v1, 0x0

    .line 52
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_6

    .line 53
    aget-object v4, v3, v1

    if-eqz v4, :cond_5

    .line 54
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 56
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_8

    array-length v3, v1

    if-lez v3, :cond_8

    .line 57
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v1, 0x0

    .line 58
    :goto_3
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_8

    .line 59
    aget-object v4, v3, v1

    if-eqz v4, :cond_7

    .line 60
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 62
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_a

    array-length v3, v1

    if-lez v3, :cond_a

    .line 63
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v1, 0x0

    .line 64
    :goto_4
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_a

    .line 65
    aget-object v4, v3, v1

    if-eqz v4, :cond_9

    .line 66
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 68
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_c

    array-length v3, v1

    if-lez v3, :cond_c

    .line 69
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v1, 0x0

    .line 70
    :goto_5
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_c

    .line 71
    aget-object v4, v3, v1

    if-eqz v4, :cond_b

    .line 72
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 74
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_e

    array-length v3, v1

    if-lez v3, :cond_e

    .line 75
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v1, 0x0

    .line 76
    :goto_6
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_e

    .line 77
    aget-object v4, v3, v1

    if-eqz v4, :cond_d

    .line 78
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 80
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-eqz v1, :cond_f

    array-length v3, v1

    if-lez v3, :cond_f

    .line 81
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    .line 82
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-eqz v1, :cond_10

    array-length v3, v1

    if-lez v3, :cond_10

    .line 83
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    .line 84
    :cond_10
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-eqz v1, :cond_11

    array-length v3, v1

    if-lez v3, :cond_11

    .line 85
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    .line 86
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-eqz v1, :cond_12

    array-length v3, v1

    if-lez v3, :cond_12

    .line 87
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    .line 88
    :cond_12
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-eqz v1, :cond_13

    array-length v3, v1

    if-lez v3, :cond_13

    .line 89
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    .line 90
    :cond_13
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-eqz v1, :cond_14

    array-length v3, v1

    if-lez v3, :cond_14

    .line 91
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    .line 92
    :cond_14
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->renderTargetSizes:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    if-eqz v1, :cond_16

    array-length v3, v1

    if-lez v3, :cond_16

    .line 93
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->renderTargetSizes:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    .line 94
    :goto_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->renderTargetSizes:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    array-length v3, v1

    if-ge v2, v3, :cond_16

    .line 95
    aget-object v3, v1, v2

    if-eqz v3, :cond_15

    .line 96
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->renderTargetSizes:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    move-result-object v1

    aput-object v1, v3, v2

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return-object v0

    :catch_0
    move-exception v0

    .line 35
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

    .line 615
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

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

    .line 616
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

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

    .line 618
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 8

    .line 195
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 200
    :goto_0
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v6, v5

    if-ge v1, v6, :cond_2

    .line 201
    aget-object v5, v5, v1

    if-eqz v5, :cond_1

    .line 204
    invoke-static {v3, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v5, 0x3

    .line 208
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 209
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    const/4 v5, 0x4

    if-eqz v1, :cond_4

    .line 211
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v1, :cond_5

    const/4 v6, 0x5

    .line 214
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v6, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v1, :cond_6

    const/4 v6, 0x6

    .line 217
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v6, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-eqz v1, :cond_7

    const/4 v6, 0x7

    .line 220
    invoke-static {v6, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    .line 222
    :goto_1
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v7, v6

    if-ge v1, v7, :cond_9

    .line 223
    aget-object v6, v6, v1

    if-eqz v6, :cond_8

    const/16 v7, 0x8

    .line 226
    invoke-static {v7, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 228
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_b

    array-length v1, v1

    if-lez v1, :cond_b

    const/4 v1, 0x0

    .line 229
    :goto_2
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v7, v6

    if-ge v1, v7, :cond_b

    .line 230
    aget-object v6, v6, v1

    if-eqz v6, :cond_a

    const/16 v7, 0x9

    .line 233
    invoke-static {v7, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 235
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_d

    array-length v1, v1

    if-lez v1, :cond_d

    const/4 v1, 0x0

    .line 236
    :goto_3
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v7, v6

    if-ge v1, v7, :cond_d

    .line 237
    aget-object v6, v6, v1

    if-eqz v6, :cond_c

    const/16 v7, 0xa

    .line 240
    invoke-static {v7, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 242
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_f

    array-length v1, v1

    if-lez v1, :cond_f

    const/4 v1, 0x0

    .line 243
    :goto_4
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v7, v6

    if-ge v1, v7, :cond_f

    .line 244
    aget-object v6, v6, v1

    if-eqz v6, :cond_e

    const/16 v7, 0xb

    .line 247
    invoke-static {v7, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 249
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_11

    array-length v1, v1

    if-lez v1, :cond_11

    const/4 v1, 0x0

    .line 250
    :goto_5
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v7, v6

    if-ge v1, v7, :cond_11

    .line 251
    aget-object v6, v6, v1

    if-eqz v6, :cond_10

    const/16 v7, 0xc

    .line 254
    invoke-static {v7, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 256
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_13

    array-length v1, v1

    if-lez v1, :cond_13

    const/4 v1, 0x0

    .line 257
    :goto_6
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v7, v6

    if-ge v1, v7, :cond_13

    .line 258
    aget-object v6, v6, v1

    if-eqz v6, :cond_12

    const/16 v7, 0xd

    .line 261
    invoke-static {v7, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 263
    :cond_13
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const/16 v6, 0xe

    .line 265
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_14
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-eqz v1, :cond_15

    array-length v6, v1

    if-lez v6, :cond_15

    .line 267
    array-length v6, v1

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v0, v6

    .line 269
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 270
    :cond_15
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-eqz v1, :cond_16

    array-length v2, v1

    if-lez v2, :cond_16

    .line 271
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 273
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 274
    :cond_16
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-eqz v1, :cond_17

    array-length v2, v1

    if-lez v2, :cond_17

    .line 275
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 277
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 278
    :cond_17
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-eqz v1, :cond_18

    array-length v2, v1

    if-lez v2, :cond_18

    .line 279
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 281
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 282
    :cond_18
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-eqz v1, :cond_19

    array-length v2, v1

    if-lez v2, :cond_19

    .line 283
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 285
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 286
    :cond_19
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-eqz v1, :cond_1a

    array-length v2, v1

    if-lez v2, :cond_1a

    .line 287
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 289
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 290
    :cond_1a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageAppFps:Ljava/lang/Float;

    if-eqz v1, :cond_1b

    const/16 v2, 0x15

    .line 292
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    :cond_1b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->edsFps:Ljava/lang/Float;

    if-eqz v1, :cond_1c

    const/16 v2, 0x16

    .line 295
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    :cond_1c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->layerSizeRoundingIncrement:Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    const/16 v2, 0x17

    .line 298
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    :cond_1d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->maxNumLayers:Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    const/16 v2, 0x18

    .line 301
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 302
    :cond_1e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->renderTargetSizes:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    if-eqz v1, :cond_20

    array-length v1, v1

    if-lez v1, :cond_20

    .line 303
    :goto_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->renderTargetSizes:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    array-length v2, v1

    if-ge v4, v2, :cond_20

    .line 304
    aget-object v1, v1, v4

    if-eqz v1, :cond_1f

    const/16 v2, 0x19

    .line 307
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_20
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 313
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0xca

    .line 601
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 602
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->renderTargetSizes:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    array-length v3, v2

    :goto_1
    add-int/2addr v0, v3

    .line 603
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    if-eqz v3, :cond_2

    .line 605
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3

    .line 607
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;-><init>()V

    aput-object v1, v4, v3

    .line 608
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 609
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 611
    :cond_3
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;-><init>()V

    aput-object v0, v4, v3

    .line 612
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 613
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->renderTargetSizes:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    goto :goto_0

    .line 598
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->maxNumLayers:Ljava/lang/Integer;

    goto :goto_0

    .line 596
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->layerSizeRoundingIncrement:Ljava/lang/Integer;

    goto :goto_0

    .line 594
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->edsFps:Ljava/lang/Float;

    goto :goto_0

    .line 592
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageAppFps:Ljava/lang/Float;

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xa5

    .line 567
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 568
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-nez v2, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    array-length v3, v2

    :goto_3
    add-int/2addr v0, v3

    .line 569
    new-array v4, v0, [F

    if-eqz v3, :cond_5

    .line 571
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_6

    .line 573
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 574
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 576
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 577
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    goto/16 :goto_0

    .line 579
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 580
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 581
    div-int/lit8 v0, v0, 0x4

    .line 582
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-nez v3, :cond_7

    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    array-length v4, v3

    :goto_5
    add-int/2addr v0, v4

    .line 583
    new-array v5, v0, [F

    if-eqz v4, :cond_8

    .line 585
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    if-ge v4, v0, :cond_9

    .line 587
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 589
    :cond_9
    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    .line 590
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x9d

    .line 541
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 542
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-nez v2, :cond_a

    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    array-length v3, v2

    :goto_7
    add-int/2addr v0, v3

    .line 543
    new-array v4, v0, [F

    if-eqz v3, :cond_b

    .line 545
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_8
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_c

    .line 547
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 548
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 550
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 551
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    goto/16 :goto_0

    .line 553
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 554
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 555
    div-int/lit8 v0, v0, 0x4

    .line 556
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-nez v3, :cond_d

    const/4 v4, 0x0

    goto :goto_9

    :cond_d
    array-length v4, v3

    :goto_9
    add-int/2addr v0, v4

    .line 557
    new-array v5, v0, [F

    if-eqz v4, :cond_e

    .line 559
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_a
    if-ge v4, v0, :cond_f

    .line 561
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 563
    :cond_f
    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    .line 564
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x95

    .line 515
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 516
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-nez v2, :cond_10

    const/4 v3, 0x0

    goto :goto_b

    :cond_10
    array-length v3, v2

    :goto_b
    add-int/2addr v0, v3

    .line 517
    new-array v4, v0, [F

    if-eqz v3, :cond_11

    .line 519
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_c
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_12

    .line 521
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 522
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 524
    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 525
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    goto/16 :goto_0

    .line 527
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 528
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 529
    div-int/lit8 v0, v0, 0x4

    .line 530
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-nez v3, :cond_13

    const/4 v4, 0x0

    goto :goto_d

    :cond_13
    array-length v4, v3

    :goto_d
    add-int/2addr v0, v4

    .line 531
    new-array v5, v0, [F

    if-eqz v4, :cond_14

    .line 533
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_e
    if-ge v4, v0, :cond_15

    .line 535
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 537
    :cond_15
    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    .line 538
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x8d

    .line 489
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 490
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-nez v2, :cond_16

    const/4 v3, 0x0

    goto :goto_f

    :cond_16
    array-length v3, v2

    :goto_f
    add-int/2addr v0, v3

    .line 491
    new-array v4, v0, [F

    if-eqz v3, :cond_17

    .line 493
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    :goto_10
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_18

    .line 495
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 496
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 498
    :cond_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 499
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    goto/16 :goto_0

    .line 501
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 502
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 503
    div-int/lit8 v0, v0, 0x4

    .line 504
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-nez v3, :cond_19

    const/4 v4, 0x0

    goto :goto_11

    :cond_19
    array-length v4, v3

    :goto_11
    add-int/2addr v0, v4

    .line 505
    new-array v5, v0, [F

    if-eqz v4, :cond_1a

    .line 507
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    :goto_12
    if-ge v4, v0, :cond_1b

    .line 509
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 511
    :cond_1b
    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    .line 512
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0x85

    .line 463
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 464
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-nez v2, :cond_1c

    const/4 v3, 0x0

    goto :goto_13

    :cond_1c
    array-length v3, v2

    :goto_13
    add-int/2addr v0, v3

    .line 465
    new-array v4, v0, [F

    if-eqz v3, :cond_1d

    .line 467
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    :goto_14
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_1e

    .line 469
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 470
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 472
    :cond_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 473
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    goto/16 :goto_0

    .line 475
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 476
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 477
    div-int/lit8 v0, v0, 0x4

    .line 478
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-nez v3, :cond_1f

    const/4 v4, 0x0

    goto :goto_15

    :cond_1f
    array-length v4, v3

    :goto_15
    add-int/2addr v0, v4

    .line 479
    new-array v5, v0, [F

    if-eqz v4, :cond_20

    .line 481
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_20
    :goto_16
    if-ge v4, v0, :cond_21

    .line 483
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 485
    :cond_21
    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    .line 486
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x7d

    .line 437
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 438
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-nez v2, :cond_22

    const/4 v3, 0x0

    goto :goto_17

    :cond_22
    array-length v3, v2

    :goto_17
    add-int/2addr v0, v3

    .line 439
    new-array v4, v0, [F

    if-eqz v3, :cond_23

    .line 441
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_23
    :goto_18
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_24

    .line 443
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 444
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 446
    :cond_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 447
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    goto/16 :goto_0

    .line 449
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 450
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 451
    div-int/lit8 v0, v0, 0x4

    .line 452
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-nez v3, :cond_25

    const/4 v4, 0x0

    goto :goto_19

    :cond_25
    array-length v4, v3

    :goto_19
    add-int/2addr v0, v4

    .line 453
    new-array v5, v0, [F

    if-eqz v4, :cond_26

    .line 455
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_26
    :goto_1a
    if-ge v4, v0, :cond_27

    .line 457
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 459
    :cond_27
    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    .line 460
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 434
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0x6a

    .line 420
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 421
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v2, :cond_28

    const/4 v3, 0x0

    goto :goto_1b

    :cond_28
    array-length v3, v2

    :goto_1b
    add-int/2addr v0, v3

    .line 422
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_29

    .line 424
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29
    :goto_1c
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_2a

    .line 426
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 427
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 428
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 430
    :cond_2a
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 431
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 432
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0x62

    .line 405
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 406
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v2, :cond_2b

    const/4 v3, 0x0

    goto :goto_1d

    :cond_2b
    array-length v3, v2

    :goto_1d
    add-int/2addr v0, v3

    .line 407
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_2c

    .line 409
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2c
    :goto_1e
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_2d

    .line 411
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 412
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 413
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 415
    :cond_2d
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 416
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 417
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    :sswitch_14
    const/16 v0, 0x5a

    .line 390
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 391
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v2, :cond_2e

    const/4 v3, 0x0

    goto :goto_1f

    :cond_2e
    array-length v3, v2

    :goto_1f
    add-int/2addr v0, v3

    .line 392
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_2f

    .line 394
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2f
    :goto_20
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_30

    .line 396
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 397
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 398
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 400
    :cond_30
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 401
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 402
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    :sswitch_15
    const/16 v0, 0x52

    .line 375
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 376
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v2, :cond_31

    const/4 v3, 0x0

    goto :goto_21

    :cond_31
    array-length v3, v2

    :goto_21
    add-int/2addr v0, v3

    .line 377
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_32

    .line 379
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_32
    :goto_22
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_33

    .line 381
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 382
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 383
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 385
    :cond_33
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 386
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 387
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    :sswitch_16
    const/16 v0, 0x4a

    .line 360
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 361
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v2, :cond_34

    const/4 v3, 0x0

    goto :goto_23

    :cond_34
    array-length v3, v2

    :goto_23
    add-int/2addr v0, v3

    .line 362
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_35

    .line 364
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_35
    :goto_24
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_36

    .line 366
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 367
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 368
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 370
    :cond_36
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 371
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 372
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    :sswitch_17
    const/16 v0, 0x42

    .line 345
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 346
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v2, :cond_37

    const/4 v3, 0x0

    goto :goto_25

    :cond_37
    array-length v3, v2

    :goto_25
    add-int/2addr v0, v3

    .line 347
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_38

    .line 349
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_38
    :goto_26
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_39

    .line 351
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 352
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 353
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 355
    :cond_39
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 356
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 357
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 340
    :sswitch_18
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-nez v0, :cond_3a

    .line 341
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 342
    :cond_3a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 338
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    goto/16 :goto_0

    .line 336
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    goto/16 :goto_0

    .line 334
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    goto/16 :goto_0

    .line 332
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_1d
    const/16 v0, 0x12

    .line 318
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 319
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v2, :cond_3b

    const/4 v3, 0x0

    goto :goto_27

    :cond_3b
    array-length v3, v2

    :goto_27
    add-int/2addr v0, v3

    .line 320
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_3c

    .line 322
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3c
    :goto_28
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3d

    .line 324
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 325
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 326
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 328
    :cond_3d
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 329
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 330
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 315
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_1f
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1f
        0x8 -> :sswitch_1e
        0x12 -> :sswitch_1d
        0x18 -> :sswitch_1c
        0x25 -> :sswitch_1b
        0x2d -> :sswitch_1a
        0x35 -> :sswitch_19
        0x3a -> :sswitch_18
        0x42 -> :sswitch_17
        0x4a -> :sswitch_16
        0x52 -> :sswitch_15
        0x5a -> :sswitch_14
        0x62 -> :sswitch_13
        0x6a -> :sswitch_12
        0x70 -> :sswitch_11
        0x7a -> :sswitch_10
        0x7d -> :sswitch_f
        0x82 -> :sswitch_e
        0x85 -> :sswitch_d
        0x8a -> :sswitch_c
        0x8d -> :sswitch_b
        0x92 -> :sswitch_a
        0x95 -> :sswitch_9
        0x9a -> :sswitch_8
        0x9d -> :sswitch_7
        0xa2 -> :sswitch_6
        0xa5 -> :sswitch_5
        0xad -> :sswitch_4
        0xb5 -> :sswitch_3
        0xb8 -> :sswitch_2
        0xc0 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

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

    .line 99
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 102
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 103
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 105
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    .line 108
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    .line 110
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v0, :cond_5

    const/4 v2, 0x5

    .line 112
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    .line 114
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 115
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-eqz v0, :cond_7

    const/4 v2, 0x7

    .line 116
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 117
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    .line 118
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_9

    .line 119
    aget-object v2, v2, v0

    if-eqz v2, :cond_8

    const/16 v3, 0x8

    .line 121
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_b

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    .line 124
    :goto_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_b

    .line 125
    aget-object v2, v2, v0

    if-eqz v2, :cond_a

    const/16 v3, 0x9

    .line 127
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 129
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    .line 130
    :goto_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_d

    .line 131
    aget-object v2, v2, v0

    if-eqz v2, :cond_c

    const/16 v3, 0xa

    .line 133
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 135
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_f

    array-length v0, v0

    if-lez v0, :cond_f

    const/4 v0, 0x0

    .line 136
    :goto_4
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_f

    .line 137
    aget-object v2, v2, v0

    if-eqz v2, :cond_e

    const/16 v3, 0xb

    .line 139
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 141
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_11

    array-length v0, v0

    if-lez v0, :cond_11

    const/4 v0, 0x0

    .line 142
    :goto_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_11

    .line 143
    aget-object v2, v2, v0

    if-eqz v2, :cond_10

    const/16 v3, 0xc

    .line 145
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 147
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_13

    array-length v0, v0

    if-lez v0, :cond_13

    const/4 v0, 0x0

    .line 148
    :goto_6
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_13

    .line 149
    aget-object v2, v2, v0

    if-eqz v2, :cond_12

    const/16 v3, 0xd

    .line 151
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 153
    :cond_13
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    const/16 v2, 0xe

    .line 154
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 155
    :cond_14
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-eqz v0, :cond_15

    array-length v0, v0

    if-lez v0, :cond_15

    const/4 v0, 0x0

    .line 156
    :goto_7
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_15

    const/16 v3, 0xf

    .line 157
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 159
    :cond_15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-eqz v0, :cond_16

    array-length v0, v0

    if-lez v0, :cond_16

    const/4 v0, 0x0

    .line 160
    :goto_8
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_16

    const/16 v3, 0x10

    .line 161
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 163
    :cond_16
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-eqz v0, :cond_17

    array-length v0, v0

    if-lez v0, :cond_17

    const/4 v0, 0x0

    .line 164
    :goto_9
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_17

    const/16 v3, 0x11

    .line 165
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 167
    :cond_17
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-eqz v0, :cond_18

    array-length v0, v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    .line 168
    :goto_a
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_18

    const/16 v3, 0x12

    .line 169
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 171
    :cond_18
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-eqz v0, :cond_19

    array-length v0, v0

    if-lez v0, :cond_19

    const/4 v0, 0x0

    .line 172
    :goto_b
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_19

    const/16 v3, 0x13

    .line 173
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 175
    :cond_19
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-eqz v0, :cond_1a

    array-length v0, v0

    if-lez v0, :cond_1a

    const/4 v0, 0x0

    .line 176
    :goto_c
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_1a

    const/16 v3, 0x14

    .line 177
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 179
    :cond_1a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageAppFps:Ljava/lang/Float;

    if-eqz v0, :cond_1b

    const/16 v2, 0x15

    .line 180
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 181
    :cond_1b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->edsFps:Ljava/lang/Float;

    if-eqz v0, :cond_1c

    const/16 v2, 0x16

    .line 182
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 183
    :cond_1c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->layerSizeRoundingIncrement:Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    const/16 v2, 0x17

    .line 184
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 185
    :cond_1d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->maxNumLayers:Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    const/16 v2, 0x18

    .line 186
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 187
    :cond_1e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->renderTargetSizes:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    if-eqz v0, :cond_20

    array-length v0, v0

    if-lez v0, :cond_20

    .line 188
    :goto_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->renderTargetSizes:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$RenderTargetSize;

    array-length v2, v0

    if-ge v1, v2, :cond_20

    .line 189
    aget-object v0, v0, v1

    if-eqz v0, :cond_1f

    const/16 v2, 0x19

    .line 191
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 193
    :cond_20
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
