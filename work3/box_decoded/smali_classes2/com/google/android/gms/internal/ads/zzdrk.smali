.class final synthetic Lcom/google/android/gms/internal/ads/zzdrk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzhnz:Lcom/google/android/gms/internal/ads/zzdrg;

.field private final zzhoa:Lcom/google/android/gms/internal/ads/zzdqx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdrg;Lcom/google/android/gms/internal/ads/zzdqx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrk;->zzhnz:Lcom/google/android/gms/internal/ads/zzdrg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrk;->zzhoa:Lcom/google/android/gms/internal/ads/zzdqx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrk;->zzhnz:Lcom/google/android/gms/internal/ads/zzdrg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrk;->zzhoa:Lcom/google/android/gms/internal/ads/zzdqx;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdrg;->zzhns:Lcom/google/android/gms/internal/ads/zzdra;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdra;->zzc(Lcom/google/android/gms/internal/ads/zzdra;)Lcom/google/android/gms/internal/ads/zzdrm;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrm;->zzb(Lcom/google/android/gms/internal/ads/zzdqx;)V

    return-void
.end method
