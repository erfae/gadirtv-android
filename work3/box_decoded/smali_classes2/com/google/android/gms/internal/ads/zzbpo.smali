.class public final Lcom/google/android/gms/internal/ads/zzbpo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbru;
.implements Lcom/google/android/gms/internal/ads/zzbsm;
.implements Lcom/google/android/gms/internal/ads/zzbtj;
.implements Lcom/google/android/gms/internal/ads/zzbui;
.implements Lcom/google/android/gms/internal/ads/zzva;


# instance fields
.field private final zzbpw:Lcom/google/android/gms/common/util/Clock;

.field private final zzfwc:Lcom/google/android/gms/internal/ads/zzayf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzayf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzbpw:Lcom/google/android/gms/common/util/Clock;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzfwc:Lcom/google/android/gms/internal/ads/zzayf;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzfwc:Lcom/google/android/gms/internal/ads/zzayf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayf;->zzwq()V

    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzfwc:Lcom/google/android/gms/internal/ads/zzayf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayf;->zzwr()V

    return-void
.end method

.method public final onAdImpression()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzfwc:Lcom/google/android/gms/internal/ads/zzayf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayf;->zzwp()V

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzfwc:Lcom/google/android/gms/internal/ads/zzayf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzayf;->zzan(Z)V

    return-void
.end method

.method public final onAdOpened()V
    .locals 0

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 0

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzauf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdnj;)V
    .locals 2

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzfwc:Lcom/google/android/gms/internal/ads/zzayf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzbpw:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzayf;->zzey(J)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatl;)V
    .locals 0

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzvk;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzfwc:Lcom/google/android/gms/internal/ads/zzayf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzayf;->zze(Lcom/google/android/gms/internal/ads/zzvk;)V

    return-void
.end method

.method public final zzws()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzfwc:Lcom/google/android/gms/internal/ads/zzayf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayf;->zzws()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
