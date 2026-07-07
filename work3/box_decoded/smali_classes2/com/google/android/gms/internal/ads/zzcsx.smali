.class final synthetic Lcom/google/android/gms/internal/ads/zzcsx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgra:Lcom/google/android/gms/internal/ads/zzcif;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcif;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zzgra:Lcom/google/android/gms/internal/ads/zzcif;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzcif;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcsx;-><init>(Lcom/google/android/gms/internal/ads/zzcif;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zzgra:Lcom/google/android/gms/internal/ads/zzcif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcif;->zzapd()V

    return-void
.end method
