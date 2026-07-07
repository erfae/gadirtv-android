.class final synthetic Lcom/google/android/gms/internal/ads/zzdkz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzhfo:Lcom/google/android/gms/internal/ads/zzdkx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdkx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhfo:Lcom/google/android/gms/internal/ads/zzdkx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhfo:Lcom/google/android/gms/internal/ads/zzdkx;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhfq:Lcom/google/android/gms/internal/ads/zzdkv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdkv;->zza(Lcom/google/android/gms/internal/ads/zzdkv;)Lcom/google/android/gms/internal/ads/zzdlf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlf;->onAdLoaded()V

    return-void
.end method
