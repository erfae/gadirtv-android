.class public final Lcom/google/android/gms/internal/ads/zzchc;
.super Lcom/google/android/gms/internal/ads/zzboc;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzdyd:Lcom/google/android/gms/internal/ads/zzavc;

.field private final zzfzq:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzbdv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfzr:Lcom/google/android/gms/internal/ads/zzbxm;

.field private final zzfzs:Lcom/google/android/gms/internal/ads/zzbov;

.field private final zzfzt:Lcom/google/android/gms/internal/ads/zzdst;

.field private final zzfzu:Lcom/google/android/gms/internal/ads/zzbsb;

.field private final zzfzw:Lcom/google/android/gms/internal/ads/zzcaf;

.field private zzghc:Z

.field private final zzght:Lcom/google/android/gms/internal/ads/zzbti;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbob;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzcaf;Lcom/google/android/gms/internal/ads/zzbxm;Lcom/google/android/gms/internal/ads/zzbsb;Lcom/google/android/gms/internal/ads/zzbti;Lcom/google/android/gms/internal/ads/zzbov;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdst;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzboc;-><init>(Lcom/google/android/gms/internal/ads/zzbob;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzghc:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchc;->context:Landroid/content/Context;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzw:Lcom/google/android/gms/internal/ads/zzcaf;

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzq:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzr:Lcom/google/android/gms/internal/ads/zzbxm;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzu:Lcom/google/android/gms/internal/ads/zzbsb;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzght:Lcom/google/android/gms/internal/ads/zzbti;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzs:Lcom/google/android/gms/internal/ads/zzbov;

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzt:Lcom/google/android/gms/internal/ads/zzdst;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawd;

    iget-object p2, p9, Lcom/google/android/gms/internal/ads/zzdmu;->zzdvb:Lcom/google/android/gms/internal/ads/zzava;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzawd;-><init>(Lcom/google/android/gms/internal/ads/zzava;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzdyd:Lcom/google/android/gms/internal/ads/zzavc;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdv;

    .line 46
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcxt:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzghc:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/ads/zzazj;->zzegt:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchb;->zzh(Lcom/google/android/gms/internal/ads/zzbdv;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdzc;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 52
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 55
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 56
    throw v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzght:Lcom/google/android/gms/internal/ads/zzbti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbti;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final isClosed()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzs:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbov;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final isUsed()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzghc:Z

    return v0
.end method

.method public final zzb(ZLandroid/app/Activity;)Z
    .locals 3

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcnz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchc;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzm;->zzas(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzu:Lcom/google/android/gms/internal/ads/zzbsb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsb;->zzaky()V

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabf;->zzcoa:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzt:Lcom/google/android/gms/internal/ads/zzdst;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfpr:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdnj;->zzhik:Lcom/google/android/gms/internal/ads/zzdnh;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdnh;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmz;->zzbvf:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdst;->zzgz(Ljava/lang/String;)V

    :cond_0
    return v1

    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzghc:Z

    if-eqz v0, :cond_2

    const-string p1, "The rewarded ad have been showed."

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzu:Lcom/google/android/gms/internal/ads/zzbsb;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdok;->zzhju:Lcom/google/android/gms/internal/ads/zzdok;

    const/4 v0, 0x0

    .line 27
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzdoi;->zza(Lcom/google/android/gms/internal/ads/zzdok;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzve;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbsb;->zzl(Lcom/google/android/gms/internal/ads/zzve;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzghc:Z

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzr:Lcom/google/android/gms/internal/ads/zzbxm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbxm;->zzakn()V

    if-nez p2, :cond_3

    .line 32
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzchc;->context:Landroid/content/Context;

    .line 33
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzw:Lcom/google/android/gms/internal/ads/zzcaf;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcaf;->zza(ZLandroid/content/Context;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzr:Lcom/google/android/gms/internal/ads/zzbxm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbxm;->zzakl()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcai; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzu:Lcom/google/android/gms/internal/ads/zzbsb;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbsb;->zza(Lcom/google/android/gms/internal/ads/zzcai;)V

    return v1
.end method

.method public final zzre()Lcom/google/android/gms/internal/ads/zzavc;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzdyd:Lcom/google/android/gms/internal/ads/zzavc;

    return-object v0
.end method

.method public final zzrf()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchc;->zzfzq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzadh()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
