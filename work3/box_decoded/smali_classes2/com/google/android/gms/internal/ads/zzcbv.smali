.class final synthetic Lcom/google/android/gms/internal/ads/zzcbv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgcg:Lcom/google/android/gms/internal/ads/zzccm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzccm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbv;->zzgcg:Lcom/google/android/gms/internal/ads/zzccm;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzccm;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcbv;-><init>(Lcom/google/android/gms/internal/ads/zzccm;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbv;->zzgcg:Lcom/google/android/gms/internal/ads/zzccm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccm;->zzamt()V

    return-void
.end method
