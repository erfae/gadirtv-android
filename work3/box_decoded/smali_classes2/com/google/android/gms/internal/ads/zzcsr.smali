.class final Lcom/google/android/gms/internal/ads/zzcsr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "Lcom/google/android/gms/internal/ads/zzbme;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgry:Lcom/google/android/gms/internal/ads/zzcsq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsr;->zzgry:Lcom/google/android/gms/internal/ads/zzcsq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbme;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboc;->zzajj()V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsr;->zzgry:Lcom/google/android/gms/internal/ads/zzcsq;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcsq;->zza(Lcom/google/android/gms/internal/ads/zzcsq;)Lcom/google/android/gms/internal/ads/zzbna;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbna;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzboz;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsr;->zzgry:Lcom/google/android/gms/internal/ads/zzcsq;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcsq;->zzb(Lcom/google/android/gms/internal/ads/zzcsq;)Lcom/google/android/gms/internal/ads/zzbrx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbrx;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V

    .line 5
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzve;->errorCode:I

    const-string v1, "DelayedBannerAd.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
