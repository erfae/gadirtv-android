.class final synthetic Lcom/google/android/gms/internal/ads/zzcsy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzgqw:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzgqx:Lcom/google/android/gms/internal/ads/zzdnj;

.field private final zzgqy:Lcom/google/android/gms/internal/ads/zzcif;

.field private final zzgsd:Lcom/google/android/gms/internal/ads/zzcsv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsv;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzcif;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzgsd:Lcom/google/android/gms/internal/ads/zzcsv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzgqw:Lcom/google/android/gms/internal/ads/zzdmu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzgqx:Lcom/google/android/gms/internal/ads/zzdnj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzgqy:Lcom/google/android/gms/internal/ads/zzcif;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzgsd:Lcom/google/android/gms/internal/ads/zzcsv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzgqw:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzgqx:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzgqy:Lcom/google/android/gms/internal/ads/zzcif;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcsv;->zzb(Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzcif;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
