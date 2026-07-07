.class final synthetic Lcom/google/android/gms/internal/ads/zzdjq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzhem:Lcom/google/android/gms/internal/ads/zzdjp;

.field private final zzhet:Lcom/google/android/gms/internal/ads/zzdkn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdjp;Lcom/google/android/gms/internal/ads/zzdkn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zzhem:Lcom/google/android/gms/internal/ads/zzdjp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zzhet:Lcom/google/android/gms/internal/ads/zzdkn;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zzhem:Lcom/google/android/gms/internal/ads/zzdjp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zzhet:Lcom/google/android/gms/internal/ads/zzdkn;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpz;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdjp;->zza(Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdpz;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
