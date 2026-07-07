.class final synthetic Lcom/google/android/gms/internal/ads/zzcoo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcor;


# instance fields
.field private final zzgnm:Lcom/google/android/gms/internal/ads/zzcnx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcnx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzgnm:Lcom/google/android/gms/internal/ads/zzcnx;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzcnx;)Lcom/google/android/gms/internal/ads/zzcor;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcoo;-><init>(Lcom/google/android/gms/internal/ads/zzcnx;)V

    return-object v0
.end method


# virtual methods
.method public final zzq(Lcom/google/android/gms/internal/ads/zzatl;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzgnm:Lcom/google/android/gms/internal/ads/zzcnx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcnx;->zzk(Lcom/google/android/gms/internal/ads/zzatl;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
