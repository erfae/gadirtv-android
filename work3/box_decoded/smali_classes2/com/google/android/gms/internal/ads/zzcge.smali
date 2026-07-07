.class final Lcom/google/android/gms/internal/ads/zzcge;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadx;


# instance fields
.field private final synthetic zzghg:Lcom/google/android/gms/internal/ads/zzcgb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzghg:Lcom/google/android/gms/internal/ads/zzcgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final zzss()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzghg:Lcom/google/android/gms/internal/ads/zzcgb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgb;->zza(Lcom/google/android/gms/internal/ads/zzcgb;)Lcom/google/android/gms/internal/ads/zzcbt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzghg:Lcom/google/android/gms/internal/ads/zzcgb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgb;->zza(Lcom/google/android/gms/internal/ads/zzcgb;)Lcom/google/android/gms/internal/ads/zzcbt;

    move-result-object v0

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbt;->zzfw(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzst()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
