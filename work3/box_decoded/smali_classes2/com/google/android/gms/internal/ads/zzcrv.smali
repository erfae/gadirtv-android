.class final synthetic Lcom/google/android/gms/internal/ads/zzcrv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

.field private final zzgri:Lcom/google/android/gms/internal/ads/zzcrw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcrw;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrv;->zzgri:Lcom/google/android/gms/internal/ads/zzcrw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrv;->zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcrv;->zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrv;->zzgri:Lcom/google/android/gms/internal/ads/zzcrw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrv;->zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcrv;->zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcrw;->zzb(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
