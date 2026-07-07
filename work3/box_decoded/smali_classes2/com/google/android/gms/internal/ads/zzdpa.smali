.class public final Lcom/google/android/gms/internal/ads/zzdpa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private zzhkg:Lcom/google/android/gms/internal/ads/zzdoz;

.field private zzhkh:Lcom/google/android/gms/internal/ads/zzdoz;

.field private zzhki:Lcom/google/android/gms/internal/ads/zzdoz;

.field private zzhkj:Lcom/google/android/gms/internal/ads/zzdoz;

.field private zzhkk:Lcom/google/android/gms/internal/ads/zzdoz;

.field private zzhkl:Lcom/google/android/gms/internal/ads/zzdoz;

.field private zzhkm:Lcom/google/android/gms/internal/ads/zzdoz;

.field private zzhkn:Lcom/google/android/gms/internal/ads/zzdoz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpa;->zzhkg:Lcom/google/android/gms/internal/ads/zzdoz;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpa;->zzhkh:Lcom/google/android/gms/internal/ads/zzdoz;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpa;->zzhki:Lcom/google/android/gms/internal/ads/zzdoz;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpa;->zzhkj:Lcom/google/android/gms/internal/ads/zzdoz;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpa;->zzhkk:Lcom/google/android/gms/internal/ads/zzdoz;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpa;->zzhkl:Lcom/google/android/gms/internal/ads/zzdoz;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpa;->zzhkm:Lcom/google/android/gms/internal/ads/zzdoz;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpa;->zzhkn:Lcom/google/android/gms/internal/ads/zzdoz;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpa;->zzhkj:Lcom/google/android/gms/internal/ads/zzdoz;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdoz;->execute()V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdoz;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpa;->zzhkj:Lcom/google/android/gms/internal/ads/zzdoz;

    return-void
.end method
