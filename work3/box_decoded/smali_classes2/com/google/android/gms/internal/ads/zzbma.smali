.class public final Lcom/google/android/gms/internal/ads/zzbma;
.super Lcom/google/android/gms/internal/ads/zzsj;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzbul:Lcom/google/android/gms/internal/ads/zzxg;

.field private final zzfsy:Lcom/google/android/gms/internal/ads/zzbll;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbll;Lcom/google/android/gms/internal/ads/zzxg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsj;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbma;->zzfsy:Lcom/google/android/gms/internal/ads/zzbll;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbma;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzsq;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsm;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbma;->zzfsy:Lcom/google/android/gms/internal/ads/zzbll;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbll;->zza(Lcom/google/android/gms/internal/ads/zzsm;)V

    return-void
.end method

.method public final zzdx()Lcom/google/android/gms/internal/ads/zzxg;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbma;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    return-object v0
.end method

.method public final zzkh()Lcom/google/android/gms/internal/ads/zzyn;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
