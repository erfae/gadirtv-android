.class Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntFloatFloatSort"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static partition([I[F[FII)I
    .locals 3

    .line 1
    aget v0, p0, p4

    move v1, p3

    :goto_0
    if-ge p3, p4, :cond_1

    .line 2
    aget v2, p0, p3

    if-gt v2, v0, :cond_0

    .line 3
    invoke-static {p0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;->swap([I[F[FII)V

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0, p1, p2, v1, p4}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;->swap([I[F[FII)V

    return v1
.end method

.method private static swap([I[F[FII)V
    .locals 2

    .line 1
    aget v0, p0, p3

    .line 2
    aget v1, p0, p4

    aput v1, p0, p3

    .line 3
    aput v0, p0, p4

    .line 4
    aget p0, p1, p3

    .line 5
    aget v0, p1, p4

    aput v0, p1, p3

    .line 6
    aput p0, p1, p4

    .line 7
    aget p0, p2, p3

    .line 8
    aget p1, p2, p4

    aput p1, p2, p3

    .line 9
    aput p0, p2, p4

    return-void
.end method
