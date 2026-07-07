.class final synthetic Lcom/google/android/gms/internal/ads/zzbom;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfva:Lcom/google/android/gms/internal/ads/zzdyo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdyo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbom;->zzfva:Lcom/google/android/gms/internal/ads/zzdyo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbom;->zzfva:Lcom/google/android/gms/internal/ads/zzdyo;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcme;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdok;->zzhjn:Lcom/google/android/gms/internal/ads/zzdok;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcme;-><init>(Lcom/google/android/gms/internal/ads/zzdok;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdyo;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method
