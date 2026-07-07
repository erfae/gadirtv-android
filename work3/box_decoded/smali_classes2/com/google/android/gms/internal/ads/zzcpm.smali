.class public final Lcom/google/android/gms/internal/ads/zzcpm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzgoh:Lcom/google/android/gms/internal/ads/zzatr;

.field private final zzgoi:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzatr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpm;->zzgoi:Lorg/json/JSONObject;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpm;->zzgoh:Lcom/google/android/gms/internal/ads/zzatr;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcpm;)Lcom/google/android/gms/internal/ads/zzatr;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcpm;->zzgoh:Lcom/google/android/gms/internal/ads/zzatr;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcpm;)Lorg/json/JSONObject;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcpm;->zzgoi:Lorg/json/JSONObject;

    return-object p0
.end method
