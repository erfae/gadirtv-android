.class final Lcom/verimatrix/vdc/StreamErrorHandler;
.super Ljava/lang/Object;
.source "StreamErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;,
        Lcom/verimatrix/vdc/StreamErrorHandler$ExitErrorsRunnable;,
        Lcom/verimatrix/vdc/StreamErrorHandler$ContinueErrorsRunnable;,
        Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamErrorHandler"


# instance fields
.field private c:Landroid/content/Context;

.field continueErrorCount:I

.field private continueErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$ContinueErrorsRunnable;

.field continueSecondsInError:I

.field private entryErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;

.field private errorHandler:Landroid/os/Handler;

.field private exitErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$ExitErrorsRunnable;

.field frameErrorCount:J

.field private inSecondErrorCount:I

.field private isEntryTimerScheduled:Z

.field isInErrorPersist:Z

.field private lastErrorEventOffset:J

.field lastErrorStart:J

.field private lastErrorType:I

.field private lastErrorsCount:I

.field private lastPlaybackErrorType:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

.field private lastSingleErrorTime:J

.field noServiceErrorSent:Z

.field noServiceTime:J

.field private slowStartTimer:Ljava/util/Timer;

.field slowStartTimersStarted:Z

.field stallTime:J

.field private stream:Lcom/verimatrix/vdc/Stream;

.field totalErrorCount:I

.field totalSecondsInError:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/verimatrix/vdc/Stream;)V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastSingleErrorTime:J

    const/4 v2, 0x0

    .line 21
    iput v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorCount:I

    .line 22
    iput v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueSecondsInError:I

    .line 23
    iput v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->inSecondErrorCount:I

    .line 24
    iput v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    .line 25
    iput v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->totalSecondsInError:I

    .line 26
    iput v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorsCount:I

    .line 27
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorEventOffset:J

    .line 28
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stallTime:J

    .line 29
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorStart:J

    .line 30
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->frameErrorCount:J

    .line 31
    iput v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorType:I

    const/4 v3, 0x0

    .line 32
    iput-object v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastPlaybackErrorType:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    .line 37
    iput-boolean v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->slowStartTimersStarted:Z

    .line 38
    iput-boolean v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->noServiceErrorSent:Z

    .line 39
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->noServiceTime:J

    .line 45
    iput-boolean v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->isEntryTimerScheduled:Z

    .line 46
    iput-boolean v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->isInErrorPersist:Z

    .line 49
    iput-object p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->c:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    .line 52
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ErrorHandlerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->errorHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/verimatrix/vdc/StreamErrorHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/verimatrix/vdc/StreamErrorHandler;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->inSecondErrorCount:I

    return p0
.end method

.method static synthetic access$1000(Lcom/verimatrix/vdc/StreamErrorHandler;)Lcom/verimatrix/vdc/Stream;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    return-object p0
.end method

.method static synthetic access$102(Lcom/verimatrix/vdc/StreamErrorHandler;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->inSecondErrorCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/verimatrix/vdc/StreamErrorHandler;)Landroid/content/Context;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/verimatrix/vdc/StreamErrorHandler;J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/verimatrix/vdc/StreamErrorHandler;->sendNoServiceEvent(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/verimatrix/vdc/StreamErrorHandler;ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p6}, Lcom/verimatrix/vdc/StreamErrorHandler;->startSvcErrorSingle(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)V

    return-void
.end method

