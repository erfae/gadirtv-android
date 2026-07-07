.class final synthetic Lcom/google/android/gms/internal/ads/zzcus;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

.field private final zzgtf:Lcom/google/android/gms/internal/ads/zzcup;

.field private final zzgtg:Lcom/google/android/gms/internal/ads/zzcqz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcup;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcqz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzgtf:Lcom/google/android/gms/internal/ads/zzcup;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzgtg:Lcom/google/android/gms/internal/ads/zzcqz;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzgtf:Lcom/google/android/gms/internal/ads/zzcup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzgtg:Lcom/google/android/gms/internal/ads/zzcqz;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcup;->zza(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcqz;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
