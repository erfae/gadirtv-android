.class final synthetic Lcom/google/android/gms/internal/ads/zzcsd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbnz;


# instance fields
.field private final zzgrn:Lcom/google/android/gms/internal/ads/zzdoe;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdoe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsd;->zzgrn:Lcom/google/android/gms/internal/ads/zzdoe;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzdoe;)Lcom/google/android/gms/internal/ads/zzbnz;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcsd;-><init>(Lcom/google/android/gms/internal/ads/zzdoe;)V

    return-object v0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzys;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsd;->zzgrn:Lcom/google/android/gms/internal/ads/zzdoe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoe;->getVideoController()Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v0

    return-object v0
.end method
