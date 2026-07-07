.class public final Lcom/google/android/gms/internal/ads/zzcau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzepf<",
        "Lcom/google/android/gms/internal/ads/zzccl;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgal:Lcom/google/android/gms/internal/ads/zzcap;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcau;->zzgal:Lcom/google/android/gms/internal/ads/zzcap;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcap;)Lcom/google/android/gms/internal/ads/zzcau;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcau;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcau;-><init>(Lcom/google/android/gms/internal/ads/zzcap;)V

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzcap;)Lcom/google/android/gms/internal/ads/zzccl;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcap;->zzamj()Lcom/google/android/gms/internal/ads/zzccl;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzccl;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcau;->zzgal:Lcom/google/android/gms/internal/ads/zzcap;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcau;->zze(Lcom/google/android/gms/internal/ads/zzcap;)Lcom/google/android/gms/internal/ads/zzccl;

    move-result-object v0

    return-object v0
.end method
