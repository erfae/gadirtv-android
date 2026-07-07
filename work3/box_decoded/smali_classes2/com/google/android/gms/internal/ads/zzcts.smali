.class final synthetic Lcom/google/android/gms/internal/ads/zzcts;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzgsk:Lcom/google/android/gms/internal/ads/zzctn;

.field private final zzgsl:Lcom/google/android/gms/internal/ads/zzcgh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctn;Lcom/google/android/gms/internal/ads/zzcgh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzgsk:Lcom/google/android/gms/internal/ads/zzctn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzgsl:Lcom/google/android/gms/internal/ads/zzcgh;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzgsk:Lcom/google/android/gms/internal/ads/zzctn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcts;->zzgsl:Lcom/google/android/gms/internal/ads/zzcgh;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzctn;->zza(Lcom/google/android/gms/internal/ads/zzcgh;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
