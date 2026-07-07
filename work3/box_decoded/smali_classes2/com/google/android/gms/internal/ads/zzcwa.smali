.class final synthetic Lcom/google/android/gms/internal/ads/zzcwa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqv;


# instance fields
.field private final zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

.field private final zzgtp:Lcom/google/android/gms/internal/ads/zzcrb;

.field private final zzgua:Lcom/google/android/gms/internal/ads/zzcvy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcvy;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcrb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwa;->zzgua:Lcom/google/android/gms/internal/ads/zzcvy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwa;->zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwa;->zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcwa;->zzgtp:Lcom/google/android/gms/internal/ads/zzcrb;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwa;->zzgua:Lcom/google/android/gms/internal/ads/zzcvy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwa;->zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcwa;->zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcwa;->zzgtp:Lcom/google/android/gms/internal/ads/zzcrb;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcvy;->zza(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcrb;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
