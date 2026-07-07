.class public final Lcom/google/android/gms/internal/ads/zzcbh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzgao:Lorg/json/JSONObject;

.field private final zzgbk:Lcom/google/android/gms/internal/ads/zzcgh;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcgh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzgao:Lorg/json/JSONObject;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzgbk:Lcom/google/android/gms/internal/ads/zzcgh;

    return-void
.end method


# virtual methods
.method public final zzamu()Lorg/json/JSONObject;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzgao:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zzamv()Lcom/google/android/gms/internal/ads/zzcgh;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzgbk:Lcom/google/android/gms/internal/ads/zzcgh;

    return-object v0
.end method