.method static synthetic access$602(Lcom/verimatrix/vdc/StreamErrorHandler;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->isEntryTimerScheduled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/verimatrix/vdc/StreamErrorHandler;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/StreamErrorHandler;->startErrorPersist(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/verimatrix/vdc/StreamErrorHandler;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorPersist()V

    return-void
.end method

.method private cancelContinueErrorTimer()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$ContinueErrorsRunnable;

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/StreamErrorHandler;->cancelErrorTimer(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private cancelEnterErrorTimer()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->entryErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/StreamErrorHandler;->cancelErrorTimer(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->entryErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;

    :cond_0
    return-void
.end method

.method private cancelErrorTimer(Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 294
    sget-object v0, Lcom/verimatrix/vdc/StreamErrorHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Errors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " CANCELLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->errorHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private continueErrorPersist()V
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->checkTotalAndContinueCounters()V

    .line 224
    iget v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueSecondsInError:I

    iget v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorCount:I

    iget-wide v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorEventOffset:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/verimatrix/vdc/StreamErrorHandler;->startSvcErrorPersist(IIJ)V

    .line 225
    invoke-direct {p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->restartContinueErrorTimer()V

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->isInErrorPersist:Z

    .line 227
    sget-object v0, Lcom/verimatrix/vdc/StreamErrorHandler;->TAG:Ljava/lang/String;

    const-string v1, "persist mode continued"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private restartContinueErrorTimer()V
    .locals 5

    .line 258
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$ContinueErrorsRunnable;

    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/StreamErrorHandler;->cancelErrorTimer(Ljava/lang/Runnable;)V

    .line 259
    new-instance v0, Lcom/verimatrix/vdc/StreamErrorHandler$ContinueErrorsRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/verimatrix/vdc/StreamErrorHandler$ContinueErrorsRunnable;-><init>(Lcom/verimatrix/vdc/StreamErrorHandler;Lcom/verimatrix/vdc/StreamErrorHandler$1;)V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$ContinueErrorsRunnable;

    .line 260
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v1, "delay_error_continue"

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 261
    iget-object v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->errorHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$ContinueErrorsRunnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    sget-object v2, Lcom/verimatrix/vdc/StreamErrorHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContinueError: scheduled ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private restartExitErrorTimer()V
    .locals 5

    .line 266
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->exitErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$ExitErrorsRunnable;

    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/StreamErrorHandler;->cancelErrorTimer(Ljava/lang/Runnable;)V

    .line 267
    new-instance v0, Lcom/verimatrix/vdc/StreamErrorHandler$ExitErrorsRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/verimatrix/vdc/StreamErrorHandler$ExitErrorsRunnable;-><init>(Lcom/verimatrix/vdc/StreamErrorHandler;Lcom/verimatrix/vdc/StreamErrorHandler$1;)V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->exitErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$ExitErrorsRunnable;

    .line 268
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v1, "delay_error_exit"

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 269
    iget-object v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->errorHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->exitErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$ExitErrorsRunnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    sget-object v2, Lcom/verimatrix/vdc/StreamErrorHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExitErrors: scheduled ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendNoServiceEvent(J)V
    .locals 10

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->noServiceErrorSent:Z

    .line 142
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    .line 143
    invoke-virtual {v3}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v7

    const/16 v3, 0x126

    const/4 v6, 0x0

    move-wide v8, p1

    .line 142
    invoke-static/range {v1 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    return-void
.end method

.method private startEntryErrorTimer()V
    .locals 5

    .line 244
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->entryErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;->isPersistModeRequested()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->entryErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;

    invoke-direct {p0, v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->cancelErrorTimer(Ljava/lang/Runnable;)V

    .line 248
    new-instance v1, Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;-><init>(Lcom/verimatrix/vdc/StreamErrorHandler;Lcom/verimatrix/vdc/StreamErrorHandler$1;)V

    iput-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->entryErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v1}, Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;->requestPersistMode()V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v1, "delay_error_entry"

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 253
    iget-object v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->errorHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->entryErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    sget-object v2, Lcom/verimatrix/vdc/StreamErrorHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EntryErrors: scheduled ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startErrorPersist(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object p1, p1, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-boolean p1, p1, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 212
    iput p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueSecondsInError:I

    .line 213
    iput p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorCount:I

    .line 214
    iget-wide v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorEventOffset:J

    invoke-direct {p0, p1, p1, v0, v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->startSvcErrorPersist(IIJ)V

    .line 215
    invoke-direct {p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->restartExitErrorTimer()V

    .line 216
    invoke-direct {p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->restartContinueErrorTimer()V

    const/4 p1, 0x1

    .line 217
    iput-boolean p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->isInErrorPersist:Z

    .line 218
    sget-object p1, Lcom/verimatrix/vdc/StreamErrorHandler;->TAG:Ljava/lang/String;

    const-string v0, "persist mode started"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private startSvcErrorPersist(IIJ)V
    .locals 11

    .line 175
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-boolean v0, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v3, 0x18d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    new-array v6, v6, [J

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    aput-wide v7, v6, v10

    const/4 v7, 0x1

    int-to-long v8, p1

    aput-wide v8, v6, v7

    const/4 p1, 0x2

    int-to-long v7, p2

    aput-wide v7, v6, p1

    iget-object p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    .line 177
    invoke-virtual {p1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v7

    move-wide v8, p3

    .line 176
    invoke-static/range {v1 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 178
    iput v10, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueSecondsInError:I

    .line 179
    iput v10, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorCount:I

    :cond_0
    return-void
.end method

.method private startSvcErrorSingle(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)V
    .locals 15

    move-object v0, p0

    .line 148
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-boolean v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    if-nez v1, :cond_4

    const-wide/16 v1, 0x0

    if-eqz p3, :cond_0

    .line 151
    invoke-virtual/range {p3 .. p3}, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->getValue()I

    move-result v1

    int-to-long v1, v1

    .line 153
    :cond_0
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v5, 0x18c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x4

    new-array v8, v8, [J

    const/4 v9, 0x0

    move/from16 v10, p1

    int-to-long v10, v10

    aput-wide v10, v8, v9

    const-wide/16 v9, 0x1

    const/4 v12, 0x1

    aput-wide v9, v8, v12

    move/from16 v9, p4

    int-to-long v9, v9

    const/4 v13, 0x2

    aput-wide v9, v8, v13

    const/4 v14, 0x3

    aput-wide v1, v8, v14

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    .line 154
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v9

    move-wide/from16 v10, p5

    .line 153
    invoke-static/range {v3 .. v11}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    .line 155
    sget-object v2, Lcom/verimatrix/vdc/StreamErrorHandler$2;->$SwitchMap$com$verimatrix$vdc$Monitor$StreamType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/verimatrix/vdc/Monitor$StreamType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v12, :cond_3

    if-eq v2, v13, :cond_2

    if-eq v2, v14, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x82

    .line 163
    invoke-virtual {v1, v2, v3}, Lcom/verimatrix/vdc/SendEvent;->setFlagsAddition(J)V

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x81

    .line 160
    invoke-virtual {v1, v2, v3}, Lcom/verimatrix/vdc/SendEvent;->setFlagsAddition(J)V

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x80

    .line 157
    invoke-virtual {v1, v2, v3}, Lcom/verimatrix/vdc/SendEvent;->setFlagsAddition(J)V

    .line 168
    :goto_0
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_1

    .line 170
    :cond_4
    sget-object v1, Lcom/verimatrix/vdc/StreamErrorHandler;->TAG:Ljava/lang/String;

    const-string v2, "single error cancelled because playbackSettleTimerStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private startSvrErrorCleared(IIJ)V
    .locals 11

    .line 184
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-boolean v0, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v3, 0x18e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    new-array v6, v6, [J

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    aput-wide v7, v6, v10

    const/4 v7, 0x1

    int-to-long v8, p1

    aput-wide v8, v6, v7

    const/4 p1, 0x2

    int-to-long v7, p2

    aput-wide v7, v6, p1

    iget-object p1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    .line 186
    invoke-virtual {p1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v7

    move-wide v8, p3

    .line 185
    invoke-static/range {v1 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 187
    iput v10, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueSecondsInError:I

    .line 188
    iput v10, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorCount:I

    :cond_0
    return-void
.end method


# virtual methods
.method cancelExitErrorTimer()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->exitErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$ExitErrorsRunnable;

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/StreamErrorHandler;->cancelErrorTimer(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method checkTotalAndContinueCounters()V
    .locals 2

    .line 197
    iget v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 198
    iput v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueSecondsInError:I

    .line 200
    :cond_0
    iget v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    if-nez v0, :cond_1

    .line 201
    iput v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->totalSecondsInError:I

    :cond_1
    return-void
.end method

.method playbackError(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v0, p4

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 65
    iput-wide v5, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorStart:J

    .line 67
    iget-boolean v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->noServiceErrorSent:Z

    if-nez v1, :cond_6

    .line 68
    iget-object v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->c:Landroid/content/Context;

    iget-object v3, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reason="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " PlaybackErrorType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string v10, "Event add: playback_error"

    invoke-static {v1, v3, v10, v9}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 72
    iget-boolean v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->isInErrorPersist:Z

    if-nez v1, :cond_1

    .line 73
    iget-boolean v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->isEntryTimerScheduled:Z

    if-nez v1, :cond_0

    .line 74
    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->startEntryErrorTimer()V

    .line 75
    iput-boolean v8, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->isEntryTimerScheduled:Z

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->entryErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v1}, Lcom/verimatrix/vdc/StreamErrorHandler$EntryErrorsRunnable;->requestPersistMode()V

    .line 84
    :cond_1
    :goto_0
    iput v2, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorType:I

    .line 85
    iget-object v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-object/from16 v3, p2

    iput-object v3, v1, Lcom/verimatrix/vdc/StreamPlayback;->lastStreamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    .line 86
    iput-object v4, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->lastPlaybackErrorType:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    .line 87
    iput v0, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorsCount:I

    .line 88
    iget v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorCount:I

    add-int/2addr v1, v0

    iput v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorCount:I

    .line 89
    iget v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    add-int/2addr v1, v0

    iput v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    move-wide/from16 v9, p5

    .line 90
    iput-wide v9, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorEventOffset:J

    .line 92
    iget-object v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v1, v5, v6}, Lcom/verimatrix/vdc/StreamPlayback;->getCurrentPlaybackPosition(J)J

    move-result-wide v5

    const-wide/16 v12, 0x3e8

    .line 94
    div-long v14, v5, v12

    iget-wide v8, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->lastSingleErrorTime:J

    div-long/2addr v8, v12

    cmp-long v10, v14, v8

    if-nez v10, :cond_2

    const/4 v11, 0x1

    .line 95
    :cond_2
    rem-long v8, v5, v12

    sub-long/2addr v12, v8

    if-eqz v11, :cond_4

    .line 100
    sget-object v1, Lcom/verimatrix/vdc/StreamErrorHandler;->TAG:Ljava/lang/String;

    const-string v2, "not first error in this playback second"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-boolean v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->isInErrorPersist:Z

    if-eqz v1, :cond_3

    .line 103
    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->restartExitErrorTimer()V

    goto :goto_1

    .line 106
    :cond_3
    iget v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->inSecondErrorCount:I

    add-int/2addr v1, v0

    iput v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->inSecondErrorCount:I

    goto :goto_1

    .line 111
    :cond_4
    sget-object v8, Lcom/verimatrix/vdc/StreamErrorHandler;->TAG:Ljava/lang/String;

    const-string v9, "first error in this playback second"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput-wide v5, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->lastSingleErrorTime:J

    .line 114
    iget v5, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->continueSecondsInError:I

    const/4 v1, 0x1

    add-int/2addr v5, v1

    iput v5, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->continueSecondsInError:I

    .line 115
    iget v5, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->totalSecondsInError:I

    add-int/2addr v5, v1

    iput v5, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->totalSecondsInError:I

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->checkTotalAndContinueCounters()V

    .line 118
    iget-boolean v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->isInErrorPersist:Z

    if-eqz v1, :cond_5

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->restartExitErrorTimer()V

    goto :goto_1

    .line 123
    :cond_5
    iput v0, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->inSecondErrorCount:I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "single error post delayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v8, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->errorHandler:Landroid/os/Handler;

    new-instance v9, Lcom/verimatrix/vdc/StreamErrorHandler$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/verimatrix/vdc/StreamErrorHandler$1;-><init>(Lcom/verimatrix/vdc/StreamErrorHandler;ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;J)V

    invoke-virtual {v8, v9, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 136
    :cond_6
    iget-object v0, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v2, "Event playback_error skipped: no_service event was sent"

    invoke-static {v0, v1, v2}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method resetVariables()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 403
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stallTime:J

    .line 404
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->frameErrorCount:J

    .line 405
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorStart:J

    .line 406
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->stopSlowStartTimer()V

    const/4 v2, 0x0

    .line 407
    iput-object v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->slowStartTimer:Ljava/util/Timer;

    const/4 v3, 0x0

    .line 408
    iput-boolean v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->slowStartTimersStarted:Z

    .line 409
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastSingleErrorTime:J

    .line 410
    iput v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorType:I

    .line 411
    iput-object v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastPlaybackErrorType:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    .line 412
    iput v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorCount:I

    .line 413
    iput v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->inSecondErrorCount:I

    .line 414
    iput v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->totalSecondsInError:I

    .line 415
    iput v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueSecondsInError:I

    .line 416
    iput v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    .line 417
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorEventOffset:J

    .line 418
    invoke-direct {p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->cancelEnterErrorTimer()V

    .line 419
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->cancelExitErrorTimer()V

    .line 420
    invoke-direct {p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->cancelContinueErrorTimer()V

    .line 421
    iput-boolean v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->noServiceErrorSent:Z

    .line 422
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->noServiceTime:J

    .line 423
    iput v3, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorsCount:I

    return-void
.end method

.method startSlowStartTimer()V
    .locals 6

    .line 341
    sget-object v0, Lcom/verimatrix/vdc/StreamErrorHandler;->TAG:Ljava/lang/String;

    const-string v1, "SlowStart: startSlowStartTimer() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->stopSlowStartTimer()V

    .line 346
    iget-object v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v2, "delay_slow_start"

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->slowStartTimersStarted:Z

    .line 350
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->slowStartTimer:Ljava/util/Timer;

    .line 351
    new-instance v3, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/verimatrix/vdc/StreamErrorHandler$SlowStartTask;-><init>(Lcom/verimatrix/vdc/StreamErrorHandler;Lcom/verimatrix/vdc/StreamErrorHandler$1;)V

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_0
    const-string v1, "SlowStart: SlowStartTimer does not started: error delay"

    .line 353
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method stopErrorPersist()V
    .locals 4

    .line 231
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StreamErrorHandler;->checkTotalAndContinueCounters()V

    .line 232
    iget v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueSecondsInError:I

    iget v1, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorCount:I

    iget-wide v2, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorEventOffset:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/verimatrix/vdc/StreamErrorHandler;->startSvrErrorCleared(IIJ)V

    .line 233
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorsRunnable:Lcom/verimatrix/vdc/StreamErrorHandler$ContinueErrorsRunnable;

    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/StreamErrorHandler;->cancelErrorTimer(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->isInErrorPersist:Z

    .line 235
    sget-object v0, Lcom/verimatrix/vdc/StreamErrorHandler;->TAG:Ljava/lang/String;

    const-string v1, "persist mode stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method stopSlowStartTimer()V
    .locals 2

    .line 358
    sget-object v0, Lcom/verimatrix/vdc/StreamErrorHandler;->TAG:Ljava/lang/String;

    const-string v1, "SlowStart: stopSlowStartTimer() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->slowStartTimersStarted:Z

    .line 360
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->slowStartTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 362
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamErrorHandler;->slowStartTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    return-void
.end method
