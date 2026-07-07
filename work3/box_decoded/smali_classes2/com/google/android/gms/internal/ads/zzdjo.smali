.class final synthetic Lcom/google/android/gms/internal/ads/zzdjo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzhem:Lcom/google/android/gms/internal/ads/zzdjp;

.field private final zzhen:Lcom/google/android/gms/internal/ads/zzdkm;

.field private final zzheo:Lcom/google/android/gms/internal/ads/zzdjs;

.field private final zzhep:Lcom/google/android/gms/internal/ads/zzdkn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdjp;Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdjs;Lcom/google/android/gms/internal/ads/zzdkn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzhem:Lcom/google/android/gms/internal/ads/zzdjp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzhen:Lcom/google/android/gms/internal/ads/zzdkm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzheo:Lcom/google/android/gms/internal/ads/zzdjs;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzhep:Lcom/google/android/gms/internal/ads/zzdkn;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzhem:Lcom/google/android/gms/internal/ads/zzdjp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzhen:Lcom/google/android/gms/internal/ads/zzdkm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzheo:Lcom/google/android/gms/internal/ads/zzdjs;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzhep:Lcom/google/android/gms/internal/ads/zzdkn;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdjy;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdjp;->zza(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdjs;Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdjy;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
