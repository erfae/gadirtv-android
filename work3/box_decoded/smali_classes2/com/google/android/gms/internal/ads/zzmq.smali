.class final Lcom/google/android/gms/internal/ads/zzmq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbei:Lcom/google/android/gms/internal/ads/zzmo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzmo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbei:Lcom/google/android/gms/internal/ads/zzmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbei:Lcom/google/android/gms/internal/ads/zzmo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzmo;->zzb(Lcom/google/android/gms/internal/ads/zzmo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbei:Lcom/google/android/gms/internal/ads/zzmo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzmo;->zzc(Lcom/google/android/gms/internal/ads/zzmo;)Lcom/google/android/gms/internal/ads/zznb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzbei:Lcom/google/android/gms/internal/ads/zzmo;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zznb;->zza(Lcom/google/android/gms/internal/ads/zznm;)V

    :cond_0
    return-void
.end method
