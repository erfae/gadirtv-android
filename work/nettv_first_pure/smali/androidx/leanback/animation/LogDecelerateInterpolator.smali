.class public Landroidx/leanback/animation/LogDecelerateInterpolator;
.super Ljava/lang/Object;
.source "LogDecelerateInterpolator.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public mBase:I

.field public mDrift:I

.field public final mLogScale:F


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/leanback/animation/LogDecelerateInterpolator;->mBase:I

    .line 3
    iput p2, p0, Landroidx/leanback/animation/LogDecelerateInterpolator;->mDrift:I

    int-to-double v0, p1

    const/high16 p1, -0x40800000    # -1.0f

    float-to-double v2, p1

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    int-to-float p2, p2

    mul-float p2, p2, v0

    add-float/2addr p2, p1

    div-float/2addr v0, p2

    .line 5
    iput v0, p0, Landroidx/leanback/animation/LogDecelerateInterpolator;->mLogScale:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    .line 1
    iget v0, p0, Landroidx/leanback/animation/LogDecelerateInterpolator;->mBase:I

    iget v1, p0, Landroidx/leanback/animation/LogDecelerateInterpolator;->mDrift:I

    int-to-double v2, v0

    neg-float v0, p1

    float-to-double v4, v0

    .line 2
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    .line 3
    iget p1, p0, Landroidx/leanback/animation/LogDecelerateInterpolator;->mLogScale:F

    mul-float v1, v1, p1

    return v1
.end method
