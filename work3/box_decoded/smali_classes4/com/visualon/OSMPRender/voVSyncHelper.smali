.class public Lcom/visualon/OSMPRender/voVSyncHelper;
.super Ljava/lang/Object;
.source "voVSyncHelper.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final ADD:I = 0x1

.field private static final AFTM_VSYNC_OFFSET_PERCENT:J = 0x50L

.field private static final CREATE:I = 0x0

.field private static final DEFAULT:I = 0x0

.field private static final FORCE_ALAWAYS:I = 0x3

.field private static final FORCE_NO_VSYNC:I = 0x4

.field private static final FORCE_PARTIAL:I = 0x1

.field private static final IS_OK:I = 0x0

.field private static final IS_OVER_UNSYNC:I = 0x1

.field private static MIN_FRAME_THRES:I = 0x0

.field private static final PARTIAL_REVERSABLE:I = 0x2

.field private static final REMOVE:I = 0x2

.field private static final SAMPLE_DELAY_MS:J = 0x1f4L

.field private static final SCHEME_NOT_SET:I = -0x1

.field private static final TAG:Ljava/lang/String; = "@@@voVSyncHelper.java"

.field private static THRESHOLD_30FPS_NS:J = 0x0L

.field private static THRESHOLD_60FPS_NS:J = 0x0L

.field private static THRESHOLD_UNSYNC_NS:J = 0x0L

.field private static final VSYNC_OFFSET_PERCENT:J = 0x5fL

.field private static instance:Lcom/visualon/OSMPRender/voVSyncHelper;

.field private static isAFTM:Z

.field private static final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static ref_cnt:I

.field private static vsyncDeltaNs:J

.field private static vsyncOffsetNs:J


# instance fields
.field private adjLastFrameTimeNs:J

.field private bSynced:Z

.field private choreographer:Landroid/view/Choreographer;

.field private frameCnt:J

.field private final handler:Landroid/os/Handler;

.field private initFrameCnt:I

.field private lastFramePtsUs:J

.field private nativeContext:J

.field private observerCount:I

.field private overUnsyncCnt:I

.field private pendingAdjFrameTimeNs:J

.field private previousCallSystemTimeUs:J

.field private set_scheme:I

.field private syncFramePtsNs:J

.field private syncUnadjReleaseTimeNs:J

.field public volatile vsyncDoFrameTimeNs:J

.field private vsync_scheme:I

.field private final worker:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 57
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v2, "AFTM"

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/visualon/OSMPRender/voVSyncHelper;->isAFTM:Z

    const-wide/16 v2, -0x1

    .line 60
    sput-wide v2, Lcom/visualon/OSMPRender/voVSyncHelper;->vsyncDeltaNs:J

    .line 61
    sput-wide v2, Lcom/visualon/OSMPRender/voVSyncHelper;->vsyncOffsetNs:J

    const/4 v0, 0x6

    .line 62
    sput v0, Lcom/visualon/OSMPRender/voVSyncHelper;->MIN_FRAME_THRES:I

    const-wide/32 v2, 0x1312d00

    .line 70
    sput-wide v2, Lcom/visualon/OSMPRender/voVSyncHelper;->THRESHOLD_UNSYNC_NS:J

    const-wide/32 v2, 0x1406f40

    .line 71
    sput-wide v2, Lcom/visualon/OSMPRender/voVSyncHelper;->THRESHOLD_60FPS_NS:J

    const-wide/32 v2, 0x1c22260

    .line 72
    sput-wide v2, Lcom/visualon/OSMPRender/voVSyncHelper;->THRESHOLD_30FPS_NS:J

    .line 86
    sput v1, Lcom/visualon/OSMPRender/voVSyncHelper;->ref_cnt:I

    .line 87
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/visualon/OSMPRender/voVSyncHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->overUnsyncCnt:I

    .line 84
    iput v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->vsync_scheme:I

    const/4 v1, -0x1

    .line 85
    iput v1, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->set_scheme:I

    const-wide/16 v1, 0x0

    .line 332
    iput-wide v1, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->nativeContext:J

    .line 117
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "worker:Handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->worker:Landroid/os/HandlerThread;

    .line 118
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 119
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->handler:Landroid/os/Handler;

    .line 120
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private addInternal()V
    .locals 2

    .line 174
    iget v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->observerCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->observerCount:I

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method private createInstanceInternal()V
    .locals 1

    .line 170
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->choreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private findClosestVsyncPoint(JJJ)J
    .locals 2

    sub-long v0, p1, p3

    .line 288
    div-long/2addr v0, p5

    mul-long v0, v0, p5

    add-long/2addr p3, v0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr p3, p5

    :goto_0
    return-wide p3
