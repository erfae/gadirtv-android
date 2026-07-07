.class final synthetic Lcom/google/android/gms/internal/ads/zzbsh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwm;


# static fields
.field static final zzfxs:Lcom/google/android/gms/internal/ads/zzbwm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbsh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbsh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbsh;->zzfxs:Lcom/google/android/gms/internal/ads/zzbwm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbsi;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhjv:Lcom/google/android/gms/internal/ads/zzdok;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdoi;->zza(Lcom/google/android/gms/internal/ads/zzdok;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzve;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbsi;->zzj(Lcom/google/android/gms/internal/ads/zzve;)V

    return-void
.end method
