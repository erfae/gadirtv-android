.class final Lcom/google/android/gms/internal/ads/zzdrj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "TO;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzhnx:Lcom/google/android/gms/internal/ads/zzdqx;

.field private final synthetic zzhny:Lcom/google/android/gms/internal/ads/zzdrg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdrg;Lcom/google/android/gms/internal/ads/zzdqx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrj;->zzhny:Lcom/google/android/gms/internal/ads/zzdrg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrj;->zzhnx:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrj;->zzhny:Lcom/google/android/gms/internal/ads/zzdrg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdrg;->zzhns:Lcom/google/android/gms/internal/ads/zzdra;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdra;->zzc(Lcom/google/android/gms/internal/ads/zzdra;)Lcom/google/android/gms/internal/ads/zzdrm;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrj;->zzhnx:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdrm;->zzc(Lcom/google/android/gms/internal/ads/zzdqx;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrj;->zzhny:Lcom/google/android/gms/internal/ads/zzdrg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdrg;->zzhns:Lcom/google/android/gms/internal/ads/zzdra;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdra;->zzc(Lcom/google/android/gms/internal/ads/zzdra;)Lcom/google/android/gms/internal/ads/zzdrm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrj;->zzhnx:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdrm;->zza(Lcom/google/android/gms/internal/ads/zzdqx;Ljava/lang/Throwable;)V

    return-void
.end method
