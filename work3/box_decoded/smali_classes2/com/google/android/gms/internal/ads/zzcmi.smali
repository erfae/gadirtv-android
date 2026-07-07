.class final synthetic Lcom/google/android/gms/internal/ads/zzcmi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzedt:I

.field private final zzgmd:Lcom/google/android/gms/internal/ads/zzcmd;

.field private final zzgme:Lcom/google/android/gms/internal/ads/zzatl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmd;Lcom/google/android/gms/internal/ads/zzatl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzgmd:Lcom/google/android/gms/internal/ads/zzcmd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzgme:Lcom/google/android/gms/internal/ads/zzatl;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzedt:I

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzgmd:Lcom/google/android/gms/internal/ads/zzcmd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzgme:Lcom/google/android/gms/internal/ads/zzatl;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzedt:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcoh;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcmd;->zza(Lcom/google/android/gms/internal/ads/zzatl;ILcom/google/android/gms/internal/ads/zzcoh;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
