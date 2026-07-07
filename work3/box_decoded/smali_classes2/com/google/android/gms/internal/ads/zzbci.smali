.class final synthetic Lcom/google/android/gms/internal/ads/zzbci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkb;


# static fields
.field static final zzenr:Lcom/google/android/gms/internal/ads/zzkb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbci;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbci;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzenr:Lcom/google/android/gms/internal/ads/zzkb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzgt()[Lcom/google/android/gms/internal/ads/zzjw;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzjw;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzlk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzlk;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzkm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzkm;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
