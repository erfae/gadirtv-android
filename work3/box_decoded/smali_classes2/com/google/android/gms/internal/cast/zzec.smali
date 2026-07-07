.class final Lcom/google/android/gms/internal/cast/zzec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# static fields
.field private static final zzafi:Landroid/view/animation/Interpolator;

.field private static final zzafj:Landroid/view/animation/Interpolator;

.field private static final zzafk:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v0, v0, v1, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/cast/zzec;->zzafi:Landroid/view/animation/Interpolator;

    const v3, 0x3ecccccd    # 0.4f

    .line 7
    invoke-static {v3, v0, v2, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/cast/zzec;->zzafj:Landroid/view/animation/Interpolator;

    .line 9
    invoke-static {v3, v0, v1, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cast/zzec;->zzafk:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic zzfo()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzec;->zzafi:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic zzfp()Landroid/view/animation/Interpolator;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/cast/zzec;->zzafj:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic zzfq()Landroid/view/animation/Interpolator;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzec;->zzafk:Landroid/view/animation/Interpolator;

    return-object v0
.end method
