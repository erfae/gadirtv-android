.class Landroidx/constraintlayout/core/motion/utils/SplineSet$Sort;
.super Ljava/lang/Object;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sort"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doubleQuickSort([I[FI)V
    .locals 7

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2
    aput p2, v0, v1

    const/4 p2, 0x1

    .line 3
    aput v1, v0, p2

    const/4 v1, 0x2

    :cond_0
    :goto_0
    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 4
    aget v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    .line 5
    aget v3, v0, v1

    if-ge v2, v3, :cond_0

    .line 6
    invoke-static {p0, p1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet$Sort;->partition([I[FII)I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v4, -0x1

    .line 7
    aput v6, v0, v1

    add-int/lit8 v1, v5, 0x1

    .line 8
    aput v2, v0, v5

    add-int/lit8 v2, v1, 0x1

    .line 9
    aput v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v4, p2

    .line 10
    aput v4, v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static partition([I[FII)I
    .locals 3

    .line 1
    aget v0, p0, p3

    move v1, p2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 2
    aget v2, p0, p2

    if-gt v2, v0, :cond_0

    .line 3
    invoke-static {p0, p1, v1, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet$Sort;->swap([I[FII)V

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0, p1, v1, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet$Sort;->swap([I[FII)V

    return v1
.end method

.method private static swap([I[FII)V
    .locals 2

    .line 1
    aget v0, p0, p2

    .line 2
    aget v1, p0, p3

    aput v1, p0, p2

    .line 3
    aput v0, p0, p3

    .line 4
    aget p0, p1, p2

    .line 5
    aget v0, p1, p3

    aput v0, p1, p2

    .line 6
    aput p0, p1, p3

    return-void
.end method
