.class public Lcom/google/vr/cardboard/DisplaySynchronizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static final DEBUG:Z = false

.field public static final DISPLAY_ROTATION_REFRESH_INTERVAL_NANOS:J

.field private static final INVALID_DISPLAY_ROTATION:I = -0x1

.field private static final MIN_VALID_DISPLAY_REFRESH_RATE:F = 30.0f

.field private static final TAG:Ljava/lang/String; = "DisplaySynchronizer"


# instance fields
.field private volatile display:Landroid/view/Display;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private volatile displayRotationDegrees:I

.field private frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

.field private lastDisplayRotationUpdateTimeNanos:J

.field private volatile nativeDisplaySynchronizer:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/vr/cardboard/DisplaySynchronizer;->DISPLAY_ROTATION_REFRESH_INTERVAL_NANOS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->lastDisplayRotationUpdateTimeNanos:J

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    .line 6
    iget-wide v2, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0, p2}, Lcom/google/vr/cardboard/DisplaySynchronizer;->setDisplay(Landroid/view/Display;)V

    .line 9
    new-instance p1, Lcom/google/vr/cardboard/FrameMonitor;

    invoke-direct {p1, p0}, Lcom/google/vr/cardboard/FrameMonitor;-><init>(Landroid/view/Choreographer$FrameCallback;)V

    iput-object p1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

    .line 10
    invoke-virtual {p1}, Lcom/google/vr/cardboard/FrameMonitor;->init()V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Native DisplaySynchronizer creation failed, implementation unavailable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkNativeDisplaySynchronizer()V
    .locals 5

    .line 69
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DisplaySynchronizer has already been shut down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateDisplayProperties()V
    .locals 3

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    .line 73
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->display:Landroid/view/Display;

    invoke-static {v0}, Lcom/google/vr/cardboard/DisplayUtils;->getDisplayMetricsLandscape(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->equals(Landroid/util/DisplayMetrics;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_0

    .line 76
    iget-wide v1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    invoke-virtual {p0, v1, v2}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeOnMetricsChanged(J)V

    .line 77
    :cond_0
    iput-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayMetrics:Landroid/util/DisplayMetrics;

    :cond_1
    return-void
.end method


# virtual methods
.method public disableFrameMonitor()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/google/vr/cardboard/FrameMonitor;->shutdown()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

    :cond_0
    return-void
.end method

.method public doFrame(J)V
    .locals 7

    .line 53
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->checkNativeDisplaySynchronizer()V

    .line 54
    iget v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->lastDisplayRotationUpdateTimeNanos:J

    sub-long v0, p1, v0

    sget-wide v2, Lcom/google/vr/cardboard/DisplaySynchronizer;->DISPLAY_ROTATION_REFRESH_INTERVAL_NANOS:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const-string v0, "DisplaySynchronizer"

    const-string v2, "Unknown display rotation, defaulting to 0"

    .line 64
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput v1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    .line 62
    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    .line 60
    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x5a

    .line 58
    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    goto :goto_0

    .line 56
    :cond_4
    iput v1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    .line 66
    :goto_0
    iput-wide p1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->lastDisplayRotationUpdateTimeNanos:J

    .line 67
    :cond_5
    iget-wide v2, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    iget v6, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeUpdate(JJI)V

    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 29
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-string v0, "DisplaySynchronizer"

    const-string v1, "DisplaySynchronizer.shutdown() should be called to ensure resource cleanup"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 34
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->display:Landroid/view/Display;

    return-object v0
.end method

.method public getNativeDisplaySynchronizer()J
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->checkNativeDisplaySynchronizer()V

    .line 52
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    return-wide v0
.end method

.method protected native nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;)J
.end method

.method protected native nativeDestroy(J)V
.end method

.method protected native nativeOnMetricsChanged(J)V
.end method

.method protected native nativeReset(JJJ)V
.end method

.method protected native nativeUpdate(JJI)V
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->invalidateDisplayProperties()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/google/vr/cardboard/FrameMonitor;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->invalidateDisplayProperties()V

    .line 39
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/google/vr/cardboard/FrameMonitor;->onResume()V

    :cond_0
    return-void
.end method

.method public setDisplay(Landroid/view/Display;)V
    .locals 12

    .line 16
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->checkNativeDisplaySynchronizer()V

    .line 17
    iput-object p1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->display:Landroid/view/Display;

    .line 18
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->invalidateDisplayProperties()V

    .line 19
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const-wide/16 v1, 0x0

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 21
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, v0

    float-to-long v3, v3

    move-wide v8, v3

    goto :goto_0

    :cond_0
    move-wide v8, v1

    .line 24
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/view/Display;->getAppVsyncOffsetNanos()J

    move-result-wide v1

    :cond_1
    move-wide v10, v1

    .line 26
    iget-wide v6, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeReset(JJJ)V

    return-void
.end method

.method public shutdown()V
    .locals 5

    .line 44
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->onPause()V

    .line 46
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/google/vr/cardboard/FrameMonitor;->shutdown()V

    .line 48
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDestroy(J)V

    .line 49
    iput-wide v2, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    :cond_1
    return-void
.end method
