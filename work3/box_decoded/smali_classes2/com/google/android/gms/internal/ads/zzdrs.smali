.class final synthetic Lcom/google/android/gms/internal/ads/zzdrs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwm;


# instance fields
.field private final zzhoz:Lcom/google/android/gms/internal/ads/zzdqx;

.field private final zzhpa:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdqx;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zzhoz:Lcom/google/android/gms/internal/ads/zzdqx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zzhpa:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zzhoz:Lcom/google/android/gms/internal/ads/zzdqx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zzhpa:Ljava/lang/Throwable;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdru;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzawt()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdrl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzawu()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdru;->zza(Lcom/google/android/gms/internal/ads/zzdrl;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
