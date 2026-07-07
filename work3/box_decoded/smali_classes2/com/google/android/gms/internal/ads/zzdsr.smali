.class public final Lcom/google/android/gms/internal/ads/zzdsr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.5.0"


# direct methods
.method public static zza(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzgn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdsi;)Lcom/google/android/gms/internal/ads/zzdud;
    .locals 8

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdsu;

    const/4 v2, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdsu;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzgn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdsi;)V

    const p0, 0xc350

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzdsu;->zzeg(I)Lcom/google/android/gms/internal/ads/zzdud;

    move-result-object p0

    return-object p0
.end method
