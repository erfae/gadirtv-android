.class final synthetic Lcom/google/android/gms/internal/ads/zzdrr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwm;


# instance fields
.field private final zzhoz:Lcom/google/android/gms/internal/ads/zzdqx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdqx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrr;->zzhoz:Lcom/google/android/gms/internal/ads/zzdqx;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->zzhoz:Lcom/google/android/gms/internal/ads/zzdqx;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdru;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzawt()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdrl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzawu()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdru;->zzc(Lcom/google/android/gms/internal/ads/zzdrl;Ljava/lang/String;)V

    return-void
.end method
