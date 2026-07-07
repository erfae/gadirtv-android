.class final synthetic Lcom/google/android/gms/internal/ads/zzcyt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgxb:Lcom/google/android/gms/internal/ads/zzcyu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyt;->zzgxb:Lcom/google/android/gms/internal/ads/zzcyu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyt;->zzgxb:Lcom/google/android/gms/internal/ads/zzcyu;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcyu;->zzgxe:Lcom/google/android/gms/internal/ads/zzcyp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcyp;->zza(Lcom/google/android/gms/internal/ads/zzcyp;)Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcyj;->zzasc()Lcom/google/android/gms/internal/ads/zzbtj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbtj;->onAdLoaded()V

    return-void
.end method
