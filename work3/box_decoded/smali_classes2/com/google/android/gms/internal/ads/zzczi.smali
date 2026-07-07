.class final synthetic Lcom/google/android/gms/internal/ads/zzczi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzdgt:Ljava/lang/String;

.field private final zzgxl:Lcom/google/android/gms/internal/ads/zzcyx;

.field private final zzgxo:[Lcom/google/android/gms/internal/ads/zzcgh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyx;[Lcom/google/android/gms/internal/ads/zzcgh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczi;->zzgxl:Lcom/google/android/gms/internal/ads/zzcyx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczi;->zzgxo:[Lcom/google/android/gms/internal/ads/zzcgh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzczi;->zzdgt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczi;->zzgxl:Lcom/google/android/gms/internal/ads/zzcyx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczi;->zzgxo:[Lcom/google/android/gms/internal/ads/zzcgh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczi;->zzdgt:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgh;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcyx;->zza([Lcom/google/android/gms/internal/ads/zzcgh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgh;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
