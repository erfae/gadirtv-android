.class public final Lcom/google/android/gms/internal/ads/zzdst;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.5.0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzhqa:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdst;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdst;->zzhqa:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final zzgz(Ljava/lang/String;)V
    .locals 3

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdti;->zzaxl()Lcom/google/android/gms/internal/ads/zzdti$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdst;->context:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdti$zza;->zzhc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdti$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdti$zzb;->zzhra:Lcom/google/android/gms/internal/ads/zzdti$zzb;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdti$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdti$zzb;)Lcom/google/android/gms/internal/ads/zzdti$zza;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdte;->zzaxj()Lcom/google/android/gms/internal/ads/zzdte$zzb;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdte$zzb;->zzhb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdte$zzb;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdte$zza;->zzhqt:Lcom/google/android/gms/internal/ads/zzdte$zza;

    .line 10
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzdte$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzdte$zza;)Lcom/google/android/gms/internal/ads/zzdte$zzb;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdti$zza;->zza(Lcom/google/android/gms/internal/ads/zzdte$zzb;)Lcom/google/android/gms/internal/ads/zzdti$zza;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzbhv()Lcom/google/android/gms/internal/ads/zzels;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzekh;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdti;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdst;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdst;->zzhqa:Landroid/os/Looper;

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdsw;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdsw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdti;)V

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaxh()V

    return-void
.end method
