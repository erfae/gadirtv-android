.class final synthetic Lcom/google/android/gms/internal/ads/zzcfi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzfqs:Lorg/json/JSONObject;

.field private final zzggx:Lcom/google/android/gms/internal/ads/zzcff;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcff;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzggx:Lcom/google/android/gms/internal/ads/zzcff;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzfqs:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzggx:Lcom/google/android/gms/internal/ads/zzcff;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzfqs:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcff;->zza(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbdv;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
