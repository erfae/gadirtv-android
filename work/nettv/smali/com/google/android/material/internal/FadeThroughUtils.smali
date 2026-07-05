.class final Lcom/google/android/material/internal/FadeThroughUtils;
.super Ljava/lang/Object;
.source "FadeThroughUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateFadeOutAndInAlphas(F[F)V
    .locals 6
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v5, p0, v5

    if-gtz v5, :cond_0

    mul-float p0, p0, v1

    sub-float/2addr v0, p0

    .line 1
    aput v0, p1, v4

    .line 2
    aput v3, p1, v2

    goto :goto_0

    .line 3
    :cond_0
    aput v3, p1, v4

    mul-float p0, p0, v1

    sub-float/2addr p0, v0

    .line 4
    aput p0, p1, v2

    :goto_0
    return-void
.end method
