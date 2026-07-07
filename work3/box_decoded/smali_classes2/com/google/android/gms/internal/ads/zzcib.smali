.class final Lcom/google/android/gms/internal/ads/zzcib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaqx;


# instance fields
.field private final synthetic zzgip:Lcom/google/android/gms/internal/ads/zzchr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzgip:Lcom/google/android/gms/internal/ads/zzchr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(IIII)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzgip:Lcom/google/android/gms/internal/ads/zzchr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzchr;->zza(Lcom/google/android/gms/internal/ads/zzchr;)Lcom/google/android/gms/internal/ads/zzbsu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsu;->onAdOpened()V

    return-void
.end method

.method public final zzva()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzgip:Lcom/google/android/gms/internal/ads/zzchr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchr;->zza(Lcom/google/android/gms/internal/ads/zzchr;)Lcom/google/android/gms/internal/ads/zzbsu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsu;->onAdClosed()V

    return-void
.end method

.method public final zzvb()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcib;->zzgip:Lcom/google/android/gms/internal/ads/zzchr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchr;->zzb(Lcom/google/android/gms/internal/ads/zzchr;)Lcom/google/android/gms/internal/ads/zzbvr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvr;->zzajn()V

    return-void
.end method
