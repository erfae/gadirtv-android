.class public final Lcom/google/android/gms/internal/ads/zzduo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# static fields
.field private static final zzhsg:Lcom/google/android/gms/internal/ads/zzdul;

.field private static volatile zzhsh:Lcom/google/android/gms/internal/ads/zzdul;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzduq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzduq;-><init>(Lcom/google/android/gms/internal/ads/zzdun;)V

    .line 3
    sput-object v0, Lcom/google/android/gms/internal/ads/zzduo;->zzhsg:Lcom/google/android/gms/internal/ads/zzdul;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzduo;->zzhsh:Lcom/google/android/gms/internal/ads/zzdul;

    return-void
.end method

.method public static zzayg()Lcom/google/android/gms/internal/ads/zzdul;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzduo;->zzhsh:Lcom/google/android/gms/internal/ads/zzdul;

    return-object v0
.end method
