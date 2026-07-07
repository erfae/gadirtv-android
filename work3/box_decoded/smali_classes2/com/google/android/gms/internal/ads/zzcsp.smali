.class final synthetic Lcom/google/android/gms/internal/ads/zzcsp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

.field private final zzgrv:Lcom/google/android/gms/internal/ads/zzcsq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsq;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsp;->zzgrv:Lcom/google/android/gms/internal/ads/zzcsq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsp;->zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsp;->zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsp;->zzgrv:Lcom/google/android/gms/internal/ads/zzcsq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsp;->zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsp;->zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcsq;->zzc(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;)Lcom/google/android/gms/internal/ads/zzbme;

    move-result-object v0

    return-object v0
.end method
