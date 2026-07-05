.class final Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;
.super Lcom/google/common/util/concurrent/SmoothRateLimiter;
.source "SmoothRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SmoothRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmoothBursty"
.end annotation


# instance fields
.field public final maxBurstSeconds:D


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/SmoothRateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/SmoothRateLimiter$1;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxBurstSeconds:D

    return-void
.end method


# virtual methods
.method public final coolDownIntervalMicros()D
    .registers 3

    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->stableIntervalMicros:D

    return-wide v0
.end method

.method public final doSetRate(DD)V
    .registers 8

    .line 1
    iget-wide p3, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->maxPermits:D

    .line 2
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxBurstSeconds:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->maxPermits:D

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p3, p1

    if-nez v2, :cond_11

    .line 3
    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    goto :goto_1f

    :cond_11
    const-wide/16 p1, 0x0

    cmpl-double v2, p3, p1

    if-nez v2, :cond_18

    goto :goto_1d

    .line 4
    :cond_18
    iget-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    mul-double p1, p1, v0

    div-double/2addr p1, p3

    :goto_1d
    iput-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    :goto_1f
    return-void
.end method

.method public final storedPermitsToWaitTime(DD)J
    .registers 5

    const-wide/16 p1, 0x0

    return-wide p1
.end method