.end method

.method private static getDisplayRefreshRate(Landroid/content/Context;)F
    .locals 1

    const-string v0, "window"

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 111
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    return p0
.end method

.method private isOverThreshold(JJ)I
    .locals 2

    .line 307
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->syncFramePtsNs:J

    sub-long/2addr p1, v0

    .line 308
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->syncUnadjReleaseTimeNs:J

    sub-long/2addr p3, v0

    sub-long/2addr p1, p3

    .line 309
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 322
    sget-wide p3, Lcom/visualon/OSMPRender/voVSyncHelper;->THRESHOLD_UNSYNC_NS:J

    const/4 v0, 0x0

    cmp-long v1, p1, p3

    if-lez v1, :cond_1

    .line 323
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IS_OVER_UNSYNC initFrameCnt:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->initFrameCnt:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "@@@voVSyncHelper.java"

    invoke-static {p3, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    :cond_0
    iget p1, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->overUnsyncCnt:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->overUnsyncCnt:I

    return p2

    :cond_1
    return v0
.end method

.method private native nativeEnable(J)V
.end method

.method private native nativeInit()V
.end method

.method private native nativeUninit(J)V
.end method

.method public static newVSyncHelper(Landroid/content/Context;)Lcom/visualon/OSMPRender/voVSyncHelper;
    .locals 7

    .line 90
    sget-object v0, Lcom/visualon/OSMPRender/voVSyncHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 92
    :try_start_0
    sget-object v1, Lcom/visualon/OSMPRender/voVSyncHelper;->instance:Lcom/visualon/OSMPRender/voVSyncHelper;

    if-nez v1, :cond_1

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    .line 93
    invoke-static {p0}, Lcom/visualon/OSMPRender/voVSyncHelper;->getDisplayRefreshRate(Landroid/content/Context;)F

    move-result p0

    float-to-double v3, p0

    div-double/2addr v1, v3

    double-to-long v1, v1

    sput-wide v1, Lcom/visualon/OSMPRender/voVSyncHelper;->vsyncDeltaNs:J

    .line 94
    sget-boolean p0, Lcom/visualon/OSMPRender/voVSyncHelper;->isAFTM:Z

    const-wide/16 v3, 0x64

    if-eqz p0, :cond_0

    const-wide/16 v5, 0x50

    mul-long v1, v1, v5

    .line 95
    div-long/2addr v1, v3

    sput-wide v1, Lcom/visualon/OSMPRender/voVSyncHelper;->vsyncOffsetNs:J

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x5f

    mul-long v1, v1, v5

    .line 97
    div-long/2addr v1, v3

    sput-wide v1, Lcom/visualon/OSMPRender/voVSyncHelper;->vsyncOffsetNs:J

    .line 98
    :goto_0
    new-instance p0, Lcom/visualon/OSMPRender/voVSyncHelper;

    invoke-direct {p0}, Lcom/visualon/OSMPRender/voVSyncHelper;-><init>()V

    sput-object p0, Lcom/visualon/OSMPRender/voVSyncHelper;->instance:Lcom/visualon/OSMPRender/voVSyncHelper;

    .line 100
    :cond_1
    sget p0, Lcom/visualon/OSMPRender/voVSyncHelper;->ref_cnt:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/visualon/OSMPRender/voVSyncHelper;->ref_cnt:I

    .line 101
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "@@@voVSyncHelper.java"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ref_cnt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/visualon/OSMPRender/voVSyncHelper;->ref_cnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_2
    sget-object p0, Lcom/visualon/OSMPRender/voVSyncHelper;->instance:Lcom/visualon/OSMPRender/voVSyncHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/visualon/OSMPRender/voVSyncHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method private removeInternal()V
    .locals 2

    .line 181
    iget v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->observerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->observerCount:I

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide/16 v0, 0x0

    .line 184
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->vsyncDoFrameTimeNs:J

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 187
    iput v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->observerCount:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public adjustReleaseTime(JJ)J
    .locals 18

    move-object/from16 v7, p0

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    .line 195
    iget v4, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->vsync_scheme:I

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, v0

    .line 202
    iget v6, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->initFrameCnt:I

    const/4 v8, 0x1

    add-int/2addr v6, v8

    iput v6, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->initFrameCnt:I

    .line 203
    iget-boolean v6, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->bSynced:Z

    const/4 v10, 0x0

    if-eqz v6, :cond_5

    .line 204
    iget-wide v11, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->lastFramePtsUs:J

    cmp-long v6, v0, v11

    if-eqz v6, :cond_1

    .line 205
    iget-wide v11, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->frameCnt:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->frameCnt:J

    .line 206
    iget-wide v11, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->pendingAdjFrameTimeNs:J

    iput-wide v11, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->adjLastFrameTimeNs:J

    .line 208
    :cond_1
    iget-wide v11, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->frameCnt:J

    sget v6, Lcom/visualon/OSMPRender/voVSyncHelper;->MIN_FRAME_THRES:I

    int-to-long v13, v6

    cmp-long v6, v11, v13

    if-ltz v6, :cond_4

    .line 209
    iget-wide v13, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->syncFramePtsNs:J

    sub-long v13, v4, v13

    div-long/2addr v13, v11

    .line 210
    iget-wide v11, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->adjLastFrameTimeNs:J

    add-long/2addr v11, v13

    .line 212
    invoke-direct {v7, v11, v12, v2, v3}, Lcom/visualon/OSMPRender/voVSyncHelper;->isOverThreshold(JJ)I

    move-result v6

    if-eqz v6, :cond_2

    .line 214
    iput-boolean v10, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->bSynced:Z

    move-wide v8, v2

    move-wide v11, v4

    goto :goto_0

    .line 218
    :cond_2
    iget-wide v8, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->syncUnadjReleaseTimeNs:J

    add-long/2addr v8, v11

    move-wide/from16 v16, v11

    iget-wide v10, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->syncFramePtsNs:J

    sub-long/2addr v8, v10

    move-wide/from16 v11, v16

    .line 222
    :goto_0
    sget-wide v16, Lcom/visualon/OSMPRender/voVSyncHelper;->THRESHOLD_60FPS_NS:J

    cmp-long v10, v13, v16

    if-gtz v10, :cond_3

    const/4 v10, 0x3

    .line 223
    iput v10, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->vsync_scheme:I

    goto :goto_1

    :cond_3
    const/4 v10, 0x3

    .line 225
    iget v15, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->vsync_scheme:I

    if-ne v15, v10, :cond_6

    sget-wide v16, Lcom/visualon/OSMPRender/voVSyncHelper;->THRESHOLD_30FPS_NS:J

    cmp-long v10, v13, v16

    if-ltz v10, :cond_6

    .line 226
    iget v10, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->set_scheme:I

    iput v10, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->vsync_scheme:I

    goto :goto_1

    .line 229
    :cond_4
    invoke-direct {v7, v4, v5, v2, v3}, Lcom/visualon/OSMPRender/voVSyncHelper;->isOverThreshold(JJ)I

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    .line 231
    iput-boolean v8, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->bSynced:Z

    :cond_5
    move-wide v8, v2

    move-wide v11, v4

    .line 234
    :cond_6
    :goto_1
    iget-boolean v10, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->bSynced:Z

    const-wide/16 v13, 0x0

    if-nez v10, :cond_7

    .line 235
    iput-wide v4, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->syncFramePtsNs:J

    .line 236
    iput-wide v2, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->syncUnadjReleaseTimeNs:J

    .line 237
    iput-wide v13, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->frameCnt:J

    const/4 v2, 0x1

    .line 238
    iput-boolean v2, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->bSynced:Z

    .line 241
    :cond_7
    iput-wide v0, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->lastFramePtsUs:J

    .line 242
    iput-wide v11, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->pendingAdjFrameTimeNs:J

    .line 244
    iget-wide v0, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->vsyncDoFrameTimeNs:J

    cmp-long v2, v0, v13

    if-nez v2, :cond_8

    return-wide v8

    .line 248
    :cond_8
    iget v0, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->vsync_scheme:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_b

    goto :goto_2

    .line 250
    :cond_9
    iget v3, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->initFrameCnt:I

    rem-int/lit8 v3, v3, 0x42

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v2, 0x0

    .line 261
    :cond_b
    :goto_3
    iget v3, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->initFrameCnt:I

    rem-int/lit16 v3, v3, 0x12c

    if-nez v3, :cond_e

    const-string v3, "@@@voVSyncHelper.java"

    const/4 v4, 0x3

    if-ne v0, v4, :cond_c

    .line 263
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "always vsync."

    .line 264
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    if-ne v0, v1, :cond_d

    .line 268
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_e

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "no vsync."

    .line 269
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 273
    :cond_d
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_e

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "partial vsync."

    .line 274
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_4
    if-eqz v2, :cond_f

    const-wide/16 v0, -0x1

    return-wide v0

    .line 283
    :cond_f
    iget-wide v3, v7, Lcom/visualon/OSMPRender/voVSyncHelper;->vsyncDoFrameTimeNs:J

    sget-wide v5, Lcom/visualon/OSMPRender/voVSyncHelper;->vsyncDeltaNs:J

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct/range {v0 .. v6}, Lcom/visualon/OSMPRender/voVSyncHelper;->findClosestVsyncPoint(JJJ)J

    move-result-wide v0

    .line 284
    sget-wide v2, Lcom/visualon/OSMPRender/voVSyncHelper;->vsyncOffsetNs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public disable()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[VSYNC_JAVA]"

    const-string v2, "disable"

    .line 165
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public doFrame(J)V
    .locals 2

    .line 125
    iput-wide p1, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->vsyncDoFrameTimeNs:J

    .line 126
    iget-object p1, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->choreographer:Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public enable()V
    .locals 4

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->bSynced:Z

    .line 152
    iget-object v1, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    iget-wide v1, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->nativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/visualon/OSMPRender/voVSyncHelper;->nativeEnable(J)V

    .line 154
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@voVSyncHelper.java"

    const-string v3, "enable"

    .line 155
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_0
    iput v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->initFrameCnt:I

    .line 158
    iput v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->overUnsyncCnt:I

    .line 159
    iget v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->set_scheme:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 160
    iput v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->vsync_scheme:I

    :cond_1
    return-void
.end method

.method public getContext()J
    .locals 2

    .line 335
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->nativeContext:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 131
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voVSyncHelper;->removeInternal()V

    return v0

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voVSyncHelper;->addInternal()V

    return v0

    .line 133
    :cond_2
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voVSyncHelper;->createInstanceInternal()V

    return v0
.end method

.method public init()Z
    .locals 5

    .line 338
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voVSyncHelper;->nativeInit()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setVSyncScheme(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    iput v0, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->set_scheme:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 368
    iput p1, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->set_scheme:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 365
    iput p1, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->set_scheme:I

    :goto_0
    return-void
.end method

.method public uninit()V
    .locals 6

    .line 344
    sget-object v0, Lcom/visualon/OSMPRender/voVSyncHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 346
    :try_start_0
    sget v1, Lcom/visualon/OSMPRender/voVSyncHelper;->ref_cnt:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/visualon/OSMPRender/voVSyncHelper;->ref_cnt:I

    .line 347
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "@@@voVSyncHelper.java"

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ref_cnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/visualon/OSMPRender/voVSyncHelper;->ref_cnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    :cond_0
    sget v1, Lcom/visualon/OSMPRender/voVSyncHelper;->ref_cnt:I

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->nativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 351
    invoke-direct {p0, v1, v2}, Lcom/visualon/OSMPRender/voVSyncHelper;->nativeUninit(J)V

    .line 352
    iput-wide v3, p0, Lcom/visualon/OSMPRender/voVSyncHelper;->nativeContext:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/visualon/OSMPRender/voVSyncHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
