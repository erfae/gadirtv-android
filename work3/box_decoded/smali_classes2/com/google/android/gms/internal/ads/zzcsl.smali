.class final synthetic Lcom/google/android/gms/internal/ads/zzcsl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzeda:Landroid/net/Uri;

.field private final zzgqx:Lcom/google/android/gms/internal/ads/zzdnj;

.field private final zzgrr:Lcom/google/android/gms/internal/ads/zzcsm;

.field private final zzgrs:Lcom/google/android/gms/internal/ads/zzdmu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsm;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsl;->zzgrr:Lcom/google/android/gms/internal/ads/zzcsm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsl;->zzeda:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsl;->zzgqx:Lcom/google/android/gms/internal/ads/zzdnj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcsl;->zzgrs:Lcom/google/android/gms/internal/ads/zzdmu;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsl;->zzgrr:Lcom/google/android/gms/internal/ads/zzcsm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsl;->zzeda:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsl;->zzgqx:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcsl;->zzgrs:Lcom/google/android/gms/internal/ads/zzdmu;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcsm;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
