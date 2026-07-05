.class public Lcom/google/android/material/color/utilities/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clampDouble(DDD)D
    .locals 1

    cmpg-double v0, p4, p0

    if-gez v0, :cond_0

    return-wide p0

    :cond_0
    cmpl-double p0, p4, p2

    if-lez p0, :cond_1

    return-wide p2

    :cond_1
    return-wide p4
.end method

.method public static clampInt(III)I
    .locals 0

    if-ge p2, p0, :cond_0

    return p0

    :cond_0
    if-le p2, p1, :cond_1

    return p1

    :cond_1
    return p2
.end method

.method public static differenceDegrees(DD)D
    .locals 0

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x4066800000000000L    # 180.0

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    sub-double/2addr p2, p0

    return-wide p2
.end method

.method public static lerp(DDD)D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p4

    mul-double v0, v0, p0

    mul-double p4, p4, p2

    add-double/2addr p4, v0

    return-wide p4
.end method

.method public static matrixMultiply([D[[D)[D
    .locals 14

    const/4 v0, 0x0

    .line 1
    aget-wide v1, p0, v0

    aget-object v3, p1, v0

    aget-wide v4, v3, v0

    mul-double v1, v1, v4

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aget-object v6, p1, v0

    aget-wide v7, v6, v3

    mul-double v4, v4, v7

    add-double/2addr v4, v1

    const/4 v1, 0x2

    aget-wide v6, p0, v1

    aget-object v2, p1, v0

    aget-wide v8, v2, v1

    mul-double v6, v6, v8

    add-double/2addr v6, v4

    .line 2
    aget-wide v4, p0, v0

    aget-object v2, p1, v3

    aget-wide v8, v2, v0

    mul-double v4, v4, v8

    aget-wide v8, p0, v3

    aget-object v2, p1, v3

    aget-wide v10, v2, v3

    mul-double v8, v8, v10

    add-double/2addr v8, v4

    aget-wide v4, p0, v1

    aget-object v2, p1, v3

    aget-wide v10, v2, v1

    mul-double v4, v4, v10

    add-double/2addr v4, v8

    .line 3
    aget-wide v8, p0, v0

    aget-object v2, p1, v1

    aget-wide v10, v2, v0

    mul-double v8, v8, v10

    aget-wide v10, p0, v3

    aget-object v2, p1, v1

    aget-wide v12, v2, v3

    mul-double v10, v10, v12

    add-double/2addr v10, v8

    aget-wide v8, p0, v1

    aget-object p0, p1, v1

    aget-wide v12, p0, v1

    mul-double v8, v8, v12

    add-double/2addr v8, v10

    const/4 p0, 0x3

    new-array p0, p0, [D

    aput-wide v6, p0, v0

    aput-wide v4, p0, v3

    aput-wide v8, p0, v1

    return-object p0
.end method

.method public static rotationDirection(DD)D
    .locals 1

    sub-double/2addr p2, p0

    invoke-static {p2, p3}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide p0

    const-wide p2, 0x4066800000000000L    # 180.0

    cmpg-double v0, p0, p2

    if-gtz v0, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide p0
.end method

.method public static sanitizeDegreesDouble(D)D
    .locals 5

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    add-double/2addr p0, v0

    :cond_0
    return-wide p0
.end method

.method public static sanitizeDegreesInt(I)I
    .locals 0

    rem-int/lit16 p0, p0, 0x168

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x168

    :cond_0
    return p0
.end method

.method public static signum(D)I
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
