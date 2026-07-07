.class final synthetic Lcom/google/android/gms/internal/ads/zzcvn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcaf;


# instance fields
.field private final zzgro:Lcom/google/android/gms/internal/ads/zzcrb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcrb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvn;->zzgro:Lcom/google/android/gms/internal/ads/zzcrb;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvn;->zzgro:Lcom/google/android/gms/internal/ads/zzcrb;

    .line 2
    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdoe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdoe;->setImmersiveMode(Z)V

    .line 3
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdoe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoe;->showVideo()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdnr; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Cannot show rewarded video."

    .line 6
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcai;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdnr;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzcai;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
