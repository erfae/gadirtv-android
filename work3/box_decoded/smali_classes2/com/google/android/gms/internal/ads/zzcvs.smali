.class final Lcom/google/android/gms/internal/ads/zzcvs;
.super Lcom/google/android/gms/internal/ads/zzauz;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final synthetic zzgtt:Lcom/google/android/gms/internal/ads/zzbtr;

.field private final synthetic zzgtu:Lcom/google/android/gms/internal/ads/zzbrt;

.field private final synthetic zzgtv:Lcom/google/android/gms/internal/ads/zzbsu;

.field private final synthetic zzgtw:Lcom/google/android/gms/internal/ads/zzbyi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcvo;Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbrt;Lcom/google/android/gms/internal/ads/zzbsu;Lcom/google/android/gms/internal/ads/zzbyi;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgtt:Lcom/google/android/gms/internal/ads/zzbtr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgtu:Lcom/google/android/gms/internal/ads/zzbrt;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgtv:Lcom/google/android/gms/internal/ads/zzbsu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgtw:Lcom/google/android/gms/internal/ads/zzbyi;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzauz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzava;)V
    .locals 0

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgtw:Lcom/google/android/gms/internal/ads/zzbyi;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbyi;->zza(Lcom/google/android/gms/internal/ads/zzava;)V

    return-void
.end method

.method public final zzaf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzah(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgtt:Lcom/google/android/gms/internal/ads/zzbtr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtr;->zzux()V

    return-void
.end method

.method public final zzai(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgtw:Lcom/google/android/gms/internal/ads/zzbyi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbyi;->zztl()V

    return-void
.end method

.method public final zzaj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgtt:Lcom/google/android/gms/internal/ads/zzbtr;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdrg:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbtr;->zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    return-void
.end method

.method public final zzak(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgtu:Lcom/google/android/gms/internal/ads/zzbrt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrt;->onAdClicked()V

    return-void
.end method

.method public final zzal(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgtv:Lcom/google/android/gms/internal/ads/zzbsu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsu;->onAdLeftApplication()V

    return-void
.end method

.method public final zzam(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgtv:Lcom/google/android/gms/internal/ads/zzbsu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsu;->onRewardedVideoCompleted()V

    return-void
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 0

    return-void
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 0

    return-void
.end method
