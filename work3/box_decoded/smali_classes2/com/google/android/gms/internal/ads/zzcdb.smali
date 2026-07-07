.class final Lcom/google/android/gms/internal/ads/zzcdb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadx;


# instance fields
.field private final synthetic zzgel:Lcom/google/android/gms/internal/ads/zzcdy;

.field private final synthetic zzgem:Landroid/view/ViewGroup;

.field private final synthetic zzgen:Lcom/google/android/gms/internal/ads/zzcda;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcda;Lcom/google/android/gms/internal/ads/zzcdy;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzgen:Lcom/google/android/gms/internal/ads/zzcda;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzgel:Lcom/google/android/gms/internal/ads/zzcdy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzgem:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/view/MotionEvent;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzgel:Lcom/google/android/gms/internal/ads/zzcdy;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcdy;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final zzss()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzgen:Lcom/google/android/gms/internal/ads/zzcda;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzgel:Lcom/google/android/gms/internal/ads/zzcdy;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzccy;->zzgeb:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcda;->zza(Lcom/google/android/gms/internal/ads/zzcda;Lcom/google/android/gms/internal/ads/zzcdy;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzgel:Lcom/google/android/gms/internal/ads/zzcdy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzgem:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdy;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final zzst()Lorg/json/JSONObject;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzgel:Lcom/google/android/gms/internal/ads/zzcdy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcdy;->zzst()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
