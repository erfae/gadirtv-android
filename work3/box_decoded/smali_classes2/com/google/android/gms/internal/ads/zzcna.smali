.class final synthetic Lcom/google/android/gms/internal/ads/zzcna;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzedt:I

.field private final zzgme:Lcom/google/android/gms/internal/ads/zzatl;

.field private final zzgmp:Lcom/google/android/gms/internal/ads/zzcmx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmx;Lcom/google/android/gms/internal/ads/zzatl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcna;->zzgmp:Lcom/google/android/gms/internal/ads/zzcmx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcna;->zzgme:Lcom/google/android/gms/internal/ads/zzatl;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcna;->zzedt:I

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcna;->zzgmp:Lcom/google/android/gms/internal/ads/zzcmx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcna;->zzgme:Lcom/google/android/gms/internal/ads/zzatl;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcna;->zzedt:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcmx;->zza(Lcom/google/android/gms/internal/ads/zzatl;ILjava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
