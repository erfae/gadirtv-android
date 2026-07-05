.class public Leightbitlab/com/blurview/SizeScaler;
.super Ljava/lang/Object;
.source "SizeScaler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leightbitlab/com/blurview/SizeScaler$Size;
    }
.end annotation


# static fields
.field private static final ROUNDING_VALUE:I = 0x40


# instance fields
.field private final scaleFactor:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Leightbitlab/com/blurview/SizeScaler;->scaleFactor:F

    return-void
.end method

.method private downscaleSize(F)I
    .registers 4

    iget v0, p0, Leightbitlab/com/blurview/SizeScaler;->scaleFactor:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private roundSize(I)I
    .registers 3

    rem-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_5

    return p1

    :cond_5
    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x40

    return p1
.end method


# virtual methods
.method public final isZeroSized(II)Z
    .registers 3

    int-to-float p2, p2

    invoke-direct {p0, p2}, Leightbitlab/com/blurview/SizeScaler;->downscaleSize(F)I

    move-result p2

    if-eqz p2, :cond_11

    int-to-float p1, p1

    invoke-direct {p0, p1}, Leightbitlab/com/blurview/SizeScaler;->downscaleSize(F)I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public final scale(II)Leightbitlab/com/blurview/SizeScaler$Size;
    .registers 6

    int-to-float p1, p1

    .line 1
    invoke-direct {p0, p1}, Leightbitlab/com/blurview/SizeScaler;->downscaleSize(F)I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Leightbitlab/com/blurview/SizeScaler;->roundSize(I)I

    move-result v0

    int-to-float v1, v0

    div-float/2addr p1, v1

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-double v1, p2

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p2, v1

    .line 4
    new-instance v1, Leightbitlab/com/blurview/SizeScaler$Size;

    invoke-direct {v1, v0, p2, p1}, Leightbitlab/com/blurview/SizeScaler$Size;-><init>(IIF)V

    return-object v1
.end method
