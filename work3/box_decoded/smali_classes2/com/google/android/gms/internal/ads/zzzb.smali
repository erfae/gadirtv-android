.class final Lcom/google/android/gms/internal/ads/zzzb;
.super Lcom/google/android/gms/internal/ads/zzwp;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# instance fields
.field private final synthetic zzcjt:Lcom/google/android/gms/internal/ads/zzzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzzc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzb;->zzcjt:Lcom/google/android/gms/internal/ads/zzzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwp;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->zzcjt:Lcom/google/android/gms/internal/ads/zzzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzc;->zza(Lcom/google/android/gms/internal/ads/zzzc;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzb;->zzcjt:Lcom/google/android/gms/internal/ads/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzc;->zzdw()Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzys;)V

    .line 6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzwp;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->zzcjt:Lcom/google/android/gms/internal/ads/zzzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzc;->zza(Lcom/google/android/gms/internal/ads/zzzc;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzb;->zzcjt:Lcom/google/android/gms/internal/ads/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzc;->zzdw()Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzys;)V

    .line 9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzwp;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->zzcjt:Lcom/google/android/gms/internal/ads/zzzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzc;->zza(Lcom/google/android/gms/internal/ads/zzzc;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzb;->zzcjt:Lcom/google/android/gms/internal/ads/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzc;->zzdw()Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzys;)V

    .line 3
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzwp;->onAdLoaded()V

    return-void
.end method
