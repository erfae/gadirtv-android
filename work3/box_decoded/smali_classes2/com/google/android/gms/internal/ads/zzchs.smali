.class final Lcom/google/android/gms/internal/ads/zzchs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzk;


# instance fields
.field private final synthetic zzgin:Lcom/google/android/gms/internal/ads/zzchp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzgin:Lcom/google/android/gms/internal/ads/zzchp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzkm()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzgin:Lcom/google/android/gms/internal/ads/zzchp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchp;->zza(Lcom/google/android/gms/internal/ads/zzchp;)Lcom/google/android/gms/internal/ads/zzbua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbua;->onPause()V

    return-void
.end method

.method public final zzkn()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzgin:Lcom/google/android/gms/internal/ads/zzchp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchp;->zza(Lcom/google/android/gms/internal/ads/zzchp;)Lcom/google/android/gms/internal/ads/zzbua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbua;->onResume()V

    return-void
.end method
