.class final synthetic Lcom/google/android/gms/internal/ads/zzcxo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgwa:Lcom/google/android/gms/internal/ads/zzcxq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcxq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxo;->zzgwa:Lcom/google/android/gms/internal/ads/zzcxq;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzcxq;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcxo;-><init>(Lcom/google/android/gms/internal/ads/zzcxq;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxo;->zzgwa:Lcom/google/android/gms/internal/ads/zzcxq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxq;->onAdLoaded()V

    return-void
.end method
