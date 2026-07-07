.class public final Lcom/google/android/gms/internal/ads/zzblv;
.super Lcom/google/android/gms/internal/ads/zzboc;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

.field private final zzfsa:I

.field private final zzfsq:Lcom/google/android/gms/internal/ads/zzble;

.field private final zzfss:Lcom/google/android/gms/internal/ads/zzcaf;

.field private zzfst:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbob;Lcom/google/android/gms/internal/ads/zzbdv;ILcom/google/android/gms/internal/ads/zzble;Lcom/google/android/gms/internal/ads/zzcaf;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzboc;-><init>(Lcom/google/android/gms/internal/ads/zzbob;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzfst:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzfsa:I

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzfsq:Lcom/google/android/gms/internal/ads/zzble;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzfss:Lcom/google/android/gms/internal/ads/zzcaf;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzboc;->destroy()V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->destroy()V

    :cond_0
    return-void
.end method

.method public final zza(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzsq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcnz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzm;->zzas(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhjv:Lcom/google/android/gms/internal/ads/zzdok;

    const/4 v3, 0x0

    .line 17
    invoke-static {v0, v3, v3}, Lcom/google/android/gms/internal/ads/zzdoi;->zza(Lcom/google/android/gms/internal/ads/zzdok;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzve;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzb(Lcom/google/android/gms/internal/ads/zzve;)V

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcoa:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdst;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzle()Lcom/google/android/gms/ads/internal/util/zzbo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/util/zzbo;->zzyw()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdst;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzfpr:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnj;->zzhik:Lcom/google/android/gms/internal/ads/zzdnh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnh;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdmz;->zzbvf:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdst;->zzgz(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzfst:Z

    if-eqz v0, :cond_1

    const-string v0, "App open interstitial ad is already visible."

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzfst:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    return-void

    .line 31
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzfss:Lcom/google/android/gms/internal/ads/zzcaf;

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zza(ZLandroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcai; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzfst:Z

    return-void

    :catch_0
    move-exception p1

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdoi;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzsq;->zzb(Lcom/google/android/gms/internal/ads/zzve;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsc;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zza(Lcom/google/android/gms/internal/ads/zzsc;)V

    :cond_0
    return-void
.end method

.method public final zzaip()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzfsa:I

    return v0
.end method

.method public final zzb(JI)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzfsq:Lcom/google/android/gms/internal/ads/zzble;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzble;->zzb(JI)V

    return-void
.end method
