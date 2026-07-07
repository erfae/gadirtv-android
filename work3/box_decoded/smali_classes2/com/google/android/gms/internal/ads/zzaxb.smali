.class final synthetic Lcom/google/android/gms/internal/ads/zzaxb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdgt:Ljava/lang/String;

.field private final zzeab:Lcom/google/android/gms/internal/ads/zzawx;

.field private final zzeac:Lcom/google/android/gms/internal/ads/zzaxn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawx;Lcom/google/android/gms/internal/ads/zzaxn;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxb;->zzeab:Lcom/google/android/gms/internal/ads/zzawx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaxb;->zzeac:Lcom/google/android/gms/internal/ads/zzaxn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaxb;->zzdgt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxb;->zzeab:Lcom/google/android/gms/internal/ads/zzawx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxb;->zzeac:Lcom/google/android/gms/internal/ads/zzaxn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxb;->zzdgt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzawx;->zza(Lcom/google/android/gms/internal/ads/zzaxn;Ljava/lang/String;)V

    return-void
.end method
