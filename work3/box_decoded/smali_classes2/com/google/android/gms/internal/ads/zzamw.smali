.class final synthetic Lcom/google/android/gms/internal/ads/zzamw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzdkn:Lcom/google/android/gms/internal/ads/zzamx;

.field private final zzdko:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamx;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdkn:Lcom/google/android/gms/internal/ads/zzamx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdko:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdkn:Lcom/google/android/gms/internal/ads/zzamx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdko:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalz;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzamx;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzalz;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
