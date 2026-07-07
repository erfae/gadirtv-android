.class public final Lcom/google/android/gms/internal/ads/zzbyx;
.super Lcom/google/android/gms/internal/ads/zzboc;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzfss:Lcom/google/android/gms/internal/ads/zzcaf;

.field private zzfst:Z

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


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbob;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzbxm;Lcom/google/android/gms/internal/ads/zzcaf;Lcom/google/android/gms/internal/ads/zzbov;Lcom/google/android/gms/internal/ads/zzdst;Lcom/google/android/gms/internal/ads/zzbsb;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/zzbdv;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzboc;-><init>(Lcom/google/android/gms/internal/ads/zzbob;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfst:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyx;->context:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfzq:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfzr:Lcom/google/android/gms/internal/ads/zzbxm;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfss:Lcom/google/android/gms/internal/ads/zzcaf;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfzs:Lcom/google/android/gms/internal/ads/zzbov;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfzt:Lcom/google/android/gms/internal/ads/zzdst;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfzu:Lcom/google/android/gms/internal/ads/zzbsb;

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

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfzq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdv;

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcxt:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfst:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 41
    sget-object v1, Lcom/google/android/gms/internal/ads/zzazj;->zzegt:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->zzh(Lcom/google/android/gms/internal/ads/zzbdv;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdzc;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 46
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 47
    throw v0
.end method

.method public final isClosed()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfzs:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbov;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final zzbh(Z)Z
    .locals 4

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

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyx;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzm;->zzas(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfzu:Lcom/google/android/gms/internal/ads/zzbsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsb;->zzaky()V

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcoa:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfzt:Lcom/google/android/gms/internal/ads/zzdst;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfpr:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnj;->zzhik:Lcom/google/android/gms/internal/ads/zzdnh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnh;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdmz;->zzbvf:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdst;->zzgz(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfst:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    return v2

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfzr:Lcom/google/android/gms/internal/ads/zzbxm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbxm;->zzakn()V

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfss:Lcom/google/android/gms/internal/ads/zzcaf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbyx;->context:Landroid/content/Context;

    invoke-interface {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzcaf;->zza(ZLandroid/content/Context;)V

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfzr:Lcom/google/android/gms/internal/ads/zzbxm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbxm;->zzakl()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcai; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfst:Z

    return v1

    :catch_0
    move-exception p1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfzu:Lcom/google/android/gms/internal/ads/zzbsb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbsb;->zza(Lcom/google/android/gms/internal/ads/zzcai;)V

    return v2
.end method
