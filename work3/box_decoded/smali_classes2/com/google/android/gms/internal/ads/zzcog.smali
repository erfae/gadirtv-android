.class final synthetic Lcom/google/android/gms/internal/ads/zzcog;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzgme:Lcom/google/android/gms/internal/ads/zzatl;

.field private final zzgnu:Lcom/google/android/gms/internal/ads/zzeps;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzatl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzgnu:Lcom/google/android/gms/internal/ads/zzeps;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzgme:Lcom/google/android/gms/internal/ads/zzatl;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzgnu:Lcom/google/android/gms/internal/ads/zzeps;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzgme:Lcom/google/android/gms/internal/ads/zzatl;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcme;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeps;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcoi;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzcoi;->zzh(Lcom/google/android/gms/internal/ads/zzatl;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
