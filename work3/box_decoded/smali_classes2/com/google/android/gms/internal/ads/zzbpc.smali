.class final synthetic Lcom/google/android/gms/internal/ads/zzbpc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzfvx:Lcom/google/android/gms/internal/ads/zzcod;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zzfvx:Lcom/google/android/gms/internal/ads/zzcod;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzcod;)Lcom/google/android/gms/internal/ads/zzdyb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>(Lcom/google/android/gms/internal/ads/zzcod;)V

    return-object v0
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zzfvx:Lcom/google/android/gms/internal/ads/zzcod;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcod;->zzh(Lcom/google/android/gms/internal/ads/zzatl;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
