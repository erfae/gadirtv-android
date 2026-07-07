.class final synthetic Lcom/google/android/gms/internal/ads/zzcgr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzu;


# instance fields
.field private final zzghs:Lcom/google/android/gms/internal/ads/zzbsu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbsu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzghs:Lcom/google/android/gms/internal/ads/zzbsu;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzbsu;)Lcom/google/android/gms/ads/internal/overlay/zzu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcgr;-><init>(Lcom/google/android/gms/internal/ads/zzbsu;)V

    return-object v0
.end method


# virtual methods
.method public final zzvo()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzghs:Lcom/google/android/gms/internal/ads/zzbsu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsu;->onAdLeftApplication()V

    return-void
.end method
