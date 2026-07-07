.class final synthetic Lcom/google/android/gms/internal/ads/zzbku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfqs:Lorg/json/JSONObject;

.field private final zzfrt:Lcom/google/android/gms/internal/ads/zzbkr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbkr;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzfrt:Lcom/google/android/gms/internal/ads/zzbkr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzfqs:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzfrt:Lcom/google/android/gms/internal/ads/zzbkr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbku;->zzfqs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkr;->zzi(Lorg/json/JSONObject;)V

    return-void
.end method
